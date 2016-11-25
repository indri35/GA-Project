<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\MasterData;
use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\TranslateClient;

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
		$tr = new TranslateClient(); // Default is from 'auto' to 'en'
		$tr->setSource('en'); // Translate from English
		$tr->setTarget('id'); // Translate to Indonesian

		$master_datum = new MasterData();
		$ip = $request->ip();
		$detail = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
		$master_datum->id = $request->input("id");
		$master_datum->user = $request->input("user");
		$master_datum->id_aplikasi = $request->input("id_aplikasi");
		$master_datum->ip = $ip;
        $master_datum->imei = $request->input("imei");
        $master_datum->click = $request->input("click");
        $master_datum->view = $request->input("view");
        $master_datum->type_device = $request->input("type_device");
        $master_datum->language = $detail->country;
        
		
		$reg_indo=$tr->translate($detail->region);
        $master_datum->state = $reg_indo;
		
        $master_datum->regional = $detail->city;	
		$master_datum->loc = $detail->loc;
						
		$master_datum->save();
		$status = true;
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
		$tr = new TranslateClient(); // Default is from 'auto' to 'en'
		$tr->setSource('en'); // Translate from English
		$tr->setTarget('id'); // Translate to Indonesian

		$master_datum = MasterData::findOrFail($id);

		$ip = $request->input("ip");
		$detail = json_decode(file_get_contents("http://ipinfo.io/{$ip}"));
		$master_datum->id = $request->input("id");
		$master_datum->ip = $request->input("ip");
		$master_datum->user = $request->input("user");
        $master_datum->imei = $request->input("imei");
		$master_datum->id_aplikasi = $request->input("id_aplikasi");
        $master_datum->created_at = $request->input("created_at");
        $master_datum->updated_at = $request->input("updated_at");
        $master_datum->click = $request->input("click");
        $master_datum->view = $request->input("view");
        $master_datum->type_device = $request->input("type_device");
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
