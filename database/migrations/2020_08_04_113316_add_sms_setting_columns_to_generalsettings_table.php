<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSmsSettingColumnsToGeneralsettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('generalsettings', function (Blueprint $table) {
            $table->boolean('is_sms')->default(0);
            $table->string('sms_sender_id')->nullable()->default(null);
            $table->string('sms_username')->nullable()->default(null);
            $table->string('sms_password')->nullable()->default(null);
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
            $table->dropColumn(['is_sms','sms_sender_id','sms_username','sms_password']);
        });
    }
}
