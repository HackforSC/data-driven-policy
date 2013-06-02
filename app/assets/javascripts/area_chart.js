gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: 'area_chart',
      type: 'area'
    },
    title: {
      text: 'my title'
    },
    subtitle: {
      text: 'my subtitle'
    },
    xAxis: {        
      type: 'datetime',
      dateTimeLabelFormats: {
        year: '%Y'
      }
    },
    yAxis: {
      title: {
        text: 'my label'
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
        name: 'Working Data',
        data: [ [20100, 30123] ]
      }
    ]
  });
});
