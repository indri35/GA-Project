<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Dashboard;
use App\Count;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getAllUser()
    {
        $user =  User::get();
        return $user;
    }

        public function getUserByEmail($email)
    {
        $user =  User::Where('email',$email)->get();
        return $user;
    } 

    //DataInstall   
        public function getDataInstallDay()
    {
        $installday =  DB::table('view_install_per_day')->get();
        return $installday;
    }
        public function getDataInstallMonth()
    {
        $installmonth =  DB::table('view_install_per_month')->get();
        return $installmonth;
    }
        public function getDataInstallYear()
    {
        $installyear =  DB::table('view_install_per_year')->get();
        return $installyear;
    }

    //DataClick
        public function getDataClickDay()
    {
        $clickday =  DB::table('view_by_click_per_day')->get();
        return $clickday;
    }
        public function getDataClickMonth()
    {
        $clickmonth =  DB::table('view_by_click_per_month')->get();
        return $clickmonth;
    }
        public function getDataClickYear()
    {
        $clickyear =  DB::table('view_by_click_per_year')->get();
        return $clickyear;
    } 

    //DataViewPage
        public function getDataViewPageDay()
    {
        $viewday =  DB::table('view_by_view_page_perday')->get();
        return $viewday;
    }
        public function getDataViewPageMonth()
    {
        $viewmonth =  DB::table('view_by_view_page_permonth')->get();
        return $viewmonth;
    }
        public function getDataViewPageYear()
    {
        $viewyear =  DB::table('view_by_view_page_peryear')->get();
        return $viewyear;
    }

    //DataActivityDevice
        public function getDataActivityDeviceDay()
    {
        $activityday =  DB::table('view_activity_by_type_device_per_day')->get();
        return $activityday;
    }
        public function getDataActivityDeviceMonth()
    {
        $activitymonth =  DB::table('view_activity_by_type_device_per_month')->get();
        return $activitymonth;
    }
        public function getDataActivityDeviceYear()
    {
        $activityyear =  DB::table('view_activity_by_type_device_per_year')->get();
        return $activityyear;
    } 

    public function dashboard()
    {
        $master_datas = Dashboard::orderBy('total_install', 'desc')->paginate(10);
        $master_dataa = Count::orderBy('count_click', 'desc')->paginate(10);

        return view('dashboard', compact('master_datas', 'master_dataa'));
    }        
}
