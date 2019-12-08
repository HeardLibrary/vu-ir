$(document).ready(function($) {
	$(window).load(function() {
		$('#slider').nivoSlider({
			controlNav: false, // 1,2,3... navigation
			effect: 'fade',
			animSpeed: 1000, // Slide transition speed
			pauseTime: 5000, // How long each slide will show
		});
	});
});
