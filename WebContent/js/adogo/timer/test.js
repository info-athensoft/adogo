
$(document).ready(function(){
//	$('#pageTimer').html('new content');	
//	alert("test.js");
	
//	var countdown_text = countdown( new Date(2000, 0, 1) ).toString();
//	$('#pageTimer').html(countdown_text);
	/*
	countdown(507314280000,
		    function(ts) {
	    //document.getElementById('pageTimer').innerHTML = ts.toHTML("strong");
	  	alert(' start callback executed!');
	  	//$('#pageTimer').html('new content');
	  }, null,
	  function(ts) {
		    //document.getElementById('pageTimer').innerHTML = ts.toHTML("strong");
		  	alert(' end callback executed!');
		  	//$('#pageTimer').html('new content');
		  }, countdown.MINUTES);
	*/
	
	var timerId =
		  countdown(
		    new Date(),
		    function(ts) {
		      document.getElementById('pageTimer').innerHTML = ts.toHTML("strong");
//		    	alert('callback executed!');
//		    	$('#pageTimer').html('new content');
		    },
		    countdown.SECONDS);
});




