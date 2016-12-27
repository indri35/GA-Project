@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="page-header">
        <h1><i class="glyphicon glyphicon-edit"></i> Aplikasi / Create</h1>
    </div>
    </section>
      <!-- Main content -->
    <section class="content">
    @include('error')
    <div class="row">
        <div class="col-md-12">

            <form action="{{ route('aplikasis.store') }}"  enctype="multipart/form-data" method="POST">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group @if($errors->has('user')) has-error @endif">
                    <label for="user-field">User</label>
                    <select class="form-control select2" id="user-field" name="user">                    
                        @foreach($users as $user)
                            <option value="{{ $user->email }}">{{$user->name.'-'.$user->email}}</option>
                        @endforeach
                        </select>
                        @if($errors->has("user"))
                        <span class="help-block">{{ $errors->first("user") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('name')) has-error @endif">
                       <label for="name-field">Apps name</label>
                    <input type="text" id="name-field" name="name" class="form-control" value="{{ old("name") }}"/>
                       @if($errors->has("name"))
                        <span class="help-block">{{ $errors->first("name") }}</span>
                       @endif
                    </div>
                   <!-- 
                    <div class="form-group @if($errors->has('created_at')) has-error @endif">
                       <label for="created_at-field">Created_at</label>
                    <input type="date" id="created_at-field" name="created_at" class="form-control date-picker" value="{{ old("created_at") }}"/>
                       @if($errors->has("created_at"))
                        <span class="help-block">{{ $errors->first("created_at") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('updated_at')) has-error @endif">
                       <label for="updated_at-field">Updated_at</label>
                    <input type="date" id="updated_at-field" name="updated_at" class="form-control date-picker" value="{{ old("updated_at") }}"/>
                       @if($errors->has("updated_at"))
                        <span class="help-block">{{ $errors->first("updated_at") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('token')) has-error @endif">
                       <label for="token-field">token</label>
                    <input type="text" id="token-field" name="token" class="form-control" value="{{ old("token") }}"/>
                       @if($errors->has("token"))
                        <span class="help-block">{{ $errors->first("token") }}</span>
                       @endif
                    </div>

                    -->
                    <div class="form-group @if($errors->has('category')) has-error @endif">
                       <label for="category-field">category</label>
                    <input type="text" id="category-field" name="category" class="form-control" value="{{ old("category") }}"/>
                       @if($errors->has("category"))
                        <span class="help-block">{{ $errors->first("category") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('package')) has-error @endif">
                       <label for="category-field">package</label>
                    <input type="text" id="cpackage-field" name="package" class="form-control" value="{{ old("package") }}"/>
                       @if($errors->has("package"))
                        <span class="help-block">{{ $errors->first("package") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('platform')) has-error @endif">
                       <label for="platform-field">platform</label>
                    <input type="text" id="platform-field" name="platform" class="form-control" value="{{ old("platform") }}"/>
                       @if($errors->has("platform"))
                        <span class="help-block">{{ $errors->first("platform") }}</span>
                       @endif
                    </div>
                    <div class="form-group @if($errors->has('picture')) has-error @endif">
                       <label for="picture-field">Picture</label>
                    <input type="file" class="form-control" id="picture" name="picture"/>								
                       @if($errors->has("picture"))
                        <span class="help-block">{{ $errors->first("picture") }}</span>
                       @endif
                    </div>

                <div class="well well-sm">
                    <button type="submit" class="btn btn-primary">Create</button>
                    <a class="btn btn-link pull-right" href="{{ route('aplikasis.index') }}"><i class="glyphicon glyphicon-backward"></i> Back</a>
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
