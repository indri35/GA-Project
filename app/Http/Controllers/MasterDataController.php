<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\MasterData;
use App\Aplikasi;
use App\User;
use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\TranslateClient;
use JWTAuth;

class MasterDataController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);

		return view('page.master-data', compact('master_datas'));
	}

	public function get(Request $request)
	{
        $token = $request->header('Api-key');
		$user = JWTAuth::parseToken()->toUser();
		$apps = Aplikasi::Where("token",$token)->first();
		$master_datas = MasterData::Where("user",$user->email)->Where("id_aplikasi",$apps->id)->get();
		$status=true;
		return compact('status','master_datas');
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('page.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{
		$token = $request->header('Api-key');
		$iduser = $request->header('uid');
		$package = $request->header('pkey');
		$user = User::Where('email',$iduser)->first();
		//$user = JWTAuth::parseToken()->toUser();
		$apps = Aplikasi::Where("package",$package)->Where("token",$token)->first();
		$status = true;
		$master_datum = new MasterData();

		if($apps!=null){
			if (isset($request['w']) && isset($request['i'])
			&& isset($request['n']) && isset($request['o']) 
			&& isset($request['c'])&& isset($request['a']) 
			&& isset($request['b'])){
				$tr = new TranslateClient(); // Default is from 'auto' to 'en'
				$tr->setSource('en'); // Translate from English
				$tr->setTarget('id'); // Translate to Indonesian

				$ip = $request->ip();
				$detail = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
				$master_datum->id = $request->input("id");
				$master_datum->user = $user->email;
				$master_datum->id_aplikasi = $apps->id;
				$master_datum->ip = $ip;
				$master_datum->connected_by=$request->input("w");
				$master_datum->imei = $request->input("i");
				$master_datum->operator = $request->input("n");
				$master_datum->os = $request->input("o");
				$master_datum->click = $request->input("c");
				$master_datum->view = $request->input("a");
				$master_datum->type_device = $request->input("b");
				$master_datum->language = $detail->country;
				
				
				$reg_indo=$tr->translate($detail->region);
				if($reg_indo=="Jakarta")
					$reg_indo="Jakarta Raya";
			
				$master_datum->state = $reg_indo;		
				
				$master_datum->regional = $detail->city;	
				$master_datum->loc = $detail->loc;
								
				$master_datum->save();
			}else{
				$status = false;
				$master_datum = "parameter not complete";
			}
		}else{
			$status = false;
			$master_datum = "token not valid";
		}
        return compact('status','master_datum');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$master_datum = MasterData::findOrFail($id);

		return view('master_datas.show', compact('master_datum'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$master_datum = MasterData::findOrFail($id);

		return view('master_datas.edit', compact('master_datum'));
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
			'c' => 'required',
			'i' => 'required',
			'n' => 'required',
			'w' => 'required',
			'o' => 'required',
			'a' => 'required',
			'b' => 'required'
		]);

		$tr = new TranslateClient(); // Default is from 'auto' to 'en'
		$tr->setSource('en'); // Translate from English
		$tr->setTarget('id'); // Translate to Indonesian

		$master_datum = MasterData::findOrFail($id);

		$ip = $request->input("ip");
		$detail = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
		$master_datum->id = $request->input("id");
		$master_datum->ip = $request->input("ip");
		$master_datum->user = "drikdoank@gmail.com";
        $master_datum->imei = $request->input("i");
		$master_datum->operator = $request->input("n");
		$master_datum->id_aplikasi = "1";
		$master_datum->connected_by=$request->input("w");
        $master_datum->created_at = $request->input("created_at");
        $master_datum->updated_at = $request->input("updated_at");
        $master_datum->click = $request->input("c");
        $master_datum->os = $request->input("o");
        $master_datum->view = $request->input("a");
        $master_datum->type_device = $request->input("b");
        $master_datum->language = $detail->country;
		
		$reg_indo=$tr->translate($detail->region);
        $master_datum->state = $reg_indo;
		
        $master_datum->regional = $detail->city;
		$master_datum->loc = $detail->loc;
		$master_datum->save();

		return redirect()->route('master_datas.index')->with('message', 'Item updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$master_datum = MasterData::findOrFail($id);
		$master_datum->delete();

		return redirect()->route('master_datas.index')->with('message', 'Item deleted successfully.');
	}

}
