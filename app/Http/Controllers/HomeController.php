<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Aplikasi;
use App\Count;
use App\Usercount;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        if($user->role=='admin'){
            $master_datas = Aplikasi::count();
            $master_dataa = Count::orderBy('count_click', 'desc')->paginate(10);
        }else{
            $master_datas = Aplikasi::Where('user',$user->email)->count();
            $master_dataa = Usercount::orderBy('count_click', 'desc')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->paginate(10);            
        }
        
        return view('dashboard', compact('master_datas', 'master_dataa','user'));

    }
}
