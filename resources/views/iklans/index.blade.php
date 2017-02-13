@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

<section class="content-header">
    <div class="page-header clearfix">
        <h1>
            <i class="glyphicon glyphicon-align-justify"></i> Advertisement
            <a class="btn btn-success pull-right" href="{{ route('iklans.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a>
        </h1>

    </div>
</section>
<section class="content">
    @include('error')
    @if(Session::has('message'))
        <p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('message') }}</p>
    @elseif(Session::has('message2'))
        <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message2') }}</p>
    @endif
    <div class="row">
        <div class="col-md-12">
            @if($iklans->count())
                <table class="table table-condensed table-striped">
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Created  Date</th>
                        <th>Start Hour</th>
                        <th>End Hour</th>
                        <th>Start Day</th>
                        <th>End Day</th>
                        <th>Status</th>
                        <th class="text-right">OPTIONS</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach($iklans as $master_datum)
                            <tr>
                            <td>{{$master_datum->id}}</td>
                            <td>{{$master_datum->name}}</td>
                            <td>{{date('d-M-Y',strtotime($master_datum->created_at))}}</td>
                            <td>{{$master_datum->hour_end}}</td>
                            <td>{{$master_datum->hour_start}}</td>
                            <td>{{date('d-M-Y',strtotime($master_datum->day_start))}}</td>
                            <td>{{date('d-M-Y',strtotime($master_datum->day_end))}}</td>
                            <td>{{$master_datum->status}}</td>
                                <td class="text-right">
                                    <a class="btn btn-xs btn-primary" href="{{ route('iklans.show', $master_datum->id) }}"><i class="glyphicon glyphicon-eye-open"></i> View</a>
                                    <a class="btn btn-xs btn-warning" href="{{ route('iklans.edit', $master_datum->id) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                                    <form action="{{ route('iklans.destroy', $master_datum->id) }}" method="POST" style="display: inline;" onsubmit="if(confirm('Delete? Are you sure?')) { return true } else {return false };">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <button type="submit" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {!! $iklans->render() !!}
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

