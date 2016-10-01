<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
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
        public function getDataInstall()
    {
        $install =  DB::table('view_user_count')->get();
        return $install;
    }

    //DataClick
        public function getDataClickDay()
    {
        $clickday =  DB::table('view_by_click_per_day')->get();
        return $clickday;
    }
        public function getDataClickMonth()
    {
        $clickday =  DB::table('view_by_click_per_month')->get();
        return $clickday;
    }
        public function getDataClickYear()
    {
        $clickday =  DB::table('view_by_click_per_year')->get();
        return $clickday;
    } 

    //DataViewPage
        public function getDataViewPageDay()
    {
        $json = Array();
        $viewcategory = DB::table('view_by_view_page_perday')->select('view')->groupBy('view')->get();
        foreach ($viewcategory  as $view) {
            $viewpageday =  DB::table('view_by_view_page_perday')->select('view_day','count_view')->Where('view',$view->view)->get();
            $json[] = [$view->view => $viewpageday]; 
        }
        return $json;
    }
        public function getDataViewPageMonth()
    {
        $json = Array();
        $viewcategory = DB::table('view_by_view_page_permonth')->select('view')->groupBy('view')->get();
        foreach ($viewcategory  as $view) {
            $viewpageday =  DB::table('view_by_view_page_permonth')->select('view_month','count_view')->Where('view',$view->view)->get();
            $json[] = [$view->view => $viewpageday]; 
        }
        return $json;

    }
        public function getDataViewPageYear()
    {
        $json = Array();
        $viewcategory = DB::table('view_by_view_page_peryear')->select('view')->groupBy('view')->get();
        foreach ($viewcategory  as $view) {
            $viewpageday =  DB::table('view_by_view_page_peryear')->select('view_year','count_view')->Where('view',$view->view)->get();
            $json[] = [$view->view => $viewpageday]; 
        }
        return $json;
    }

    //DataActivityDevice
        public function getDataActivityDeviceDay()
    {
        $activitydeviceday =  DB::table('view_activity_by_type_device_per_day')->get();
        return $activitydeviceday;
    }
        public function getDataActivityDeviceMonth()
    {
        $activitydevicemonth =  DB::table('view_activity_by_type_device_per_month')->get();
        return $activitydevicemonth;
    }
        public function getDataActivityDeviceYear()
    {
        $activitydeviceyear =  DB::table('view_activity_by_type_device_per_year')->get();
        return $activitydeviceyear;
    }        
}
