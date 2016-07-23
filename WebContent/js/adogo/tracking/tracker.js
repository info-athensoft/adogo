
/*tracker v1.00*/

//GA tracking code
(function(i, s, o, g, r, a, m) {
	i['GoogleAnalyticsObject'] = r;
	i[r] = i[r] || function() {
		(i[r].q = i[r].q || []).push(arguments)
	}, i[r].l = 1 * new Date();
	a = s.createElement(o), m = s.getElementsByTagName(o)[0];
	a.async = 1;
	a.src = g;
	m.parentNode.insertBefore(a, m)
})(window, document, 'script', 'https://www.google-analytics.com/analytics.js',
		'ga');

// page views
ga('create', 'UA-77264108-1', 'auto');
ga('set', 'title', data_layer.page_name);
ga('send', 'pageview');

// click
function track(data) {
	if (!!data.id === 1) {
		ga('send', 'event', 'Adveriser profile page:', data.mid);		
	}
	if (!!data.id === 2) {
		ga('send', 'event', 'Adveriser homepage:', data.mid);		
	}
}
