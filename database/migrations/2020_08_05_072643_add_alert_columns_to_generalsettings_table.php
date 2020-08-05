<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAlertColumnsToGeneralsettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('generalsettings', function (Blueprint $table) {
            $table->boolean('create_customer_email')->default(0);
            $table->boolean('create_customer_sms')->default(0);
            $table->boolean('order_status_email')->default(0);
            $table->boolean('order_status_sms')->default(0);
            $table->boolean('new_product_email')->default(0);
            $table->boolean('new_product_sms')->default(0);
            $table->boolean('news_email')->default(0);
            $table->boolean('news_sms')->default(0);
            $table->boolean('order_email')->default(0);
            $table->boolean('order_sms')->default(0);
            $table->boolean('order_track_email')->default(0);
            $table->boolean('order_track_sms')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('generalsettings', function (Blueprint $table) {
            $table->dropColumn(['create_customer_email','create_customer_sms','order_status_email','order_status_sms','new_product_email','new_product_sms','news_email','news_sms','order_email','order_sms','order_track_email','order_track_sms']);
        });
    }
}
