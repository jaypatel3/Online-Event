<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="../uview/header.jsp"></jsp:include>
<!-- Basic Page Needs
 ================================================== -->
<meta charset="utf-8">
<title>Seamless - Contact</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific
 ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
 ================================================== -->
<link rel="stylesheet" type="text/css"  href="../ucss/base.css">
<link rel="stylesheet" type="text/css"  href="../ucss/skeleton.css">
<link rel="stylesheet" type="text/css"  href="../ucss/layout.css">
<link rel="stylesheet" type="text/css"  href="../ucss/shortcodes.css">
<link rel="stylesheet" type="text/css"  href="../ucss/uniform.css">
<link rel="stylesheet" type="text/css"  href="../ucss/icons.css">

<!-- Color Skins -->
<link rel="stylesheet" type="text/css"  href="../ucss/pink.css" name="skins"> 
<link rel="stylesheet" type="text/css"  href="../ucss/switcher.css">

<!-- Favicons
=================================================== -->
<link rel="shortcut icon" href="../uimages/favicon.ico">
<link rel="apple-touch-icon" href="../uimages/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="../uimages/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="../uimages/apple-touch-icon-114x114.png">

<!-- Web Fonts
================================================== -->
<link href="http://fonts.googleapis.com/css?family=Titillium+Web:200,300,700,300italic|Kaushan+Script" rel="stylesheet" type="text/css">

	
<!-- Java Script
 ================================================== -->
<script src="../ujs/modernizr-2.6.2.js"></script>
<script src="../ujs/jquery-1.8.3.min.js"></script>
<script src="../ujs/jquery.easing.1.3.min.js"></script>
<script src="../ujs/jquery.cookie.js"></script>
<script src="../ujs/flexslider.js"></script>
<script src="../ujs/jquery.isotope.min.js"></script>
<script src="../ujs/jquery.hoverdir.js"></script>
<script src="../ujs/jquery.uniform.min.js"></script>
<script src="../ujs/custom.js"></script>
<script src="../ujs/ender.min.js"></script>
<script src="../ujs/selectnav.js"></script>
<script src="../ujs/twitter.js"></script>
<script src="../ujs/tooltip.js"></script>
<script src="../ujs/popover.js"></script>
<script src="../ujs/alert.js"></script>
<script src="../ujs/switcher.js"></script>


<!-- Analytics
 ================================================== -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-37705188-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</head>
<body>

<!-- Top Panel -->

<!-- Header -->
<header>

	<!-- 1200 Container Start -->
	<div class="container">
	
		<!-- Logo -->
		<div id="logo" class="six columns">
           <div class="logoIconWrap"><div class="logoIcon"></div></div>
           <a href="index.html"><span>Event</span>Planner</a>
        </div>
		
		<!-- Main Navigation Start -->
		
<jsp:include page="../uview/header.jsp"></jsp:include>
	</div>


</header>
<!-- End Header -->


<!--  Page Title -->
<section class="pagetitle bg4">

	<!-- 1200 Container Start -->
	<div class="container">
		<div class="twelve columns">
        	<div class="titleWrap">
				<h1>Contact</h1>
			</div>
        </div>
        <div class="four columns search">
        	<form class="searchForm" action="#" method="get">
                <div>
                    <input class="searchField placeholderField" title="Search site..." type="text" name="search" value=""/>
                    <button class="searchIcon" type="submit">Search</button>
                </div>
            </form>
        </div>
	</div>
	<!-- 1200 Container End -->
	
</section>
<!-- Page Title End -->

<section class="content">
<!--  1200 Container Start -->
<div class="container">

	<div class="four columns">
			<h3 class="sectionTitle">Ahmedabad Office</h3>

			<div class="contactDetails" >
				<p class="contactAddress">123 Flinders St<br/>Ahmedabad VIC 3000</p>
				<p class="contactPhone">Phone: (03) 1234 5678</p>
				<p class="contactEmail">Email: <a href="#">melb@seamless.com</a></p>
				<p class="contactDropbox">Dropbox: <a href="#">melb@seamless.com</a></p>
				<p class="contactTime">
						Mon-Fri: 9:00am &rarr; 5:30pm <br/>
						Sat: 10:00am &rarr; 2:30pm <br/>
						Sunday: Closed
				</p>
			</div>
            
            
            <h3 class="sectionTitle">State Offices</h3>
            
            <ul class="navSide">
            	<li class="active"><a href="#"><span>Ahmedabad Office</span></a></li>
               <!--  <li><a href="#"><span>Surat Office</span></a></li>
                <li><a href="#"><span>Vadodra Office</span></a></li>
                <li><a href="#"><span>Mumbai Office</span></a></li>
                <li><a href="#"><span>Delhi Office</span></a></li>
                <li><a href="#"><span>Hobart Office</span></a></li>
                <li><a href="#"><span>Canberra Office</span></a></li> -->
            </ul>
            
            <h3 class="sectionTitle">Send us a Message</h3>
		
		<div class="success-message">
			<div class="notification success closeable">
				<p><span>Success!</span> Your message has been sent.</p>
			</div>
		</div>

		<div id="contactForm">
			<form method="post" action="<%= request.getContextPath()%>/contactController">
				
				<div class="formWrap">
					<input class="placeholderField text" title="Name" type="text" name="name" />
				</div>
				
				<div class="formWrap">
					<input class="placeholderField text" title="Email" type="text" name="email" />
				</div>
				
				<div class="formWrap">
					<textarea class="placeholderField text textarea" title="Message" name="message" ></textarea>
				</div>
				
				<div class="formWrap">
				
					<input type="submit"  name="flag" value="send"/>
					<div class="loading"></div>
				</div>
				
			</form>
		</div>
	</div>

	<!-- Google Map -->
	<div class="twelve columns">
		<h3 class="sectionTitle">Find Us</h3>
		<div id="googleMap" class="embed">
			<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3672.4780002348375!2d72.60118734999999!3d23.00621515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e85c51048cefb%3A0x777f51782a8b7a1a!2sKankaria+Lake%2C+Kankaria%2C+Ahmedabad%2C+Gujarat+380002!5e0!3m2!1sen!2sin!4v1428318452591"></iframe><br /><small><a href="https://www.google.co.in/maps/place/Kankaria+Lake,+Kankaria,+Ahmedabad,+Gujarat+380002/@23.0062151,72.6011873,17z/data=!3m1!4b1!4m2!3m1!1s0x395e85c51048cefb:0x777f51782a8b7a1a" style="color:#0000FF;text-align:left">View Larger Map</a></small>
		</div>
	</div>
	<!-- Google Map End -->
    


</div>
<!-- End 1200 Container -->
</section>

<div class="contentBottom"></div>

<!-- Footer Start -->
<jsp:include page="../uview/footer.jsp"></jsp:include>

</body>
</html>