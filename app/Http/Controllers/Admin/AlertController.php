<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class AlertController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function config()
    {
        return view('admin.alert.config');
    }
}
