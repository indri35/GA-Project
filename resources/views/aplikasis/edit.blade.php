@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="page-header">
        <h1><i class="glyphicon glyphicon-edit"></i> Aplikasi / Edit #{{$aplikasi->id}}</h1>
    </div>
    </section>
      <!-- Main content -->
    <section class="content">
    @include('error')

    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('aplikasis.update', $aplikasi->id) }}" enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_method" value="PUT">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group @if($errors->has('name')) has-error @endif">
                       <label for="name-field">Apps name</label>
                    <input type="text" id="name-field" name="name" class="form-control" value="{{ is_null(old("name")) ? $aplikasi->name : old("name") }}"/>
                       @if($errors->has("name"))
                        <span class="help-block">{{ $errors->first("name") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('user')) has-error @endif">
                       <label for="user-field">user</label>
                        <select class="form-control select2" id="user-field" name="user">                    
                        @foreach($users as $user)
                            <option value="{{ $user->email }}">{{$user->name.'-'.$user->email}}</option>
                        @endforeach
                        </select>
                        @if($errors->has("user"))
                        <span class="help-block">{{ $errors->first("user") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('category')) has-error @endif">
                       <label for="category-field">category</label>
                    <input type="text" id="category-field" name="category" class="form-control" value="{{ is_null(old("category")) ? $aplikasi->category : old("category") }}"/>
                       @if($errors->has("category"))
                        <span class="help-block">{{ $errors->first("category") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('package')) has-error @endif">
                       <label for="category-field">package</label>
                    <input type="text" id="package-field" name="package" class="form-control" value="{{ is_null(old("package")) ? $aplikasi->package : old("package") }}"/>
                       @if($errors->has("package"))
                        <span class="help-block">{{ $errors->first("package") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('platform')) has-error @endif">
                       <label for="platform-field">platform</label>
                    <input type="text" id="platform-field" name="platform" class="form-control" value="{{ is_null(old("platform")) ? $aplikasi->platform : old("platform") }}"/>
                       @if($errors->has("platform"))
                        <span class="help-block">{{ $errors->first("platform") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                    <label for="picture-field">picture</label>
                    <input type="file" class="form-control" id="picture" name="picture"/>								
                       @if($errors->has("picture"))
                        <span class="help-block">{{ $errors->first("picture") }}</span>
                       @endif
                    </div>
                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a class="btn btn-link pull-right" href="{{ route('aplikasis.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>
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
