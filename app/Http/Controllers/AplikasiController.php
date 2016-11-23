<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Aplikasi;
use App\MasterData;
use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\TranslateClient;
use File;

class AplikasiController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$aplikasis = Aplikasi::orderBy('id', 'desc')->paginate(5);
		//return view('aplikasis.index', compact('aplikasis'));
		return view('aplikasis.index', compact('aplikasis'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('aplikasis.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{
		$aplikasi = new Aplikasi();
		$aplikasi->id = $request->input("id");
		$aplikasi->user = $request->input("user");
		$aplikasi->category = $request->input("category");
		$aplikasi->platform = $request->input("platform");
		$aplikasi->token= $request->input("token");
 		$aplikasi->name = $request->input("name");
		
		if ($request->hasFile('picture')) {		
			$imageTempName = $request->file('picture')->getPathname();
			$imageName =$request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$aplikasi->picture = '/upload/images/'.$imageName;
		}

 		$aplikasi->save();

		return redirect()->route('aplikasis.index')->with('message', 'Item created successfully.');
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
		$aplikasi = Aplikasi::findOrFail($id);

		return view('aplikasis.edit', compact('aplikasi'));
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
		$aplikasi = Aplikasi::findOrFail($id);
		$aplikasi->user = $request->input("user");
		$aplikasi->category = $request->input("category");
		$aplikasi->platform = $request->input("platform");
 		$aplikasi->name = $request->input("name");

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
