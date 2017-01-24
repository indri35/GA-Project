<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Aplikasi;
use App\MasterData;
use App\User;
use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\TranslateClient;
use File;
use Illuminate\Support\Facades\Auth;

class AplikasiController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$user = Auth::user();
		if($user->role=='admin'){		
			$aplikasis = Aplikasi::orderBy('id', 'desc')->paginate(5);
			foreach ($aplikasis as $model){
				if($model->status==1)
					$model->status="Intsall";
				else
					$model->status="Uninstall";
			}
		}else{
			$aplikasis = Aplikasi::Where('user', $user->email)->paginate(5);
				foreach ($aplikasis as $model){
				if($model->status==1)
					$model->status="Intsall";
				else
					$model->status="Uninstall";
			}
			
		}
		return view('aplikasis.index', compact('aplikasis'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$user = Auth::user();
		return view('aplikasis.create',compact('user'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{

		$this->validate($request, [
            'user' => 'required',
            'category' => 'required',
            'package' => 'required',
            'platform' => 'required',
            'name' => 'required',
			'picture' => 'required|mimes:jpeg,bmp,jpg,png'
        ]);

		$user = Auth::user();
		$limit =  Aplikasi::where('user',$user->email)->count();

		if($limit==$user->plan){
			return redirect()->route('aplikasis.create')->with('message', 'Apps has reached the limit (limit '.$limit.'). Please change your plan');
		}
		else{		
			$aplikasi = new Aplikasi();
			$aplikasi->id = $request->input("id");
			$aplikasi->user = $request->input("user");
			$aplikasi->category = $request->input("category");
			$aplikasi->package = $request->input("package");
			$aplikasi->platform = $request->input("platform");
			$aplikasi->token= md5(uniqid(rand(), true));
			$aplikasi->name = $request->input("name");
			$aplikasi->status = 1;
			
			if ($request->hasFile('picture')) {		
				$imageTempName = $request->file('picture')->getPathname();
				$imageName =$request->file('picture')->getClientOriginalName();
				$path = base_path() . '/public/upload/images/';
				$request->file('picture')->move($path , $imageName);
				$aplikasi->picture = '/upload/images/'.$imageName;
			}

			$aplikasi->save();

			return redirect()->route('aplikasis.index')->with('message2', 'Apps created successfully.');
		}
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$aplikasi = Aplikasi::findOrFail($id);

		return view('aplikasis.show', compact('aplikasi'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{		
		$user = Auth::user();
		$aplikasi = Aplikasi::findOrFail($id);
		return view('aplikasis.edit', compact('aplikasi','user'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @param Request $request
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		$this->validate($request, [
            'user' => 'required',
            'category' => 'required',
            'package' => 'required',
            'platform' => 'required',
            'name' => 'required',
			'picture' => 'required|mimes:jpeg,bmp,jpg,png'
        ]);

		$aplikasi = Aplikasi::findOrFail($id);
		$aplikasi->user = $request->input("user");
		$aplikasi->category = $request->input("category");
		$aplikasi->package = $request->input("package");
		$aplikasi->platform = $request->input("platform");
 		$aplikasi->name = $request->input("name");
 		$aplikasi->status = 1;

		if ($request->hasFile('picture')) {		
			$imageTempName = $request->file('picture')->getPathname();
			$imageName =$request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$aplikasi->picture = '/upload/images/'.$imageName;
		}

 		$aplikasi->save();

		return redirect()->route('aplikasis.index')->with('message', 'Item updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$aplikasi = Aplikasi::findOrFail($id);
		$aplikasi->delete();

		return redirect()->route('aplikasis.index')->with('message', 'Item deleted successfully.');
	}

}
