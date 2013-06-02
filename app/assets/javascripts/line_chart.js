gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: 'line_chart',
      type: 'area'
    },
    title: {
      text: "Title"
    },
    subtitle: {
      text: 'BEA Data 2001 - 2011'
    },
    xAxis: {        
      type: 'datetime',
      dateTimeLabelFormats: {
        year: '%Y'
      }
    },
    yAxis: {
      title: {
        text: "Data"
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
        name: "Hello",
        data: [[ 10000, 10030]]
      }
    ]
  });
});
