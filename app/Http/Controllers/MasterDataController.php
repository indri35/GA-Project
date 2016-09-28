<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\MasterData;
use Illuminate\Http\Request;

class MasterDataController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);

		return view('page.install-day', compact('master_datas'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('master_datas.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{
		$master_datum = new MasterData();

		$master_datum->id = $request->input("id");
        $master_datum->imei = $request->input("imei");
        $master_datum->created_at = $request->input("created_at");
        $master_datum->updated_at = $request->input("updated_at");
        $master_datum->click = $request->input("click");
        $master_datum->view = $request->input("view");
        $master_datum->type_device = $request->input("type_device");
        $master_datum->language = $request->input("language");
        $master_datum->state = $request->input("state");
        $master_datum->regional = $request->input("regional");

		$master_datum->save();

		return redirect()->route('master_datas.index')->with('message', 'Item created successfully.');
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
		$master_datum = MasterData::findOrFail($id);

		$master_datum->id = $request->input("id");
        $master_datum->imei = $request->input("imei");
        $master_datum->created_at = $request->input("created_at");
        $master_datum->updated_at = $request->input("updated_at");
        $master_datum->click = $request->input("click");
        $master_datum->view = $request->input("view");
        $master_datum->type_device = $request->input("type_device");
        $master_datum->language = $request->input("language");
        $master_datum->state = $request->input("state");
        $master_datum->regional = $request->input("regional");

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
