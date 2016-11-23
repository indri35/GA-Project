@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
<div class="page-header">
        <h1>Aplikasi / Show #{{$aplikasi->id}}</h1>
        <form action="{{ route('aplikasis.destroy', $aplikasi->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('aplikasis.edit', $aplikasi->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                <button type="submit" class="btn btn-danger">Delete <i class="glyphicon glyphicon-trash"></i></button>
            </div>
        </form>
    </div>
</section>

      <!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">

            <form action="#">
                <div class="form-group">
                     <label for="id">ID</label>
                     <p class="form-control-static">{{$aplikasi->id}}</p>
                </div>
                    <div class="form-group">
                     <label for="imei">Apps Name</label>
                     <p class="form-control-static">{{$aplikasi->name}}</p>
                </div>
                    <div class="form-group">
                     <label for="created_at">Created</label>
                     <p class="form-control-static">{{$aplikasi->created_at}}</p>
                </div>
                    <div class="form-group">
                     <label for="updated_at">Updated</label>
                     <p class="form-control-static">{{$aplikasi->updated_at}}</p>
                </div>
                    <div class="form-group">
                     <label for="click">User</label>
                     <p class="form-control-static">{{$aplikasi->user}}</p>
                </div>
                    <div class="form-group">
                     <label for="view">Category</label>
                     <p class="form-control-static">{{$aplikasi->category}}</p>
                </div>
                    <div class="form-group">
                     <label for="type_device">Platform</label>
                     <p class="form-control-static">{{$aplikasi->platform}}</p>
                </div>
                <div class="form-group">
                     <label for="picture">Logo</label>
                    <img src="{{ asset($aplikasi->picture) }}" class="img-responsive"/>
                </div>

            </form>

            <a class="btn btn-link" href="{{ route('aplikasis.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
<script>
</script>
</body>
</html>
