<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Aplikasi;
use App\Iklan;
use App\Dashboard;
use App\Count;
use App\Usercount;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use File;
use Stichoza\GoogleTranslate\TranslateClient;

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
	
	//D	ataInstall   
	        public function getDataInstallDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$installday =  DB::table('view_install_per_day_admin')
							->get();
		}
		else{
			$installday =  DB::table('view_install_per_day')->Where('user',$user->email)							
			->get();
			}
		return $installday;
	}
	public function getDataInstallMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$installmonth =  DB::table('view_install_per_month_admin')->get();
		}
		else{
			$installmonth =  DB::table('view_install_per_month')->Where('user',$user->email)->get();
		}
		return $installmonth;
	}
	public function getDataInstallYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$installyear =  DB::table('view_install_per_year_admin')->get();
		}
		else{
			$installyear =  DB::table('view_install_per_year')->Where('user',$user->email)->get();
		}
		return $installyear;
	}
	
	//D	ataClick
	        public function getDataClickDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$clickday =  DB::table('view_by_click_per_day')
							->get();
		}
		else{
			$clickday =  DB::table('view_by_click_per_day_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)
							->get();
		}
		return $clickday;
	}
	public function getDataClickMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$clickmonth =  DB::table('view_by_click_per_month')->get();
		}
		else{
			$clickmonth =  DB::table('view_by_click_per_month_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $clickmonth;
	}
	public function getDataClickYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$clickyear =  DB::table('view_by_click_per_year')->get();
		}
		else{
			$clickyear =  DB::table('view_by_click_per_year_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $clickyear;
	}
	
	//D	ataViewPage
	        public function getDataViewPageDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$viewday =  DB::table('view_by_view_page_perday')
							->get();
		}
		else{
			$viewday =  DB::table('view_by_view_page_perday_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)
							->get();
		}
		return $viewday;
	}
	public function getDataViewPageMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$viewmonth =  DB::table('view_by_view_page_permonth')->get();
		}
		else{
			$viewmonth =  DB::table('view_by_view_page_permonth_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $viewmonth;
	}
	public function getDataViewPageYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$viewyear =  DB::table('view_by_view_page_peryear')->get();
		}
		else{
			$viewyear =  DB::table('view_by_view_page_peryear_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $viewyear;
	}
	
	//D	ataActivityDevice
	        public function getDataActivityDeviceDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$activityday =  DB::table('view_activity_by_type_device_per_day')
							->get();
		}
		else{
			$activityday =  DB::table('view_activity_by_type_device_per_day_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)
							->get();
		}
		return $activityday;
	}
	public function getDataActivityDeviceMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$activitymonth =  DB::table('view_activity_by_type_device_per_month')->get();
		}
		else{
			$activityday =  DB::table('view_activity_by_type_device_per_month_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $activitymonth;
	}
	public function getDataActivityDeviceYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$activityyear =  DB::table('view_activity_by_type_device_per_year')->get();
		}
		else{
			$activityday =  DB::table('view_activity_by_type_device_per_year_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $activityyear;
	}
	
	public function dashboard()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = Aplikasi::count();
			$master_dataa = Count::orderBy('count_click', 'desc')->paginate(10);
		}
		else{
			$master_datas = Aplikasi::Where('user',$user->email)->count();
			$master_dataa = Usercount::orderBy('count_click', 'desc')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->paginate(10);
		}
		
		return view('dashboard', compact('master_datas', 'master_dataa','user'));
		
	}
	
	public function updateimg()
	    {
		$user = Auth::user();
		return view('updateimg', compact('user'));
		
	}
	
	public function choose()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			return $this->dashboard();
		}
		else if($user->role=='iklan'){       
            $iklans = Iklan::orderBy('id', 'desc')->paginate(5);
			$iklans_count = Iklan::count();
			$user_count = User::where('role','partner')->count();
			$retention = DB::table('iklan')->sum('retention');
			$open = DB::table('iklan')->sum('open');
            foreach ($iklans as $model){
                if($model->status==1)
                    $model->status="Active";
                else
                    $model->status="Unactive";
            }
	        return view('iklans.index', compact('user','open','iklans','iklans_count','user_count','retention'));		
        }
		else{
			$master_datas = Aplikasi::Where('user',$user->email)->get();
			return view('choose', compact('master_datas', 'master_dataa'));
		}
		
	}
	
	public function updateimgprofil(Request $request)
	    {
		$this->validate($request, [
		            'img' => 'required|mimes:jpeg,bmp,jpg,png'
		        ]);
		$user = Auth::user();
		$imageName = $user->id . '-' . $user->name . '-' . 
		        $request->file('img')->getClientOriginalName();
		$path = base_path() . '/public/upload/images/profil/';
		$request->file('img')->move($path , $imageName);
		$user->img = '/upload/images/profil/'.$imageName;
		$user->save();
		
		return $this->dashboard();
	}
	
	public function chooseapp(Request $request)
	    {
		$this->validate($request, [
		            'app' => 'required'
		        ]);
		$user = Auth::user();
		$user->active_app=$request->app;
		$user->save();
		return $this->dashboard();
	}
	
	//D	ataconnectedby  
	        public function getDataConnectedDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$connectedday =  DB::table('count_connectedby_day')
							->get();
		}
		else{
			$connectedday =  DB::table('count_connectedby_day_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)							
			->get();
	}
		return $connectedday;
	}
	public function getDataConnectedMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$connectedmonth =  DB::table('count_connectedby_month')->get();
		}
		else{
			$connectedmonth =  DB::table('count_connectedby_month_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $connectedmonth;
	}
	public function getDataConnectedYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$connectedyear =  DB::table('count_connectedby_year')->get();
		}
		else{
			$connectedyear =  DB::table('count_connectedby_year_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $connectedyear;
	}
	
	//m	ap
	      public function getDataMap()
	    {
		$year=date('Y');
		$user = Auth::user();
		if($user->role=='admin'){
			$region = DB::table('map_region_admin')->get();
			$state = DB::table('map_state_admin')->get();
			$country = DB::table('map_country_admin')->get();
		}
		else{
			$region = DB::table('map_region')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
			$state = DB::table('map_state')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
			$country = DB::table('map_country')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return compact('region','state','country');
	}
	
	//g	etdatainstall/uninstall
	      public function getInstallUninstall()
	    {
		
		$user = Auth::user();
		if($user->role=='admin'){
			$install = DB::table('aplikasi')->Where('status',1)->count();
			$uninstall = DB::table('aplikasi')->Where('status',0)->count();
		}
		else{
			$install = DB::table('aplikasi')->Where('user',$user->email)->Where('status',1)->count();
			$uninstall = DB::table('aplikasi')->Where('user',$user->email)->Where('status',0)->count();
		}
		return compact('install','uninstall');
	}
	
	//D	ataOperator
	        public function getDataOperatorDay()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$operatorday =  DB::table('operator_per_day')
							->get();
		}
		else{
			$operatorday =  DB::table('operator_per_day_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)
							->get();
		}
		return $operatorday;
	}
	public function getDataOperatorMonth()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$operatormonth =  DB::table('operator_per_month')->get();
		}
		else{
			$operatormonth =  DB::table('operator_per_month_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $operatormonth;
	}
	public function getDataOperatorYear()
	    {
		$user = Auth::user();
		if($user->role=='admin'){
			$operatoryear =  DB::table('operator_per_year')->get();
		}
		else{
			$operatoryear =  DB::table('operator_per_year_user')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->get();
		}
		return $operatoryear;
	}
	
}
