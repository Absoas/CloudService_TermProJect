export default function (elementName) {
  var container = document.getElementById(elementName);
  var data = {
    categories: ['2002', '2004', '2006', '2008', '2010', '2012', '2014','2016','2018'],
    series: [{
        name: 'C',
        data: [21, 17.5, 20, 14, 17.6, 17.8, 16.8,17,15]
      },
      {
        name: 'Java',
        data: [26, 25, 22, 21, 17.5, 16.4, 16.1,20.52,15]
      },
      {
        name: 'Javascript',
        data: [1.5, 1.6, 1.8, 3, 2.8, 2.5, 2.0,2.56,3.4]
      },
      {
        name: 'Python',
        data: [1.7, 1.6, 2.5, 6, 6.5, 5.5, 4.5,4,5]
      },
      {
        name: 'C#',
        data: [0.5, 2, 4.8, 4.8, 5.6, 9.5, 8.4,4.2,5.1]
      }
    ]
  };
  var options = {
    chart: {
      width: 1160,
      height: 540,
      title: 'TIOBE Programming Community Index'
    },
    yAxis: {
      title: '점유율',
      pointOnColumn: true
    },
    series: {
      showDot: false,
      zoomable: true
    },
    tooltip: {
      suffix: '°C'
    }
  };
  var theme = {
    series: {
      colors: [
        '#83b14e', '#458a3f', '#295ba0', '#2a4175', '#289399'
      ]
    }
  };

  // For apply theme

  // tui.chart.registerTheme('myTheme', theme);
  // options.theme = 'myTheme';

  tui.chart.lineChart(container, data, options);
};
