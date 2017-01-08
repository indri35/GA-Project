<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\MasterData;
use App\User;
use App\Aplikasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PageController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function masterdata()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->paginate(10);			
		}
		return view('page.master-data', compact('master_datas'));
	}

	public function userdata()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = User::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = User::orderBy('id', 'desc')->Where('email',$user->email)->paginate(10);			
		}
		return view('page.user-data', compact('master_datas'));
	}

	public function installday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$user = Aplikasi::orderBy('id', 'desc')->paginate(10);
		}else{
			$user = Aplikasi::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);
		}
		return view('page.install.install-day', compact('user'));
	}

	public function installmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$user = Aplikasi::orderBy('id', 'desc')->paginate(10);
		}else{
			$user = Aplikasi::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);
		}

		return view('page.install.install-month', compact('user'));
	}

	public function installyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$user = Aplikasi::orderBy('id', 'desc')->paginate(10);
		}else{
			$user = Aplikasi::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);
		}
		return view('page.install.install-year', compact('user'));
	}

	//click page
	public function clickday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.click.click-day', compact('master_datas'));
	}
	public function clickmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.click.click-month', compact('master_datas'));
	}
	public function clickyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.click.click-year', compact('master_datas'));
	}

	//view page
	public function viewday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.view.view-day',compact('master_datas'));
	}

	public function viewmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.view.view-month',compact('master_datas'));
	}

	public function viewyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}

		return view('page.view.view-year',compact('master_datas'));
	}

	//connected page
	public function connectedday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.connected.connected-day',compact('master_datas'));
	}

	public function connectedmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.connected.connected-month',compact('master_datas'));
	}

	public function connectedyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.connected.connected-year',compact('master_datas'));
	}

	//click page
	public function operatorday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.operator.operator-day', compact('master_datas'));
	}
	public function operatormonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.operator.operator-month', compact('master_datas'));
	}
	public function operatoryear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
		}
		return view('page.operator.operator-year', compact('master_datas'));
	}
}
