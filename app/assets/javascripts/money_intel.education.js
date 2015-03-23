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

	$('.btn-toggle').click(function() {
	    $(this).find('.btn').toggleClass('active');  
	    
	    if ($(this).find('.btn-primary').size()>0) {
	    	$(this).find('.btn').toggleClass('btn-primary');
	    }
	    if ($(this).find('.btn-danger').size()>0) {
	    	$(this).find('.btn').toggleClass('btn-danger');
	    }
	    if ($(this).find('.btn-success').size()>0) {
	    	$(this).find('.btn').toggleClass('btn-success');
	    }
	    if ($(this).find('.btn-info').size()>0) {
	    	$(this).find('.btn').toggleClass('btn-info');
	    }
	    
	    $(this).find('.btn').toggleClass('btn-default');
	       
	});

	$('form').submit(function(){
		alert($(this["options"]).val());
	    return false;
	});

	$("#slider").slider({
		min: 0,
		max: 100,
		value: 60,
	    slide: function(event, ui) {
	    	value = ui.value + "% stock current"
	        $( "#value" ).val( value );
	    }
	});

	$("#slider2").slider({
		min: 0,
		max: 100,
		value: 60
	});

});

