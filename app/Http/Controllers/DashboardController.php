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

}
