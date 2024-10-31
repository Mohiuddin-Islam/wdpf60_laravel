<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;


class StudentController extends Controller
{
    function index()
    {
        $students = Student::all();
        //dd($students);

        return view('student/index',['students'=>$students]);
    }

    function create(){
        return view('student/create');
    }

    function store(Request $request){
        $student = new student();
        $student['name'] = $request->input('name');
        $student['email'] = $request->input('email');
        $student['phone'] = $request->input('phone');

        $student->save();
        return redirect(route('student.index'))->with('msg','Successfully Added');
    }

}
