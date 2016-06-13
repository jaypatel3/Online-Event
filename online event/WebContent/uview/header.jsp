<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
 ================================================== -->
<meta charset="utf-8">
<title>event handling</title>
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
<link rel="stylesheet" type="text/css"  href="../ucss/revolution.css">

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

<script src="../ujs/jquery.themepunch.plugins.min.js"></script>
<script src="../ujs/jquery.themepunch.revolution.min.js"></script>


<!-- Analytics
 ================================================== -->


</head>
<body class="portfolio4">

<!-- Top Panel -->
<section class="topDropContainer">
    <div class="topDropPanel">
        <div class="container">
            <div class="two-thirds column">
                <h3 class="sectionTitle">Enjoy your functions</h3>
                <p>With us and make your function most memorable for your life according to your cost.</p>			
            </div>
            <div class="one-third column">
                <h3 class="sectionTitle">R u interested?</h3>
                <a class="button medium themeButton" href="http://themeforest.net/user/html5css3templates">Register your event &rarr;</a>
            </div>
        </div>
    </div>
    <div class="topBorderWrap"><div class="topBorder"></div></div>
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
           <div class="logoIconWrap"><div class="logoIcon"></div></div> 
           <a href="index.jsp"><span>Event</span>Planner</a>
        </div>
		
		<!-- Main Navigation Start -->
		<div class="ten columns">
			<nav id="navMain">
				<ul id="nav">
				
					<li class="active"><a href="index.jsp">Home</a>
						
					</li>
                    
                     <li><a href="events.jsp"<%-- <%=request.getContextPath()%>/CategoryController?flag=allcat" --%>>Events</a>
						<ul>
						<c:forEach items="${sessionScope.lscategorysearch1234}" var="row">
                            <li><a href="<%=request.getContextPath()%>/subcategoryController?id=${row.id}&flag=subcat">${row.catName}</a></li>
                            </c:forEach>
                        </ul>
				</li>
					
					<%-- <li><a href="<%=request.getContextPath() %>/hotelController?name=flag&page=hotel.jsp">Hotels</a></li>
					 --%>	
					 <li><a
							href="<%=request.getContextPath()%>/hotelController?flag=hotel">Hotels</a></li>
					 	
					<li><a href="<%=request.getContextPath()%>/fooditemController?flag=allfoodcat">Food</a>
					<%-- <ul>
						<c:forEach items="${sessionScope.lscategorysearch1234}" var="row">
                            <li><a href=""></a></li>
                            </c:forEach>
                        </ul>  --%>
					<li><a href="gallery.jsp">Gallery</a></li>
					 	
					
                    <li class="active"><a href="signin.jsp">Sign In</a>
						
					</li>
                    <li class="active"><a href="<%=request.getContextPath() %>/SignupController">Sign Up</a>
						
					</li>
                    
				</ul>
			</nav>
		</div>		<!-- Main Navigation End -->
	</div>

</header>
