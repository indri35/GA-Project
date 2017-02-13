@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="page-header">
        <h1><i class="glyphicon glyphicon-edit"></i> Advertisement / Create</h1>
    </div>
    </section>
      <!-- Main content -->
    <section class="content">
        @include('error')
        @if(Session::has('message'))
           <p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('message') }}</p>
        @elseif(Session::has('message2'))
           <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message2') }}</p>
        @endif
    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('iklans.store') }}"  enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group @if($errors->has('user')) has-error @endif">
                    <label for="name-field">Name</label>
                    <input type="text" id="name-field" name="name" class="form-control" value="{{ old("name") }}" >
                        @if($errors->has("name"))
                        <span class="help-block">{{ $errors->first("name") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('url')) has-error @endif">
                    <label for="url-field">URL</label>
                    <input type="text" id="url-field" name="url" class="form-control" value="{{ old("url") }}" >
                        @if($errors->has("url"))
                        <span class="help-block">{{ $errors->first("url") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('description')) has-error @endif">
                       <label for="description-field">Description</label>
                          <textarea type="text" id="description-field" name="description" class="form-control" value="{{ old("description") }}" ></textarea>
                       @if($errors->has("description"))
                        <span class="help-block">{{ $errors->first("description") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('day_start')) has-error @endif">
                       <label for="day_start-field">Day start</label>
                    <input type="date" id="day_start-field" name="day_start" class="form-control date-picker date dpYears" value="{{ old("day_start") }}"/>
                       @if($errors->has("day_start"))
                        <span class="help-block">{{ $errors->first("day_start") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('day_end')) has-error @endif">
                       <label for="day_end-field">Day end</label>
                    <input type="date" id="day_end-field" name="day_end" class="form-control date-picker date dpYears" value="{{ old("day_end") }}"/>
                       @if($errors->has("day_end"))
                        <span class="help-block">{{ $errors->first("day_end") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('hour_start')) has-error @endif">
                       <label for="hour_start-field">Hour start</label>
                      <input type="time" id="hour_start-field" name="hour_start" class="form-control time-picker date dpYears" value="{{ old("hour_start") }}"/>
                       @if($errors->has("hour_start"))
                        <span class="help-block">{{ $errors->first("hour_start") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('hour_end')) has-error @endif">
                       <label for="hour_end-field">Hour end</label>
                    <input type="time" id="hour_end-field" name="hour_end" class="form-control date-picker" value="{{ old("hour_end") }}"/>
                       @if($errors->has("hour_end"))
                        <span class="help-block">{{ $errors->first("hour_end") }}</span>
                       @endif
                    </div>

                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                       <label for="picture-field">Picture</label>
                    <input type="file" class="form-control" accept="image/x-png,image/gif,image/jpeg" id="picture" name="picture"/>								
                       @if($errors->has("picture"))
                        <span class="help-block">{{ $errors->first("picture") }}</span>
                       @endif
                    </div>

                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Create</button>
                    <a class="btn btn-link pull-right" href="{{ route('iklans.index') }}"><i class="glyphicon glyphicon-backward"></i> Back</a>
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
