@extends('layout')

@section('header')
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> MasterDatas
            <a class="btn btn-success pull-right" href="{{ route('master_datas.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a>
        </h1>

    </div>
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            @if($master_datas->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID</th>
                        <th>IMEI</th>
                        <th>CREATED_AT</th>
                        <th>UPDATED_AT</th>
                        <th>CLICK</th>
                        <th>VIEW</th>
                        <th>TYPE_DEVICE</th>
                        <th>LANGUAGE</th>
                        <th>STATE</th>
                        <th>REGIONAL</th>
                            <th class="text-right">OPTIONS</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($master_datas as $master_datum)
                            <tr>
                                <td>{{$master_datum->id}}</td>
                                <td>{{$master_datum->id}}</td>
                                <td>{{$master_datum->imei}}</td>
                                <td>{{$master_datum->created_at}}</td>
                                <td>{{$master_datum->updated_at}}</td>
                                <td>{{$master_datum->click}}</td>
                                <td>{{$master_datum->view}}</td>
                                <td>{{$master_datum->type_device}}</td>
                                <td>{{$master_datum->language}}</td>
                                <td>{{$master_datum->state}}</td>
                                <td>{{$master_datum->regional}}</td>
                                <td class="text-right">
                                    <a class="btn btn-xs btn-primary" href="{{ route('master_datas.show', $master_datum->id) }}"><i class="glyphicon glyphicon-eye-open"></i> View</a>
                                    <a class="btn btn-xs btn-warning" href="{{ route('master_datas.edit', $master_datum->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                                    <form action="{{ route('master_datas.destroy', $master_datum->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <button type="submit" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {!! $master_datas->render() !!}
            @else
                <h3 class="text-center alert alert-info">Empty!</h3>
            @endif

        </div>
    </div>

@endsection