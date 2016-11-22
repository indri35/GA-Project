<!-- FLOT CHARTS -->
<script src="{{ asset('assets/plugins/flot/jquery.flot.min.js') }}"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="{{ asset('assets/plugins/flot/jquery.flot.resize.min.js') }}"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="{{ asset('assets/plugins/flot/jquery.flot.pie.min.js') }}"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="{{ asset('assets/plugins/flot/jquery.flot.categories.min.js') }}"></script>
<!-- Page script -->
<script>
  $(function () {
    /*
     * Flot Interactive Chart
     * -----------------------
     */
    // We use an inline data source in the example, usually data would
    // be fetched from a server
    var data = [], totalPoints = 100;

    function getRandomData() {

      if (data.length > 0)
        data = data.slice(1); 

      // Do a random walk
      while (data.length < totalPoints) {

        var prev = data.length > 0 ? data[data.length - 1] : 50,
            y = prev + Math.random() * 10 - 5;

        if (y < 0) {
          y = 0;
        } else if (y > 100) {
          y = 100;
        }

        data.push(y);
      }

      // Zip the generated y values with the x values
      var res = [];
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]]);
      }

      return res;
    }

    var interactive_plot = $.plot("#interactive", [getRandomData()], {
      grid: {
        borderColor: "#f3f3f3",
        borderWidth: 1,
        tickColor: "#f3f3f3"
      },
      series: {
        shadowSize: 0, // Drawing is faster without shadows
        color: "#3c8dbc"
      },
      lines: {
        fill: true, //Converts the line chart to area chart
        color: "#3c8dbc"
      },
      yaxis: {
        min: 0,
        max: 100,
        show: true
      },
      xaxis: {
        show: true
      }
    });

    var updateInterval = 500; //Fetch data ever x milliseconds
    var realtime = "on"; //If == to on then fetch data every x seconds. else stop fetching
    function update() {

      interactive_plot.setData([getRandomData()]);

      // Since the axes don't change, we don't need to call plot.setupGrid()
      interactive_plot.draw();
      if (realtime === "on")
        setTimeout(update, updateInterval);
    }

    //INITIALIZE REALTIME DATA FETCHING
    if (realtime === "on") {
      update();
    }
    //REALTIME TOGGLE
    $("#realtime .btn").click(function () {
      if ($(this).data("toggle") === "on") {
        realtime = "on";
      }
      else {
        realtime = "off";
      }
      update();
    });
    /*
     * END INTERACTIVE CHART
     */

     //-------------
    //- BAR CHART -
    //-------------

    var barChartCanvasView = $("#barChartView").get(0).getContext("2d");
    var barChartView = new Chart(barChartCanvasView);

    $.ajax({
      url: "{{ url('/getDataViewPageDay') }}",
      method: "GET",
      success: function(data) {
      console.log(data);
      var day = [];
      var welcome_count = [];
      var registration_count = [];
      var shopping_count = [];
      var order_count = [];
      var other_count = [];
      
      for(var i in data) {
          day.push(data[i].day);
          welcome_count.push(data[i].welcome_count);
          registration_count.push(data[i].registration_count);
          shopping_count.push(data[i].shopping_count);
          order_count.push(data[i].order_count);
          other_count.push(data[i].other_count);
      }

      if(day.length > 30) {
          day.shift();
          welcome_count.shift();
          registration_count.shift();
          shopping_count.shift();
          order_count.shift();
          other_count.shift();
      }

      var barChartDataView = {
        labels: day,
        datasets: [
          {
            label: "Welcome",
            fillColor: "#f56954",
            strokeColor: "#f56954",
            pointColor: "#f56954",
            pointStrokeColor: "#c1c7d1",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "#f56954",
            data: welcome_count
          },
          {
            label: "Registration",
            fillColor: "#00a65a",
            strokeColor: "#00a65a",
            pointColor: "#00a65a",
            pointStrokeColor: "#c1c7d1",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "#00a65a",
            data: registration_count
          },
          {
            label: "Shopping",
            fillColor: "#f39c12",
            strokeColor: "#f39c12",
            pointColor: "#f39c12",
            pointStrokeColor: "#f39c12",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "#f39c12",
            data: shopping_count
          },
          {
            label: "Order",
            fillColor: "#00c0ef",
            strokeColor: "#00c0ef",
            pointColor: "#00c0ef",
            pointStrokeColor: "#00c0ef",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: order_count
          },
          {
            label: "Other",
            fillColor: "#3c8dbc",
            strokeColor: "#3c8dbc",
            pointColor: "#3c8dbc",
            pointStrokeColor: "#3c8dbc",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "#3c8dbc",
            data: other_count
          }
        ]
      };

      barChartDataView.datasets[1].fillColor = "#00a65a";
      barChartDataView.datasets[1].strokeColor = "#00a65a";
      barChartDataView.datasets[1].pointColor = "#00a65a";
      var barChartOptionsView = {
        //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
        scaleBeginAtZero: true,
        //Boolean - Whether grid lines are shown across the chart
        scaleShowGridLines: true,
        //String - Colour of the grid lines
        scaleGridLineColor: "rgba(0,0,0,.05)",
        //Number - Width of the grid lines
        scaleGridLineWidth: 1,
        //Boolean - Whether to show horizontal lines (except X axis)
        scaleShowHorizontalLines: true,
        //Boolean - Whether to show vertical lines (except Y axis)
        scaleShowVerticalLines: true,
        //Boolean - If there is a stroke on each bar
        barShowStroke: true,
        //Number - Pixel width of the bar stroke
        barStrokeWidth: 2,
        //Number - Spacing between each of the X value sets
        barValueSpacing: 5,
        //Number - Spacing between data sets within X values
        barDatasetSpacing: 1,
        //String - A legend template
        legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
        //Boolean - whether to make the chart responsive
        responsive: true,
        maintainAspectRatio: true
      };

    barChartOptionsView.datasetFill = false;  
    barChartView.Bar(barChartDataView, barChartOptionsView);
  }
  });

     

  });

  /*
   * Custom Label formatter
   * ----------------------
   */
  function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
        + label
        + "<br>"
        + Math.round(series.percent) + "%</div>";
  }

      google.charts.load('upcoming', {'packages':['geochart','geomap']});
      google.charts.setOnLoadCallback(drawRegionsMap);
      google.charts.setOnLoadCallback(drawCityMap);
      google.charts.setOnLoadCallback(drawStateMap);
      var datacountry;
      var dataRegion;

      function drawCityMap() {
        $.ajax({
          url: "{{ url('/getDataMap') }}",
          method: "GET",
          success: function(data) {
          
          var datachart=[];
          var Header= ['City', 'Acitvity'];
          datachart.push(Header);
           for (var i = 0; i < data.region.length; i++) {
              var temp=[];
              temp.push(data.region[i].regional);
              temp.push(data.region[i].count_region);
              datachart.push(temp);
            }
          var datanya = google.visualization.arrayToDataTable(datachart);

          var options = {};
          options['region'] = 'ID';
          options['colors'] = [0xFF8747, 0xFFB581, 0xc06000]; //orange colors
          options['dataMode'] = 'markers';

          var container = document.getElementById('map_city');
          var geomap = new google.visualization.GeoMap(container);
          geomap.draw(datanya, options);
          }
        });
    };

      function drawStateMap() {
                $.ajax({
                url: "{{ url('/getDataMap') }}",
                method: "GET",
                success: function(data) {
                
                    var datachart=[];
                    var Header= ['Province', 'Acitvity'];
                    datachart.push(Header);
                    for (var i = 0; i < data.state.length; i++) {
                        var temp=[];
                        temp.push(data.state[i].regional);
                        temp.push(data.state[i].count_state);
                        datachart.push(temp);
                      }
                    var datanya = google.visualization.arrayToDataTable(datachart);

                var options = {};
                options['region'] = 'ID';
                options['dataMode'] = 'regions';

                var container = document.getElementById('map_province');
                var geomap = new google.visualization.GeoMap(container);
                geomap.draw(datanya, options);
              }
          });
    };


      function drawRegionsMap() {

        $.ajax({
          url: "{{ url('/getDataMap') }}",
          method: "GET",
          success: function(data) {
            
          var datachart=[];
          var Header= ['Country', 'Acitvity'];
          datachart.push(Header);
          for (var i = 0; i < data.country.length; i++) {
              var temp=[];
              temp.push(data.country[i].country);
              temp.push(data.country[i].count_country);
              datachart.push(temp);
            }
          var datanya = google.visualization.arrayToDataTable(datachart);

            var options = {};
            var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

            chart.draw(datanya, options);

          }
        });

      }
</script>