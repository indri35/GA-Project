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

	public function checkSig(&$params,$package)
	{
		$SALT = 'q5u12e4iu13l8c79';
		$IV = 'rmfo9xuc4q2oawbr';
		$keys = array_keys($params);
		$value = '';
		asort($keys);
		foreach ($keys as $k){
			$value.=$params[$k];
		}
		$value.=strtolower($package);
		$value.=$SALT;
                $md5 = md5($value);
		return $md5;
	}


	public function hashFiled($appsid,$imei,$tmp)
	{
        $md5 = md5($appsid.''.$imei.''.$tmp);
		return $md5;
	}

	function decrypyptImei($imei,$package)
	{
		$SALT = 'q5u12e4iu13l8c79';
		$IV = 'rmfo9xuc4q2oawbr';		
		$key = md5($SALT.strtolower($package));
		$chiper = base64_decode($imei);
		if (!$chiper)return False;
		return openssl_decrypt($chiper, 'AES-128-CBC', $key, OPENSSL_RAW_DATA,$IV);
	}

	public function getImeiEncrypt(Request $request){
		$token = $request->header('Api-key');
		$apps = Aplikasi::Where("token",$token)->first();	
		$status = true;
		$params = $request->input(); 
		$sig;
		$data = new MasterData();
		if($token!=null){	
			if($apps!=null){
				$user = User::Where('email',$apps->user)->first();				
				if (isset($request['i'])){
						$imei = $request['i'];		
						$data = $this->encrypyptImei($imei,$apps->package);
						$sig = $this->checkSig($params, $apps->package); 
				}else{
					$status = false;
						$data = "retention not valid";
				}							
			}else{
			$status = false;
			$data = "token not valid";
			}
		}else{
			$status = false;
			$data = "header parameter not complete";
		}
        return compact('status','data','sig','apps');
	}

	public function encrypyptImei($imei,$package)
	{
		$SALT = 'q5u12e4iu13l8c79';
		$IV = 'rmfo9xuc4q2oawbr';		
		$key = md5($SALT.strtolower($package));
		$chiper = openssl_encrypt($imei,  'AES-128-CBC', $key, OPENSSL_RAW_DATA,$IV);
		return base64_encode($chiper);
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
		$sig = $request->header('Sig');
		$apps = Aplikasi::Where("token",$token)->first();	
		$status = true;
		$imei;
		$master_datum = new MasterData();
		if($token!=null){	
			if($apps!=null){
				$user = User::Where('email',$apps->user)->first();
				if (isset($request['w']) && isset($request['i'])
				&& isset($request['n']) && isset($request['o']) 
				&& isset($request['c']) && isset($request['a']) 
				&& isset($request['b'])){						
				$tmp=date("Y-m-d H:i:s");
				$imei = $this->decrypyptImei($request['i'], $apps->package);					
					if($imei){
						$request['i']=$imei;
						$params = $request->input(); 
						$sigparam=$this->checkSig($params,$apps->package);
								$hash = $this->hashFiled($apps->id,$imei,$tmp);
								$duplicate= MasterData::where('hash',$hash)->first();	
								if($duplicate==null && $sigparam==$sig){		
										$tr = new TranslateClient(); // Default is from 'auto' to 'en'
										$tr->setSource('en'); // Translate from English
										$tr->setTarget('id'); // Translate to Indonesian

										$ip = $request->ip();
										$detail = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
										$master_datum->id = $request->input("id");
										$master_datum->user = $user->email;
										$master_datum->hash = $hash;
										$master_datum->id_aplikasi = $apps->id;
										$master_datum->ip = $ip;
										if($request->input("w")==true)
											$master_datum->connected_by="wifi";
										else
											$master_datum->connected_by="celluler";
										$master_datum->imei = $imei;
										$master_datum->operator = $request->input("n");
										$master_datum->os = $request->input("o");
										$master_datum->click = $request->input("c");
										$master_datum->view = $request->input("a");
										$master_datum->type_device = $request->input("b");

										if($detail!=null){
											$master_datum->language = $detail->country;																	
											$reg_indo=$tr->translate($detail->region);
											if($reg_indo=="Jakarta")
												$reg_indo="Jakarta Raya";									
											$master_datum->state = $reg_indo;												
											$master_datum->regional = $detail->city;	
											$master_datum->loc = $detail->loc;
										}
										$master_datum->save();
										$master_datum="success";
								}else{
									$status = false;
									$master_datum = "signature not valid";
								}
							}else{
								$status = false;
								$master_datum = "package not valid";
							}
							
					}else{
						$status = false;
						$master_datum = "parameter not complete";
					}
		}else{
			$status = false;
			$master_datum = "token not valid";
		}
	}else{
			$status = false;
			$master_datum = "header parameter not complete";
	}
        return compact('status','master_datum','imei');
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
