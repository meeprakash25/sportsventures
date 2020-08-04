<?php
/**
 * Created by PhpStorm.
 * User: ShaOn
 * Date: 11/29/2018
 * Time: 12:49 AM
 */

namespace App\Classes;

use App\Models\EmailTemplate;
use App\Models\Generalsetting;
use App\Models\Order;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Mail;

class GeniusSMS
{
    private $api_url = 'https://api.ininepal.com/api/index';
    private $sms_sender_id;
    private $sms_username;
    private $sms_password;

    public function __construct()
    {
        $gs                  = Generalsetting::findOrFail(1);
        $this->sms_sender_id = $gs->sms_sender_id;
        $this->sms_username  = $gs->sms_username;
        $this->sms_password  = $gs->sms_password;
    }

    public function sendAutoOrderSMS(array $mailData, $id)
    {
        $setup = Generalsetting::find(1);
        $temp  = EmailTemplate::where('email_type', '=', $mailData['type'])->first();
        $body  = preg_replace("/{customer_name}/", $mailData['cname'], $temp->email_body);
        $body  = preg_replace("/{order_amount}/", $mailData['oamount'], $body);
        $body  = preg_replace("/{admin_name}/", $mailData['aname'], $body);
        $body  = preg_replace("/{admin_email}/", $mailData['aemail'], $body);
        $body  = preg_replace("/{order_number}/", $mailData['onumber'], $body);
        $body  = preg_replace("/{website_title}/", $setup->title, $body);

        $data = [
            'email_body' => $body
        ];


        $objDemo          = new \stdClass();
        $objDemo->to      = $mailData['to'];
        $objDemo->from    = $setup->from_email;
        $objDemo->title   = $setup->from_name;
        $objDemo->subject = $temp->email_subject;

        try {
            Mail::send('admin.email.mailbody', $data, function ($message) use ($objDemo, $id) {
                $message->from($objDemo->from, $objDemo->title);
                $message->to($objDemo->to);
                $message->subject($objDemo->subject);
                $order    = Order::findOrFail($id);
                $cart     = unserialize(bzdecompress(utf8_decode($order->cart)));
                $fileName = public_path('assets/temp_files/') . str_random(4) . time() . '.pdf';
                $pdf      = PDF::loadView('print.order', compact('order', 'cart'))->save($fileName);
                $message->attach($fileName);
            });

        } catch (\Exception $e) {
            //die($e->getMessage());
        }

        $files = glob('assets/temp_files/*'); //get all file names
        foreach ($files as $file) {
            if (is_file($file))
                unlink($file); //delete file
        }
    }

    public function sendAutoSMS(array $mailData)
    {
        $setup = Generalsetting::find(1);
        $temp  = EmailTemplate::where('email_type', '=', $mailData['type'])->first();
        $body  = preg_replace("/{customer_name}/", $mailData['cname'], $temp->email_body);
        $body  = preg_replace("/{order_amount}/", $mailData['oamount'], $body);
        $body  = preg_replace("/{admin_name}/", $mailData['aname'], $body);
        $body  = preg_replace("/{admin_email}/", $mailData['aemail'], $body);
        $body  = preg_replace("/{order_number}/", $mailData['onumber'], $body);
        $body  = preg_replace("/{website_title}/", $setup->title, $body);

        $data = [
            'email_body' => $body
        ];

        $objDemo          = new \stdClass();
        $objDemo->to      = $mailData['to'];
        $objDemo->from    = $setup->from_email;
        $objDemo->title   = $setup->from_name;
        $objDemo->subject = $temp->email_subject;

        try {
            Mail::send('admin.email.mailbody', $data, function ($message) use ($objDemo) {
                $message->from($objDemo->from, $objDemo->title);
                $message->to($objDemo->to);
                $message->subject($objDemo->subject);
            });
        } catch (\Exception $e) {
            // die($e->getMessage());
        }
    }

    public function sendCustomSMS(string $message, array $mobile_numbers)
    {
        $client = new Client();
        $client->request('POST', $this->api_url, [
            'form_params' => [
                'username'    => $this->sms_username,
                'password'    => $this->sms_password,
                'message'     => $message,
                'destination' => implode(', ', $mobile_numbers),
                'sender'      => $this->sms_sender_id,
            ]
        ]);
        return true;
    }

}