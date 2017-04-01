@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<section class="content-header">
          <div class="box box-primary">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>
              <h3 class="box-title">Dashboard</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body">
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                    <h3>2</h3> 
                    <p>User</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-ios-people"></i>
                    </div>
                </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                    <h3>2</h3> 
                    <p>Install</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-eye"></i>
                    </div>
                </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                    <h3>6</h3> 
                    <p>Retention</p>
                    </div>
                    <div class="icon">
                    <i class="fa ion-eye"></i>
                    </div>
                </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                    <h3>6</h3> 
                    <p>Uinstall</p>
                    </div>
                    <div class="icon">
                    <i class="fa ion-eye"></i>
                    </div>
                </div>
                </div>
                <!-- ./col -->
            </div>
                  </div>
            <!-- /.box-body-->
          </div>
</section>
<section class="content">
    @include('error')
    @if(Session::has('message'))
        <p class="alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('message') }}</p>
    @elseif(Session::has('message2'))
        <p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message2') }}</p>
    @endif
        <div class="box box-primary">
    <div class="box-header with-border">
        <i class="fa fa-bar-chart-o"></i>
        <h3 class="box-title">Iklan</h3>
        <div class="box-tools pull-right">
        <a class="btn btn-success" href="{{ route('aplikasis.create') }}"><i class="glyphicon glyphicon-plus"></i> Create</a>
        </div>
    </div>
    <div class="box-body">
    
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
    </div>
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
