
$(document).ready(function(){

	$.each(finishedDateList, function(key, value){
		if (value > new Date()) {
					countdown(  
						    function(ts, timerId) {
						    	//alert('key:'+key + 'timerId:'+timerId);
						    	if (ts.years == 0 && ts.months == 0 && ts.days == 0 && ts.hours == 0 && ts.minutes == 0 && ts.seconds == 0) {
						    		window.clearInterval(timerId);
						    		$('#pageTimer'+key).html('over');
						    	}
						    	else {
						    		document.getElementById('pageTimer'+key).innerHTML = ts.toHTML("strong");
						    	}
					    
					  }, value
				  );
				}
		else {
			$('#pageTimer'+key).html('error');
		}
	})

});




