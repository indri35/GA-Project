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
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->paginate(10);			
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
		return view('page.view.view-day');
	}

	public function viewmonth()
	{
		return view('page.view.view-month');
	}

	public function viewyear()
	{
		return view('page.view.view-year');
	}

	//connected page
	public function connectedday()
	{
		return view('page.connected.connected-day');
	}

	public function connectedmonth()
	{
		return view('page.connected.connected-month');
	}

	public function connectedyear()
	{
		return view('page.connected.connected-year');
	}
}
