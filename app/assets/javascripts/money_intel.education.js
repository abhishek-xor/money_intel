$(function () {
    $('#container').highcharts({
    	credits: {
    	      enabled: false
    	},
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: '60 / 40 <br /> Stocks Bands',
            align: 'center',
            verticalAlign: 'middle',
            y: 0,
            style: {
                fontSize: '10px'
            }
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                dataLabels: {
                    enabled: true,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'red',
                        textShadow: '0px 1px 2px black'
                    }
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            innerSize: '50%',
            data: [
                { name: '',
                  y: 40,
                  color: '#005CB8'},
                
                { name: '', 
                  y: 60,
                  color: '#74B503'},
            ]
        }]
    });
});

