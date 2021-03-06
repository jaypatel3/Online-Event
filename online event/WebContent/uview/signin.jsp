<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs
 ================================================== -->
<meta charset="utf-8">
<title>event handling</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific
 ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
 ================================================== -->
<link rel="stylesheet" type="text/css" href="../ucss/base.css">
<link rel="stylesheet" type="text/css" href="../ucss/skeleton.css">
<link rel="stylesheet" type="text/css" href="../ucss/layout.css">
<link rel="stylesheet" type="text/css" href="../ucss/shortcodes.css">
<link rel="stylesheet" type="text/css" href="../ucss/uniform.css">
<link rel="stylesheet" type="text/css" href="../ucss/icons.css">

<!-- Color Skins -->
<link rel="stylesheet" type="text/css" href="../ucss/pink.css"
	name="skins">
<link rel="stylesheet" type="text/css" href="../ucss/switcher.css">

<!-- Favicons
=================================================== -->
<link rel="shortcut icon" href="../uimages/favicon.ico">
<link rel="apple-touch-icon" href="../images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="../images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="../images/apple-touch-icon-114x114.png">

<!-- Web Fonts
================================================== -->
<link
	href="http://fonts.googleapis.com/css?family=Titillium+Web:200,300,700,300italic|Kaushan+Script"
	rel="stylesheet" type="text/css">


<!-- Java Script
 ================================================== -->
 <script type="text/javascript">  
function validateemail()  
{  

if(form.password.value == form.userName.value) {
    alert("Error: Password must be different from Username!");
    form.password.focus();
    return false;
}
/* /* re = /[0-9]/;
if(!re.test(form.password.value)) {
  alert("Error: password must contain at least one number (0-9)!");
  form.password.focus();
  return false;
}
re = /[a-z]/;
if(!re.test(form.password.value)) {
  alert("Error: password must contain at least one lowercase letter (a-z)!");
  form.password.focus();
  return false;
}
re = /[A-Z]/;
if(!re.test(form.password.value)) {
  alert("Error: password must contain at least one uppercase letter (A-Z)!");
  form.password.focus();
  return false;
} */
/* }
else {
alert("Error: Please check that you've entered and confirmed your password!");
form.password.focus();
return false;
} */ 
}  
</script>  
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
	<section class="topDropContainer">
		<div class="topDropPanel">
			<div class="container">
				<div class="two-thirds column">
					<h3 class="sectionTitle">Enjoy your functions</h3>
					<p>With us and make your function most memorable for your life
						according to your cost.</p>
				</div>
				<div class="one-third column">
					<h3 class="sectionTitle">R u interested?</h3>
					<a class="button medium themeButton"
						href="http://themeforest.net/user/html5css3templates">Register
						your event &rarr;</a>
				</div>
			</div>
		</div>
		<div class="topBorderWrap">
			<div class="topBorder"></div>
		</div>
		<div class="container">
			<div class="topDrop sixteen columns">
				<a href="#" id="topDropBut">&nbsp;</a>
			</div>
		</div>

	</section>

	<header>

		<!-- 1200 Container Start -->
		<div class="container">

			<!-- Logo -->
			<div id="logo" class="six columns">
				<div class="logoIconWrap">
					<div class="logoIcon"></div>
				</div>
				<a href="index.html"><span>Event</span>Planner</a>
			</div>

			<!-- Main Navigation Start -->
			<!-- <div class="ten columns">
				<nav id="navMain">
					<ul id="nav">

						<li class="active"><a href="index.jsp">Home</a></li>

						<li><a href="our_team.jsp">Events</a>
							<ul>
								<li><a href="categories.jsp">categories</a></li>
								<li><a href="#">packages</a>
									<ul>
										<li><a href="#">Diamond</a></li>
										<li><a href="#">Golden</a></li>
										<li><a href="#">Silver</a></li>
									</ul></li>
								<li><a href="services.jsp">Services</a></li>
								<li><a href="gallery.jsp">Gallery</a></li>

							</ul></li>

						<li><a href="shortcodes.jsp">Hotels</a>
							<ul>


								<li><a href="pricing_tables.jsp">Hotels</a></li>

								<li><a href="columns.jsp">Food</a></li>

							</ul></li>

						<li><a href="portfolio_4.jsp">Portfolio</a>
							<ul>
								<li><a href="portfolio_2.jsp">2 Columns</a></li>
								<li><a href="portfolio_3.jsp">3 Columns</a></li>
								<li><a href="portfolio_4.jsp">4 Columns</a></li>
								<li><a href="single_project.jsp">Single event</a></li>
								<li><a href="single_project_wide.jsp">Single event Wide</a></li>
							</ul></li>

						<li><a href="contact.jsp">Contact</a>
							<ul>
								<li><a href="contact.jsp">Contact Details</a></li>
								<li><a href="contact_wide.jsp">Contact Details Wide</a></li>
							</ul></li>
						<li class="active"><a href="signin.jsp">Sign In</a></li>
						<li class="active"><a href="signup.jsp">Sign Up</a></li>

					</ul>
				</nav>
			</div>
			Main Navigation End -->
			<jsp:include page="../uview/header.jsp"></jsp:include>
		</div>

	</header>
	<!-- End Header -->


	<!--  Page Title -->
	<section class="pagetitle bg2">

		<!-- 1200 Container Start -->
		<div class="container">
			<div class="twelve columns">
				<div class="titleWrap">
					<h1>SIGN IN</h1>
				</div>
			</div>
			<div class="four columns search">
				<form class="searchForm"
					action="<%=request.getContextPath() %>/usersigninController"
					method="post">
					<div>
						<input class="searchField placeholderField" title="Search site..."
							type="text" name="search" value="" />
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




			<form name="form" id = "form"
				action="#"
				method="post" onSubmit="return validateemail();">

				<div class="four columns">
					<h3 class="sectionTitle">USER DETAILS</h3>

					<div class="formWrap">
						USERNAME::<input 
							 title="User Name must contain at least 6 characters, including UPPER/lowercase and numbers"  type="text" name="userName" required pattern = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/>
						<ul>
							<li><a href="forgetusername.jsp">FORGOT USERNAME???</a></li>
						</ul>
					</div>
					</br>
					</br>
					<div class="formWrap">
						PASSWORD::<input 
							 title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" type="password"   name="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/>
						<ul>
							<li><a href="forgetpassword.jsp">FORGOT PASSWORD???</a></li>
						</ul>
					</div>
					<div class="formWrap">
						<!-- <input type="submit" id="submit" value="submit" name="submit" /> -->
						<input type="hidden" value="login" name="flag" />
						<input type="submit" class="button small grey" name="submit" value="submit" >
					</div>


				</div>
			</form>
		</div>
		
		








		
		<!-- end #main.container -->
	</section>
	

	<div class="contentBottom"></div>

	<!-- Footer Start -->
	<footer>

		<section class="footerMiddle">
			<div class="container">

				<!-- Reach Us -->
				<div class="four columns reachUs">
					<h3>Reach Us</h3>
					<div class="worldMap">
						<img src="../images/world-map.png" alt="" class="scale-with-grid" />
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
				<!-- <div class="four columns usefulLinks">
					<h3>Useful Links</h3>
					<ul class="linksList">
						<li><a href="#">SIGN IN</a></li>
						<li><a href="#">EVENTS</a></li>
						<li><a href="#">PACKAGES</a></li>
						<li><a href="#">HOTELS</a></li>
						<li><a href="#">PORTFOLIO</a></li>
						<li><a href="#">RECENT EVENTS</a></li>
						<li><a href="#">CONTACT US</a></li>
					</ul>
				</div> -->
				 <jsp:include page="../uview/footer.jsp"></jsp:include>

				<!-- Twitter -->
				<div class="four columns latestTweets">
					<h3>Latest Tweets</h3>
					<ul id="twitter"></ul>
					<script type="text/javascript">
                        jQuery(document).ready(function($){
                        $.getJSON('http://api.twitter.com/1/statuses/user_timeline.json?screen_name=envato&count=2&callback=?', function(tweets){
                        $("#twitter").html(tz_format_twitter(tweets));
                        }); });
                    </script>
					<div class="clearfix"></div>
				</div>

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



</body>
</html>