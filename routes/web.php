<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\UserController::class, 'index'])->name('welcome');

Route::prefix('users')->group(function () {

    Route::get('/create', [App\Http\Controllers\AdminController::class, 'create'])->name('create');

    Route::post('/insert', [App\Http\Controllers\AdminController::class, 'insert'])->name('insert');

    Route::delete('/delete/{id}', [AdminController::class, 'delete'])->name('delete');

    Route::get('/more/{id}', [AdminController::class, 'more'])->name('more');

    Route::post('/commentInsert/{id}', [AdminController::class, 'commentInsert'])->name('commentInsert');


});
Route::get('/home', [AdminController::class, 'index'])->name('home');

Auth::routes();

