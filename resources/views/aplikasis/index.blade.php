@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Aplikasi
            <a class="btn btn-success pull-right" href="{{ route('aplikasis.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a>
        </h1>

    </div>
</section>

      <!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            @if($aplikasis->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>CREATED</th>
                        <th>UPDATED</th>
                        <th>USER</th>
                        <th>CATEGORY</th>
                        <th>PLATFORM</th>
                            <th class="text-right">OPTIONS</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($aplikasis as $master_datum)
                            <tr>
                            <td>{{$master_datum->id}}</td>
                            <td>{{$master_datum->name}}</td>
                            <td>{{$master_datum->created_at}}</td>
                            <td>{{$master_datum->updated_at}}</td>
                            <td>{{$master_datum->user}}</td>
                            <td>{{$master_datum->category}}</td>
                            <td>{{$master_datum->platform}}</td>
                                <td class="text-right">
                                    <a class="btn btn-xs btn-primary" href="{{ route('aplikasis.show', $master_datum->id) }}"><i class="glyphicon glyphicon-eye-open"></i> View</a>
                                    <a class="btn btn-xs btn-warning" href="{{ route('aplikasis.edit', $master_datum->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                                    <form action="{{ route('aplikasis.destroy', $master_datum->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <button type="submit" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {!! $aplikasis->render() !!}
            @else
                <h3 class="text-center alert alert-info">Empty!</h3>
            @endif

        </div>
    </div>

    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
<script>
  $(function () {
    $(".table").DataTable();
  });
</script>
</body>
</html>

