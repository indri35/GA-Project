<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::group(['middleware' => 'auth'], function(){

    Route::get('/dashboard', function () {
        return view('dashboard');
    });

    Route::get('/home', 'HomeController@index');

    Route::get('/admin', function () {
        return view('admin');
    });

    Route::get('/install-month', function () {
        return view('page.install-month');
    });

    Route::get('/install-week', function () {
        return view('page.install-week');
    });

    Route::get('/install-day', function () {
        return view('page.install-day');
    });

    Route::get('/', function () {
    return view('dashboard');
});

});


Route::get('/getAllUser', 'DashboardController@getAllUser');
Route::get('/getUserByEmail/{email}', 'DashboardController@getUserByEmail');
Route::resource("master_datas","MasterDataController");

Route::auth();

