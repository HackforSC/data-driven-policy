gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: 'area_chart',
      type: 'area'
    },
    title: {
      text: gon.title
    },
    subtitle: {
      text: gon.subtitle
    },
    xAxis: {        
      type: 'datetime',
      dateTimeLabelFormats: {
        month: '%e. %b',
        year: '%b'
      }
    },
    yAxis: {
      title: {
        text: gon.yaxis_label
      },
      min: 0
    },
    tooltip:{
      formatter: function(){
        return Highcharts.dateFormat("%B %e %Y", this.x) + ':' + Highcharts.numberFormat(this.y, 1);
      }
    },
    series: [      
      {
        name: 'Working',
        data: gon.chart_series[0]
      },
      {
        name: 'Failing',
        data: gon.chart_series[1]
      }
    ]
  });
});
