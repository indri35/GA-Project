<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Iklan;
use App\MasterData;
use App\User;
use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\TranslateClient;
use File;
use Illuminate\Support\Facades\Auth;
use App\Aplikasi;
use Illuminate\Routing\UrlGenerator;

class IklanController extends Controller {
	protected $url;

		public function __construct(UrlGenerator $url)
		{
			$this->url = $url;
		}


	public function getiklan(Request $request, $start_day=null)
	{
		//2002-12-12
		$time = strtotime($start_day);

		$start_day = date('Y-m-d',$time);
		$token = $request->header('Api-key');
		$sig = $request->header('Sig');
		$status = true;
		$iklans;
		if($sig!=null&&$token!=null){	
			$apps = Aplikasi::Where('token',$token)->first();	
			if($apps!=null){
				if($start_day!=null){
					$iklans = Iklan::where('day_start','>', $start_day)->orderBy('day_start', 'desc')->paginate(100);
					foreach ($iklans as $model){
					$l =  $this->url->to('/');
					$model->picture = $l.$model->picture;
					}
				}				
				else{
					$iklans = Iklan::orderBy('day_start', 'desc')->paginate(100);	
										foreach ($iklans as $model){
					$l = $this->url->to('/');
					$model->picture = $l.$model->picture;
										}
				}
			}else{
				$status = false;
				$iklans = "user not detected";
			}
		}else{
				$status = false;
				$iklans = "token or sig not valid";
		}
        return compact('status','start_day','iklans');
	}


	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$user = Auth::user();
		$iklans = Iklan::orderBy('id', 'desc')->paginate(5);
		foreach ($iklans as $model){
			if($model->status==1)
				$model->status="Active";
			else
				$model->status="Unactive";
		}
		return view('iklans.index', compact('iklans'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$user = Auth::user();
		return view('iklans.create',compact('user'));
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
            'name' => 'required',
            'description' => 'required',
            'hour_start' => 'required',
            'hour_end' => 'required',
            'day_start' => 'required',
            'day_end' => 'required',
			'picture' => 'required|mimes:jpeg,bmp,jpg,png|max:5000}'
        ]);

		$user = Auth::user();
		$Iklan = new Iklan();
		$Iklan->id = $request->input("id");
		$Iklan->user = $user->email;
		$Iklan->name = $request->input("name");
		$Iklan->description = $request->input("description");
		$Iklan->hour_start = $request->input("hour_start");
		$Iklan->hour_end = $request->input("hour_end");
		$Iklan->day_start = $request->input("day_start");
		$Iklan->day_end = $request->input("day_end");
		$Iklan->status = 1;

		if ($request->hasFile('picture')) {		
			$imageTempName = $request->file('picture')->getPathname();
			$imageName =$request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$Iklan->picture = '/upload/images/'.$imageName;
		}

		$Iklan->save();

		return redirect()->route('iklans.index')->with('message2', 'Advertisements created successfully.');
		
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$iklan = Iklan::findOrFail($id);

		return view('iklans.show', compact('iklan'));
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
		$iklan = Iklan::findOrFail($id);
		return view('Iklans.edit', compact('iklan','user'));
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
            'name' => 'required',
            'description' => 'required',
            'hour_start' => 'required',
            'hour_end' => 'required',
            'day_start' => 'required',
            'day_end' => 'required',
			'picture' => 'mimes:jpeg,bmp,jpg,png||max:5000}'

        ]);
		$user = Auth::user();
	
		$Iklan = Iklan::findOrFail($id);
		$Iklan->user = $user->email;
		$Iklan->name = $request->input("name");
		$Iklan->description = $request->input("description");
		$Iklan->hour_start = $request->input("hour_start");
		$Iklan->hour_end = $request->input("hour_end");
		$Iklan->day_start = $request->input("day_start");
		$Iklan->day_end = $request->input("day_end");
		$Iklan->status = 1;

		if ($request->hasFile('picture')) {		
			$imageTempName = $request->file('picture')->getPathname();
			$imageName =$request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$Iklan->picture = '/upload/images/'.$imageName;
		}

 		$Iklan->save();

		return redirect()->route('iklans.index')->with('message2', 'Item updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$Iklan = Iklan::findOrFail($id);
		$Iklan->delete();

		return redirect()->route('iklans.index')->with('message', 'Item deleted successfully.');
	}

}
