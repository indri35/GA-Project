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

    Route::get('/master-data', 'PageController@masterdata');

    Route::get('/install-day', 'PageController@installday');
    Route::get('/install-week', 'PageController@installweek');
    Route::get('/install-year', 'PageController@installyear');

    Route::get('/click-day', 'PageController@clickday');
    Route::get('/click-week', 'PageController@clickweek');
    Route::get('/click-year', 'PageController@clickyear');

    Route::get('/view-day', 'PageController@viewday');
    Route::get('/view-week', 'PageController@viewweek');
    Route::get('/view-year', 'PageController@viewyear');

    Route::get('/', function () {
    return view('dashboard');
});

});


Route::get('/getAllUser', 'DashboardController@getAllUser');
Route::get('/getUserByEmail/{email}', 'DashboardController@getUserByEmail');
Route::get('/getDataInstall', 'DashboardController@getDataInstall');

//DataClick
Route::get('/getDataClickDay', 'DashboardController@getDataClickDay');
Route::get('/getDataClickMonth', 'DashboardController@getDataClickMonth');
Route::get('/getDataClickYear', 'DashboardController@getDataClickYear');

//DataViewPage
Route::get('/getDataViewPageDay', 'DashboardController@getDataViewPageDay');
Route::get('/getDataViewPageMonth', 'DashboardController@getDataViewPageMonth');
Route::get('/getDataViewPageYear', 'DashboardController@getDataViewPageYear');

//DataActivityDevice
Route::get('/getDataActivityDeviceDay', 'DashboardController@getDataActivityDeviceDay');
Route::get('/getDataActivityDeviceMonth', 'DashboardController@getDataActivityDeviceMonth');
Route::get('/getDataActivityDeviceYear', 'DashboardController@getDataActivityDeviceYear');

Route::get('/getDataByImei/{imei}', 'MasterDataController@getDataByImei');
Route::post('/create_data','MasterDataController@store');
Route::post('/update_data','MasterDataController@update');
Route::delete('/delete_data','MasterDataController@destroy');

Route::auth();

