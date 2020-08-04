<?php

namespace App\Http\Controllers\Admin;

use App\Classes\GeniusMailer;
use App\Classes\GeniusSMS;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\Subscriber;
use App\Models\User;
use Illuminate\Http\Request;

class SmsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        return view('admin.sms.index');
    }

    public function config()
    {
        return view('admin.sms.config');
    }

    public function groupsms()
    {
        $config = Generalsetting::findOrFail(1);
        return view('admin.sms.group', compact('config'));
    }

    public function groupsmspost(Request $request)
    {
        $message = $request->body;
        $numbers = [];
        $config  = Generalsetting::findOrFail(1);
        if ($request->type == 0) {
            $users = User::all();
            //Sending SMS To Users
            foreach ($users as $user) {
                array_push($numbers, $user->phone);
            }
            $sms = new GeniusSMS();
            $sms->sendCustomSMS($message, $numbers);
            //--- Redirect Section
            $msg = 'SMS Sent Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends
        } else if ($request->type == 1) {
            $users = User::where('is_vendor', '=', '2')->get();
            //Sending SMS To Vendors
            foreach ($users as $user) {
                array_push($numbers, $user->phone);
            }
            $sms = new GeniusSMS();
            $sms->sendCustomSMS($message, $numbers);
            //--- Redirect Section
            $msg = 'SMS Sent Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends
        } else {
            $users = Subscriber::all();
            //Sending Email To Subscribers
            foreach ($users as $user) {
                array_push($numbers, $user->phone);
            }
            $sms = new GeniusSMS();
            $sms->sendCustomSMS($message, $numbers);
            //--- Redirect Section
            $msg = 'SMS Sent Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends
        }

        //--- Redirect Section          
        $msg = 'SMS Sent Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends  
    }

}
