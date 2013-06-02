gon.watch

$(function(){
  new Highcharts.Chart({         
    chart: {
      renderTo: 'min_max_chart',
      type: 'spline'
    },
    title: {
      text: gon.title
    },
    subtitle: {
      text: 'BEA Data from 2001-2011'
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
        name: 'MSA',
        data: gon.msa_series
      },
      {
        name: 'Minimum',
        data: gon.min_series
      },
      {
        name: 'Maximum',
        data: gon.max_series
      }
    ]
  });
});
