<!DOCTYPE html>
<html>
@include('layouts.header')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <section class="content">
      <!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <a href="../../index2.html"><b>Choose your Application</b></a>
  </div>
  <!-- User name -->
  <div class="lockscreen-name"></div>

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
      <img src="{{ asset('assets/dist/img/app.png') }}" alt="User Image">
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form class="lockscreen-credentials" role="form" method="POST" action="{{ url('/choose') }}">
      <div class="input-group">
        <select class="form-control" name="app">
            @foreach($master_dataa as $master_datum)
            <option>{{$master_datum->name}}</option>
            @endforeach
            @foreach($master_datas as $master_datum)
            <option>{{$master_datum->name}}</option>
            @endforeach
        </select>
        <div class="input-group-btn">
          <button type="button" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
        </div>
      </div>
    </form>
    <!-- /.lockscreen credentials -->

  </div>
  <!-- /.lockscreen-item -->
  <div class="help-block text-center">
    Choose your application to analyst
  </div>
</div>
<!-- /.center -->
    </section>
    <!-- /.content -->
  </div>
@include('layouts.footer') 
@include('layouts.chartdashboard')
@include('page.activity-js.activitychart-day')
</body>
</html>

