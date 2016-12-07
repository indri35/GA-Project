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

    Route::get('/', 'DashboardController@dashboard');

    Route::get('/dashboard', 'DashboardController@dashboard');
    
    Route::get('/home', 'HomeController@index');

    Route::get('/admin', function () {
        return view('admin');
    });


    Route::get('/master-data', 'PageController@masterdata');
    Route::get('/master-data-looping', 'AboutController@store');
    Route::get('/user-data', 'PageController@userdata');

    Route::get('/install-day', 'PageController@installday');
    Route::get('/install-month', 'PageController@installmonth');
    Route::get('/install-year', 'PageController@installyear');

    Route::get('/click-day', 'PageController@clickday');
    Route::get('/click-month', 'PageController@clickmonth');
    Route::get('/click-year', 'PageController@clickyear');

    Route::get('/operator-day', 'PageController@operatorday');
    Route::get('/operator-month', 'PageController@operatormonth');
    Route::get('/operator-year', 'PageController@operatoryear');

    Route::get('/view-day', 'PageController@viewday');
    Route::get('/view-month', 'PageController@viewmonth');
    Route::get('/view-year', 'PageController@viewyear');

    Route::get('/connected-day', 'PageController@connectedday');
    Route::get('/connected-month', 'PageController@connectedmonth');
    Route::get('/connected-year', 'PageController@connectedyear');

    Route::resource("aplikasis","AplikasiController");
    Route::resource("master_datas","MasterDataController");
    Route::resource("about","AboutController");

});

//Map
Route::get('/getDataMap', 'DashboardController@getDataMap');
Route::get('/getInstallUninstall', 'DashboardController@getInstallUninstall');

Route::get('/getAllUser', 'DashboardController@getAllUser');
Route::get('/getUserByEmail/{email}', 'DashboardController@getUserByEmail');

//DataInstall
Route::get('/getDataInstallDay', 'DashboardController@getDataInstallDay');
Route::get('/getDataInstallMonth', 'DashboardController@getDataInstallMonth');
Route::get('/getDataInstallYear', 'DashboardController@getDataInstallYear');

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

//DataConnected
Route::get('/getDataConnectedDay', 'DashboardController@getDataConnectedDay');
Route::get('/getDataConnectedMonth', 'DashboardController@getDataConnectedMonth');
Route::get('/getDataConnectedYear', 'DashboardController@getDataConnectedYear');

//DataOperator
Route::get('/getDataOperatorDay', 'DashboardController@getDataOperatorDay');
Route::get('/getDataOperatorMonth', 'DashboardController@getDataOperatorMonth');
Route::get('/getDataOperatorYear', 'DashboardController@getDataOperatorYear');

Route::auth();

