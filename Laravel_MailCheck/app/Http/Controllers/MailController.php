<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\DemoMail;
use Illuminate\Support\Facades\Mail;



class MailController extends Controller
{
    public function index()

    {

        $mailData = [

            'title' => 'Mail from ItSolutionStuff.com',
            'body' => 'This is for testing email using smtp.'

        ];

        Mail::to('abuhmdabdullah72@gmail.com')->send(new DemoMail($mailData));

        dd("Email is sent successfully.");
    }
}
