
  $(window).load(function(){
	$('#carouselSlider').flexslider({
	  animation: "slide",
	  animationLoop: true,
	  itemWidth: 237,
	  itemMargin: 2,
	  start: function(slider){
		$('body').removeClass('loading');
	  }
	});
	$('#mainSlider').flexslider();
  });
