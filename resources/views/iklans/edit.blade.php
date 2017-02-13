@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="page-header">
        <h1><i class="glyphicon glyphicon-edit"></i> advertisement / Edit #{{$iklan->id}}</h1>
    </div>
    </section>
      <!-- Main content -->
    <section class="content">
    @include('error')

    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('iklans.update', $iklan->id) }}" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group @if($errors->has('name')) has-error @endif">
                       <label for="name-field">name</label>
                    <input type="text" id="name-field" name="name" class="form-control" value="{{ is_null(old("name")) ? $iklan->name : old("name") }}"/>
                       @if($errors->has("name"))
                        <span class="help-block">{{ $errors->first("name") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('description')) has-error @endif">
                       <label for="description-field">description</label>
                        <textarea type="text" id="description-field" name="description" class="form-control" value="{{ $iklan->description }}"></textarea> 
                        @if($errors->has("description"))
                        <span class="help-block">{{ $errors->first("description") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('day_start')) has-error @endif">
                       <label for="day_start-field">Day start</label>
                    <input type="date" id="day_start-field" name="day_start" class="form-control date-picker date dpYears" value="{{ $iklan->day_start }}"/>
                       @if($errors->has("day_start"))
                        <span class="help-block">{{ $errors->first("day_start") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('day_end')) has-error @endif">
                       <label for="day_end-field">Day end</label>
                    <input type="date" id="day_end-field" name="day_end" class="form-control date-picker date dpYears" value="{{ $iklan->day_end }}"/>
                       @if($errors->has("day_end"))
                        <span class="help-block">{{ $errors->first("day_end") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('hour_start')) has-error @endif">
                       <label for="hour_start-field">Hour start</label>
                      <input type="time" id="hour_start-field" name="hour_start" class="form-control time-picker date dpYears" value="{{ $iklan->hour_start }}"/>
                       @if($errors->has("hour_start"))
                        <span class="help-block">{{ $errors->first("hour_start") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('hour_end')) has-error @endif">
                       <label for="hour_end-field">Hour end</label>
                    <input type="time" id="hour_end-field" name="hour_end" class="form-control date-picker" value="{{ $iklan->hour_end }}"/>
                       @if($errors->has("hour_end"))
                        <span class="help-block">{{ $errors->first("hour_end") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                    <label for="picture-field">picture</label>
                    <input type="file" class="form-control"  accept="image/x-png,image/gif,image/jpeg" id="picture" name="picture"/>								
                       @if($errors->has("picture"))
                        <span class="help-block">{{ $errors->first("picture") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a class="btn btn-link pull-right" href="{{ route('iklans.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>
                </div>
            </form>

        </div>
    </div>
 </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
</body>
</html>
