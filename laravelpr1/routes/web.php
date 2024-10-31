<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;


Route::get('/',[HomeController::class, 'index']);
Route::get('/about',[HomeController::class, 'about']);
Route::get('/contact',[HomeController::class, 'contact']);

//student Route
Route::get('/student',[StudentController::class, 'index'])->name('student.index');
Route::get('/student/create',[StudentController::class, 'create']);
Route::post('/student/store',[StudentController::class, 'store'])->name('student.store');

// Route::get('/home', function () {
//     return view('home');
// });
