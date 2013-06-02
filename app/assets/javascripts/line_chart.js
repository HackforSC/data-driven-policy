gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: "line_chart",
      type: 'spline'
    },
    title: {
      text: 'CHART TITLE'
    },
    subtitle: {
      text: 'Inner circle: 2008, outer circle: 2010'
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
        text: "Data Label"
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
        name: 'Raw Data',
        data: [ [ 1000, 1000 ] ]
      },
    ]
  });
});
