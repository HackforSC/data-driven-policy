gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: 'comparison_chart_3',
      type: 'spline'
    },
    title: {
      text: gon.title_3
    },
    subtitle: {
      text: 'BEA Data from 2001-2011'
    },
    xAxis: {        
      type: 'datetime',
      dateTimeLabelFormats: {
        year: '%Y'
      }
    },
    yAxis: {
      title: {
        text: gon.yaxis_3
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
        name: gon.chart_3_series_1_name,
        data: gon.chart_3_series_1
      },
      {
        name: gon.chart_3_series_2_name,
        data: gon.chart_3_series_2
      },
      {
        name: gon.chart_3_series_3_name,
        data: gon.chart_3_series_3
      },
      {
        name: gon.chart_3_series_4_name,
        data: gon.chart_3_series_4
      }
    ]
  });
});
