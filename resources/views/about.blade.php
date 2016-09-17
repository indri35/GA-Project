<!DOCTYPE html>
<html>
<head>
	<title>Oper data</title>
</head>
<body>
@extends('templates.index')

@section('content')
Website saya : {!! $data['judul'] !!} <br/>
Tanggal hosting : {!! $data['tanggal'] !!}
@stop
</body>
</html>