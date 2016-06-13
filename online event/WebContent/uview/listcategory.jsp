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

<script>
function fnloadimage(abc){
	alert(abc);
	$ = jQuery.noConflict();
    if($("#id").val() != '0' )
    	{
   			
		   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
   			$.ajax({
		    
   			type: "POST",
		    url: "<%=request.getContextPath()%>/galleryController?id="+abc+"&flag=gallery",
		    data: "subcat_id=" + abc+"&flag=ajaxacall",
		    
		    success: function(response){
    		$('#portfolioWrap').html(response);
    		$('#portfolioWrap').css("height","100%");
    		//$(".chzn-select").chosen();
    		//$.hideprogress();
   			 },
    		error: function(e){
    		alert('Error: ' + e);
    	}
    	});
    }
}
	
</script>


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
		<div class="ten columns">
			<nav id="navMain">
				<ul id="nav">
				
					<li class="active"><a href="index.jsp">Home</a>
						
					</li>
					 <li><a href="<%=request.getContextPath()%>/CategoryController?flag=allcat">Events</a>
						<ul>
						<c:forEach items="${sessionScope.lscategorysearch1234}" var="row">
                            <li><a href="<%=request.getContextPath()%>/subcategoryController?id=${row.id}&flag=subcat">${row.catName}</a></li>
                            </c:forEach>
                        </ul>
				</li>
                    
                   <%--  <li><a href="<%=request.getContextPath()%>/CategoryController?flag=allcat">Events</a>
						<ul>
						<c:forEach items="${sessionScope.lscategorysearch}" var="row">
                            <li><a href="<%=request.getContextPath()%>/subcategoryController?id=${row.id}&flag=subcat">${row.catName}</a></li>
                            </c:forEach>
                        </ul>
				</li> --%>
					
					<li><a href="<%=request.getContextPath()%>/hotelController?flag=hotel">Hotels</a></li>
							
					<li><a href="<%=request.getContextPath()%>/foodcategoryController?flag=allfoodcat">Food</a>
					<ul>
						<c:forEach items="${sessionScope.lscategorysearch1234}" var="row">
                            <li><a href=""></a></li>
                            </c:forEach>
                        </ul>
					<li><a href="gallery.jsp">Gallery</a></li>
					
					
                    <li class="active"><a href="signin.jsp">Sign In</a>
						
					</li>
                    <li class="active"><a href="signup.jsp">Sign Up</a>
						
					</li>
                    
				</ul>
			</nav>
		</div>		<!-- Main Navigation End -->
	</div>

</header>
<!-- End Header -->


<!--  Page Title -->
<section class="pagetitle bg4">

	<!-- 1200 Container Start -->
	<div class="container">
		<div class="twelve columns">
        	<div class="titleWrap">
				<h1>Categories Of Events</h1>
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
<form name="form" id="form" action="">
<input type="hidden" name="flag" value="search"/>
<section class="content">
<!--  1200 Container Start -->
<div class="container">
	
		<!-- Portfolio Filter -->
		<div class="sixteen columns">

			<div id="filters">
			<c:forEach items="${sessionScope.subcat}" var="row">
				<ul class="option-set" data-option-key="filter">
				<li><a href="#" onclick="fnloadimage(${row.subcatid})" data-option-value=".photography">${row.subcategoryname}</a></li>
					<!--  <li><a href="#filter" class="selected" data-option-value="*">All Events</a></li>
					
                    <li><a href="#filter" data-option-value=".stationery">Parties</a></li>
					<li><a href="#filter" data-option-value=".architecture">College Event</a></li>
					<li><a href="#filter" data-option-value=".packaging">Corporate Event</a></li>
					<li><a href="#filter" data-option-value=".abstract">Reception</a></li>-->
                 
				</ul>
			 </c:forEach>  
			</div>
	</div><!-- End Portfolio Filter-->

	</div>
	<!-- End 1200 Container -->
<c:forEach items="${sessionScope.lssubcat}" var="row">
${row.photoname}
</c:forEach>

<!--<c:forEach items="${sessionScope.lssubcat}" var="row">
<article class="four columns portfolioList ${row.subcategoryname} abstract">
            	<a class="thumbLink" href="#" title="" >
					<section class="thumbImage">
				
                        <div><span class="iconWrapper iconLink"></span></div>
                    	${row.photoname}
                    </section>
					
                </a>
			</article>

</c:forEach>
	
	<!-- 1200 Container -->
	<div class="container">
		<!-- Portfolio Content -->
		<div id="portfolioWrap" class="da-thumbs" style="height:200px">

			<!-- 1/4 Column -->
			<article class="four columns portfolioList photography abstract">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                        <div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio1.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Celebration Party</h3>
						<p>IN THIS PARTY OF CELEBRATION, THE WHOLE DECARATION AND ARRANGEMENTS ARE UNIQUE IN LESS EXPENSE.. </p>
					</section>
                </a>
			</article>

        
			<!-- 1/4 Column -->
			<article class="four columns portfolioList photography abstract ">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                        <div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio2.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Music Concert</h3>
						<p>IN THIS EVENT WE WILL ARRANGE A NEW BAND OR SINGER AND MANY MORE ACCORING TO YOUR REQUIREMENT AND BUDGET.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList stationery technology">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                        <div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio3.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Birthday Party</h3>
						<p>IN THIS PARY,THEME IS BALLON.ALL ARRANGEMENT IS ARRANED AS BALLON THEME,IN WHICH DIFFERENT TYPE OF BALLONS ARE USED.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList packaging">
            	<a class="thumbLink" href="singleevent.jsp_project.html" title="" >
					<section class="thumbImage">
                        <div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio4.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Promotion Party</h3>
						<p>IN THIS PROMOTION PARTY,WE  WILL PLAN ACCORING TO OUR CLIENTS SO THEY CAN ENJOY FULLY THEIR ACHIEVEMENTS.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList architecture">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio5.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">College Event</h3>
						<p>COLLEGE TIME BEST TIME OF STUDENT LIFE ,SO WE THINK THAT STUDENTS CAN CELEBRATE THEIR MOMENTS FULLY UNFORGOTABLY.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList abstract">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio6.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Reception</h3>
						<p>RECEPTION OF THE MARRIAGE IS MAIN FUNCTION , IN WHICH MILD DECORATION IS THEIR AND TASTY FOOD WILL  BE ARRANGED.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList technology abstract">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio7.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Reception</h3>
						<p>IN THIS ROYAL RECEPTION,THE GRAND RECEPTION WILL BE ARRANGE,THE ROYAL HALL WILL ARRANGED AS WELL AS ROYAL FOOD.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList architecture">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio8.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Technical Event</h3>
						<p>MANY TECHNICAL EVENTS SUCH AS PROJECT PRESENTAION ETC AND NON TECHNICAL EVENTS WILL ARRANGE FOR FUN.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList photography">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio9.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Wedding</h3>
						<p>THE GRAND ARRANGEMENT AND DECORATION WILL BE ARRANGED, MOMENTS OF THIS EVENT WILL EXECUTE PROPERLY. </p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList photography abstract">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio10.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Wedding</h3>
						<p>IN DIAMAND WEDDING THEME , WHOLE VENUE DECORATED WITH RED N GOLDEN COLOR OF FLOWERS AND MANY THINGS,ETC..</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList stationery">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio11.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Birthday Party</h3>
						<p>BIRTHDAY PARTY WAS HELD IN HOME OF OUR CLIENT,WE ARRANGED MANY FUN GAMES, FOODS AND RETURN GIFTS.</p>
					</section>
                </a>
			</article>
            
            <!-- 1/4 Column -->
			<article class="four columns portfolioList photography">
            	<a class="thumbLink" href="singleevent.jsp" title="" >
					<section class="thumbImage">
                    	<div><span class="iconWrapper iconLink"></span></div>
                    	<img src="../uimages/portfolio12.jpg" alt="" class="scale-with-grid" />
                    </section>
					<section class="thumbText">
						<h3 class="sectionTitle">Wedding</h3>
						<p>WE CAN ALSO MANAGE WEDDING EVENT IN TEMPLE OR CHURCH,THE WHOLE TEMPLE OR CHURCH IS DECORATED.</p>
					</section>
                </a>
			</article>
		</div>	
		<!-- End Portfolio Content -->
	</div>
<!-- End 1200 Container -->
</section>
</form>
<div class="contentBottom"></div>

<!-- Footer Start -->
<jsp:include page="../uview/footer.jsp"></jsp:include>

</body>
</html>