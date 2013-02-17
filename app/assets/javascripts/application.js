// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require highcharts
//= require highcharts/highcharts-more
//= require_tree .

$(function () {
    var chart;
    $(document).ready(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'chartNational',
                type: 'column'
            },
            title: {
                text: 'Latest Voting'
            },
            subtitle: {
                text: 'Westminster Overall'
            },
            xAxis: {
                categories: [
                    'Share of Vote'   
                ]
            },
            yAxis: {
                min: 0,
                max: 50,
                title: {
                    text: 'percent'
                }
            },
            legend: {
                layout: 'vertical',
                backgroundColor: '#FFFFFF',
                align: 'left',
                verticalAlign: 'top',
                x: 230,
                y: 0,
                floating: true,
                shadow: true
            },
            tooltip: {
                formatter: function() {
                    return ''+
                        this.x +': '+ this.y +'%';
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
                series: [{
                name: 'Con',
                data: [32.9]

                }, {
                name: 'Lab',
                data: [39.6]
    
            }, {
                name: 'Lib Dem',
                data: [17.1]
    
            }, {
                name: 'UKIP',
                data: [2.6]
    
            }, {
                name: 'Green',
                data: [0.8]
    
            }, {
                name: 'Other',
                data: [2.7]
    
    
            }]
        });
    });
    
});

$(function () {
    var chart;
    $(document).ready(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'chartConstituency',
                type: 'column'
            },
            title: {
                text: 'Latest Voting'
            },
            subtitle: {
                text: 'Your Constituency'
            },
            xAxis: {
                categories: [
                    'Share of Vote'   
                ]
            },
            yAxis: {
                min: 0,
                max: 50,
                title: {
                    text: 'percent'
                }
            },
            legend: {
                layout: 'vertical',
                backgroundColor: '#FFFFFF',
                align: 'left',
                verticalAlign: 'top',
                x: 230,
                y: 0,
                floating: true,
                shadow: true
            },
            tooltip: {
                formatter: function() {
                    return ''+
                        this.x +': '+ this.y +'%';
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
                series: [{
                name: 'Con',
                data: [38.9]

                }, {
                name: 'Lab',
                data: [25.6]
    
            }, {
                name: 'Lib Dem',
                data: [12.1]
    
            }, {
                name: 'UKIP',
                data: [0.6]
    
            }, {
                name: 'Green',
                data: [3.8]
    
            }, {
                name: 'Other',
                data: [2.7]
    
    
            }]
        });
    });
    
});
