<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    function index(){
        $data = ['title'=>"Home Page",'content'=>'Bangladesh is a Population Country'];
        $data['fruits'] = ["Mango", "Orange", "Apple", "Banana"];
        return view('home',$data);
    }

    function about(){
        return view('about');
    }

    function contact(){
        return view('contact');
    }
}
