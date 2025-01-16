<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class HomeController extends Controller
{
    public function index(): View
    {
        return view('userDashboard');
    } 

    public function adminHome(): View
    {
        return view('adminDashboard');
    }

    public function managerHome(): View
    {
        return view('managerDashboard');
    }
}
