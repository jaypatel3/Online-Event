
  $(window).load(function(){
	$('#carouselSlider').flexslider({
	  animation: "slide",
	  animationLoop: false,
	  itemWidth: 237,
	  itemMargin: 2,
	  start: function(slider){
		$('body').removeClass('loading');
	  }
	});
	$('#mainSlider').flexslider();
  });
