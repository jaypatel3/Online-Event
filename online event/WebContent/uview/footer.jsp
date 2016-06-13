<!-- Footer Start -->
<footer>

	<section class="footerMiddle">
		<div class="container">

			<!-- Reach Us -->
			<div class="four columns reachUs">
				<h3>Reach Us</h3>
				<div class="worldMap">
					<img src="../uimages/world-map.png" alt="" class="scale-with-grid" />
				</div>
				<p class="footerIcon footerAddress">
					JASS MANAGEMENT CONSULTANTS<br />AMABAWADI,AHMEDABAD
				</p>
				<p class="footerIcon footerPhone">8401369031</p>
				<p class="footerIcon footerEmail">
					<a href="mailto:info@html5css3templates.com" title="Email Us">contact
						us</a>
				</p>
			</div>

			<!-- Site Links -->
			<div class="four columns usefulLinks">
				<h3>Useful Links</h3>
				<ul class="linksList">
					<li><a href="signin.jsp">SIGN IN</a></li>
					<li><a href="listcategory.jsp">EVENTS</a></li>
					<li><a href="pricing_tables.jsp">PACKAGES</a></li>
					<li><a href="hotel.jsp">HOTELS</a></li>
					<!-- <li><a href="#"></a></li> -->
					<li><a href="gallery.jsp">RECENT EVENTS</a></li>
					<li><a href="contact.jsp">CONTACT US</a></li>
				</ul>
			</div>

			<!-- Twitter -->

			<!-- Flickr -->


		</div>
	</section>

	<!--  Footer Copyright-->
	<section id="footerBottom">
		<div class="footerBottomText">
			<div class="container">

				<div class="eleven columns"></div>



			</div>
		</div>

	</section>

</footer>


<!-- Back To Top Button -->
<div id="backtotop">
	<a href="#"></a>
</div>

<!-- Style Switcher -->
<div class="switcher"></div>


<script type="text/javascript">
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
  });
</script>

<script>
			var api;
			jQuery(document).ready(function() {
				 api =  jQuery('.fullwidthbanner').revolution(
								{
									delay:9000,
									startheight:470,
									startwidth:1200,
								
									navigationType:"both",					//bullet, thumb, none, both		(No Thumbs In FullWidth Version !)
									navigationArrows:"verticalcentered",		//nexttobullets, verticalcentered, none
									navigationStyle:"round",				//round,square,navbar

									touchenabled:"on",						// Enable Swipe Function : on/off
									onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

									navOffsetHorizontal:0,
									navOffsetVertical:20,

									stopAtSlide:-1,
									stopAfterLoops:-1,

									shadow:0,								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows  (No Shadow in Fullwidth Version !)
									fullWidth:"on"							// Turns On or Off the Fullwidth Image Centering in FullWidth Modus
								});
			});
		</script>
