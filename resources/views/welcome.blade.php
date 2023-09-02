<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

</head>

<body class="antialiased">
    <div class="container">
        <div class="row">
            <h1>Bar With Line Chart</h1>
            <div class="col-md-12" id="barChart"></div>
            <h1>Area Chart</h1>
            <div class="col-md-12" id="lineChart"></div>
            <h1>Pie Chart</h1>
            <div class="col-md-12" id="pieChart"></div>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
</script>

<script>
    var colors = ['#F44336', '#E91E63', '#9C27B0', '#28a745', '#ffc107', '#17a2b8',
        '#9C27B0'
    ];
      var options = {
            series: [{
                name: 'Monthly Orders Amount',
                type: 'column',
                data: [<?php
                    if ($monthlyOrderTk) {
                        foreach ($monthlyOrderTk as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
            }, {
                name: 'Monthly Orders Percentage',
                type: 'line',
                data: [<?php
                    if ($monthlyOrderPercentage) {
                        foreach ($monthlyOrderPercentage as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
            }],
            chart: {
                height: 350,
                type: 'line',
            },
            stroke: {
                width: [0, 4]
            },
            title: {
                text: 'Order Report Chart'
            },
            dataLabels: {
                enabled: true,
                enabledOnSeries: [1]
            },
            labels: [<?php
            if ($monthlyOrderTk) {
                foreach ($monthlyOrderTk as $row => $value) {
                    echo '"' . \Carbon\Carbon::parse($row)->format('F') . '",';
                }
            } ?>],
            xaxis: {
                // type: 'datetime'
            },
            yaxis: [{
                title: {
                    text: 'Monthly Orders Amount',
                },

            }, {
                opposite: true,
                title: {
                    text: 'Monthly Orders Percentage'
                }
            }]
        };

        var chart = new ApexCharts(document.querySelector("#barChart"), options);
        chart.render();
</script>

<script>
    var options = {
          series: [{
          name: 'Current Year Order',
          data: [<?php
                    if ($monthlyOrderTk) {
                        foreach ($monthlyOrderTk as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
        }, {
          name: 'Previous Year Order',
          data: [<?php
                    if ($monthlyOrderTkForPreviousYear) {
                        foreach ($monthlyOrderTkForPreviousYear as $row => $value) {
                            echo '"' . $value . '",';
                        }
                    } ?>]
        }],
          chart: {
          height: 350,
          type: 'area'
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          curve: 'smooth'
        },
        xaxis: {
          categories: [<?php
            if ($monthlyOrderTkForPreviousYear) {
                foreach ($monthlyOrderTkForPreviousYear as $row => $value) {
                    echo '"' . \Carbon\Carbon::parse($row)->format('F') . '",';
                }
            } ?>]
        },
        tooltip: {
          x: {
            format: 'dd/MM/yy HH:mm'
          },
        },
        };

        var chart = new ApexCharts(document.querySelector("#lineChart"), options);
        chart.render();
          
</script>

<script>
    var options = {
          series: [<?php
                    if ($monthlyOrderPercentage) {
                        foreach ($monthlyOrderPercentage as $row => $value) {
                            echo '' . $value . ',';
                        }
                    } ?>],
          chart: {
          width: 380,
          type: 'pie',
        },
        labels: [<?php
            if ($monthlyOrderTk) {
                foreach ($monthlyOrderTk as $row => $value) {
                    echo '"' . \Carbon\Carbon::parse($row)->format('F') . '",';
                }
            } ?>],
        responsive: [{
          breakpoint: 480,
          options: {
            chart: {
              width: 200
            },
            legend: {
              position: 'bottom'
            }
          }
        }]
        };

        var chart = new ApexCharts(document.querySelector("#pieChart"), options);
        chart.render();    
</script>

</html>
