<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SongsController;


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

Route::get('/', function () {
    return view('home');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/', [App\Http\Controllers\SongsController::class, 'index']);
Route::get('/home', [App\Http\Controllers\SongsController::class, 'index']);
Route::get('/profile', [App\Http\Controllers\ProfileController::class, 'index']);
Route::get('/search', [App\Http\Controllers\SongsController::class, 'search']);
Route::get('/upvote', [App\Http\Controllers\VoteController::class, 'upvote']);
Route::get('/downvote', [App\Http\Controllers\VoteController::class, 'downvote']);

Route::resource('songs','App\Http\Controllers\SongsController');


