@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
<div class="page-header">
        <h1>Advertisement / Show #{{$iklan->id}}</h1>
        <form action="{{ route('iklans.destroy', $iklan->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
            <input type="hidden" name="_method" value="DELETE">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="btn-group pull-right" role="group" aria-label="...">
                <a class="btn btn-warning btn-group" role="group" href="{{ route('iklans.edit', $iklan->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
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
                     <label for="picture">Logo</label>
                    <img width="100" height="100" src="{{ asset($iklan->picture) }}" class="img-responsive"/>
                </div>
                    <div class="form-group">
                     <label for="appsname">Name</label>
                     <p class="form-control-static">{{$iklan->name}}</p>
                </div>
                    <div class="form-group">
                     <label for="appsname">URL</label>
                     <p class="form-control-static">{{$iklan->url}}</p>
                </div>
                <div class="form-group">
                     <label for="id">Description</label>
                     <p class="form-control-static">{{$iklan->description}}</p>
                </div>
                    <div class="form-group">
                     <label for="package">Hour Start</label>
                     <p class="form-control-static">{{$iklan->hour_start}}</p>
                </div>
                    <div class="form-group">
                     <label for="created_at">Hour End</label>
                     <p class="form-control-static">{{$iklan->hour_end}}</p>
                </div>
                    <div class="form-group">
                     <label for="updated_at">Day Start</label>
                     <p class="form-control-static">{{$iklan->day_start}}</p>
                </div>
                    <div class="form-group">
                     <label for="click">Day End</label>
                     <p class="form-control-static">{{$iklan->day_end}}</p>
                </div>
                    <div class="form-group">
                     <label for="view">Status</label>
                     <p class="form-control-static">{{$iklan->status}}</p>
                </div>
            </form>

            <a class="btn btn-link" href="{{ route('iklans.index') }}"><i class="glyphicon glyphicon-backward"></i>  Back</a>

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
