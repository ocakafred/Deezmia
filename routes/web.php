<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class,'home'])->name('home');
Route::get('/about-us', [HomeController::class,'about'])->name('about');
Route::get('/services', [HomeController::class,'services'])->name('services');
Route::get('/contact', [HomeController::class,'contact'])->name('contact');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
