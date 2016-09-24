@extends('layout')
@section('css')
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/css/bootstrap-datepicker.css" rel="stylesheet">
@endsection
@section('header')
    <div class="page-header">
        <h1><i class="glyphicon glyphicon-plus"></i> MasterDatas / Create </h1>
    </div>
@endsection

@section('content')
    @include('error')

    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('master_datas.store') }}" method="POST">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                <div class="form-group @if($errors->has('id')) has-error @endif">
                       <label for="id-field">Id</label>
                    <input type="text" id="id-field" name="id" class="form-control" value="{{ old("id") }}"/>
                       @if($errors->has("id"))
                        <span class="help-block">{{ $errors->first("id") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('imei')) has-error @endif">
                       <label for="imei-field">Imei</label>
                    <input type="text" id="imei-field" name="imei" class="form-control" value="{{ old("imei") }}"/>
                       @if($errors->has("imei"))
                        <span class="help-block">{{ $errors->first("imei") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('created_at')) has-error @endif">
                       <label for="created_at-field">Created_at</label>
                    <input type="text" id="created_at-field" name="created_at" class="form-control date-picker" value="{{ old("created_at") }}"/>
                       @if($errors->has("created_at"))
                        <span class="help-block">{{ $errors->first("created_at") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('updated_at')) has-error @endif">
                       <label for="updated_at-field">Updated_at</label>
                    <input type="text" id="updated_at-field" name="updated_at" class="form-control date-picker" value="{{ old("updated_at") }}"/>
                       @if($errors->has("updated_at"))
                        <span class="help-block">{{ $errors->first("updated_at") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('click')) has-error @endif">
                       <label for="click-field">Click</label>
                    <input type="text" id="click-field" name="click" class="form-control" value="{{ old("click") }}"/>
                       @if($errors->has("click"))
                        <span class="help-block">{{ $errors->first("click") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('view')) has-error @endif">
                       <label for="view-field">View</label>
                    <input type="text" id="view-field" name="view" class="form-control" value="{{ old("view") }}"/>
                       @if($errors->has("view"))
                        <span class="help-block">{{ $errors->first("view") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('type_device')) has-error @endif">
                       <label for="type_device-field">Type_device</label>
                    <input type="text" id="type_device-field" name="type_device" class="form-control" value="{{ old("type_device") }}"/>
                       @if($errors->has("type_device"))
                        <span class="help-block">{{ $errors->first("type_device") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('language')) has-error @endif">
                       <label for="language-field">Language</label>
                    <input type="text" id="language-field" name="language" class="form-control" value="{{ old("language") }}"/>
                       @if($errors->has("language"))
                        <span class="help-block">{{ $errors->first("language") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('state')) has-error @endif">
                       <label for="state-field">State</label>
                    <input type="text" id="state-field" name="state" class="form-control" value="{{ old("state") }}"/>
                       @if($errors->has("state"))
                        <span class="help-block">{{ $errors->first("state") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('regional')) has-error @endif">
                       <label for="regional-field">Regional</label>
                    <input type="text" id="regional-field" name="regional" class="form-control" value="{{ old("regional") }}"/>
                       @if($errors->has("regional"))
                        <span class="help-block">{{ $errors->first("regional") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Create</button>
                    <a class="btn btn-link pull-right" href="{{ route('master_datas.index') }}"><i class="glyphicon glyphicon-backward"></i> Back</a>
                </div>
            </form>

        </div>
    </div>
@endsection
@section('scripts')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>
  <script>
    $('.date-picker').datepicker({
    });
  </script>
@endsection
