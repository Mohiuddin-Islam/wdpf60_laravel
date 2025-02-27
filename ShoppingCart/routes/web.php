<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\StripeController;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});

//Shopping Cart Route

Route::get('/home', [BookController::class, 'index']);  
Route::get('/shopping-cart', [BookController::class, 'bookCart'])->name('shopping.cart');
Route::get('/book/{id}', [BookController::class, 'addBooktoCart'])->name('addbook.to.cart');
Route::patch('/update-shopping-cart', [BookController::class, 'updateCart'])->name('update.sopping.cart');
Route::delete('/delete-cart-product', [BookController::class, 'deleteProduct'])->name('delete.cart.product');
Route::get('/checkout', [BookController::class, 'checkout'])->name('shopping.checkout');

//Stripe Payment Gateway

// Route::get('/placeorder', 'App\Http\Controllers\StripeController@placeorder')->name('placeorder');
Route::post('/session', 'App\Http\Controllers\StripeController@session')->name('session');
Route::get('/success', 'App\Http\Controllers\StripeController@success')->name('success');

Route::get('/invoice',[InvoiceController::class,'InvoiceGenerate']);