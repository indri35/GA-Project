@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Table
        <small>Master</small>
      </h1>
    </section>
      <!-- Main content -->
    <section class="content">
      
      <div class="row">
        <!-- /.col -->
        <div class="col-md-12">
          <!-- Install Table -->
          <div class="box">
            <div class="box-body">
            @if($master_datas->count())
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>IP</th>
                    <th>IMEI</th>
                    <th>Created at</th>
                    <th>Updated at</th>
                    <th>Click</th>
                    <th>View</th>
                    <th>Type Device</th>
                    <th>Language</th>
                    <th>State</th>
                    <th>Regional</th>
                    <th>Location</th>
                  </tr>
                </thead>
                <tbody>
                @foreach($master_datas as $master_datum)
                    <tr>
                        <td>{{$master_datum->ip}}</td>
                        <td>{{$master_datum->imei}}</td>
                        <td>{{$master_datum->created_at}}</td>
                        <td>{{$master_datum->updated_at}}</td>
                        <td>{{$master_datum->click}}</td>
                        <td>{{$master_datum->view}}</td>
                        <td>{{$master_datum->type_device}}</td>
                        <td>{{$master_datum->language}}</td>
                        <td>{{$master_datum->state}}</td>
                        <td>{{$master_datum->regional}}</td>
                        <td>{{$master_datum->loc}}</td>
                        </td>
                    </tr>
                @endforeach
                </tbody>
              </table>
              {!! $master_datas->render() !!}
            @else
                <h3 class="text-center alert alert-info">Empty!</h3>
            @endif  
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
<script>
  $(function () {
    $("#example1").DataTable();
  });
</script>
</body>
</html>

