<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::get('/post', [PostController::class, 'index']);
Route::get('/post/{id}', [PostController::class, 'show'])->name('show');

// Route::get('/', function () {
//     return view('welcome');
// });
