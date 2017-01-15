<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
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
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click, id_aplikasi, count(click) as count'))
				->groupBy('click')
				->groupBy('created_at')
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click,  id_aplikasi,  count(click) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('click')
				->groupBy('created_at')
				->paginate(10);

			//$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->paginate(10);			
		}
		return view('page.click.click-day', compact('master_datas'));
	}
	public function clickmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click, id_aplikasi, count(click) as count'))
				->groupBy('click')
				->orderBy('created_at')
				->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click,  id_aplikasi,  count(click) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('click')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}
		return view('page.click.click-month', compact('master_datas'));
	}
	public function clickyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click, id_aplikasi, count(click) as count'))
				->groupBy('click')
				->orderBy('created_at')
				->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, click,  id_aplikasi,  count(click) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('click')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}
		return view('page.click.click-year', compact('master_datas'));
	}

	//view page
	public function viewday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view, id_aplikasi, count(view) as count'))
				->groupBy('view')
				->groupBy('created_at')
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view,  id_aplikasi,  count(view) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('view')
				->groupBy('created_at')
				->paginate(10);
		}
		return view('page.view.view-day',compact('master_datas'));
	}

	public function viewmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view, id_aplikasi, count(view) as count'))
				->groupBy('view')
				->orderBy('created_at')
				->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view,  id_aplikasi,  count(view) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('view')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}
		return view('page.view.view-month',compact('master_datas'));
	}

	public function viewyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view, id_aplikasi, count(view) as count'))
				->groupBy('view')
				->orderBy('created_at')
				->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, view,  id_aplikasi,  count(view) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('view')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}
		return view('page.view.view-year',compact('master_datas'));
	}

	//connected page
	public function connectedday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by,  id_aplikasi,  count(connected_by) as count'))
				->groupBy('connected_by')
				->groupBy('created_at')
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by,  id_aplikasi,  count(connected_by) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('connected_by')
				->groupBy('created_at')
				->paginate(10);
		}
		return view('page.connected.connected-day',compact('master_datas'));
	}

	public function connectedmonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by, id_aplikasi, count(connected_by) as count'))
				->groupBy('connected_by')
				->orderBy('created_at')
				->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by,  id_aplikasi,  count(connected_by) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('connected_by')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}
		return view('page.connected.connected-month',compact('master_datas'));
	}

	public function connectedyear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by, id_aplikasi, count(connected_by) as count'))
				->groupBy('connected_by')
				->orderBy('created_at')
				->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, connected_by,  id_aplikasi,  count(connected_by) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('connected_by')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}
		return view('page.connected.connected-year',compact('master_datas'));
	}

	//click page
	public function operatorday()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator, id_aplikasi, count(operator) as count'))
				->groupBy('operator')
				->groupBy('created_at')
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator,  id_aplikasi,  count(operator) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('operator')
				->groupBy('created_at')
				->paginate(10);
		}
		return view('page.operator.operator-day', compact('master_datas'));
	}
	public function operatormonth()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator, id_aplikasi, count(operator) as count'))
				->groupBy('operator')
				->orderBy('created_at')
				->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator,  id_aplikasi,  count(operator) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('operator')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("MONTH(created_at)"))
				->paginate(10);
		}
		return view('page.operator.operator-month', compact('master_datas'));
	}
	public function operatoryear()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator, id_aplikasi, count(operator) as count'))
				->groupBy('operator')
				->orderBy('created_at')
				->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}else{
			$master_datas = DB::table('master_data')
				->select(DB::raw('created_at, operator,  id_aplikasi,  count(operator) as count'))
				->where('user', $user->email)
				->where('id_aplikasi',$user->active_app)
				->groupBy('operator')
				->orderBy('created_at')
 		        ->groupBy(DB::raw("YEAR(created_at)"))
				->paginate(10);
		}
		return view('page.operator.operator-year', compact('master_datas'));
	}
}
