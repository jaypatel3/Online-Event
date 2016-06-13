<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!-- Basic Page Needs
 ================================================== -->
<meta charset="utf-8">
<title>event hanling</title>
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
<link rel="stylesheet" type="text/css"  href="../ucss/v.css">
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

<!-- <script src="../ujs/modernizr-2.6.2.js"></script>
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
<script src="../ujs/jquery1.js"></script>
<script src="../ujs/jquery-1.9.0.js"></script> -->
<script src="../ujs/jquery_validation.js"></script> 
<script src="../ujs/jquery_latest.js"></script>
<!-- <script src="../ujs/jquery.metadata.js"></script>
<script src="../ujs/additional-methods.js"></script> -->
<script type="text/javascript">
jQuery.noConflict();
$(document).ready(function(){
    $("#form").validate();
  });
        </script>
<style>
    label.error{
        color:red;
    }
</style>
<!-- Analytics
 ================================================== -->

</head>
<script>
function ChangeCountry(ddl) {
		    // get the form values
		    //var abc = $(ddl).val();
		 //   alert("hiii");
		 $ = jQuery.noConflict();
		    if($("#selectcategory").val() != '0' )
		    	{
		   			
				   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
		   			$.ajax({
				    
		   			type: "POST",
				    url: "<%=request.getContextPath()%>/packageController",
				    data: "country_id=" + $("#selectcategory").val(),
				    
				    success: function(response){
		    		$('#stateID').html(response);
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
		<script>
function Change(ddl) {
		    // get the form values
		    //var abc = $(ddl).val();
		 //   alert("hiii");
		 $ = jQuery.noConflict();
		    if($("#foodcategory").val() != '0' )
		    	{
		   			
				   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
		   			$.ajax({
				    
		   			type: "POST",
				    url: "<%=request.getContextPath()%>/fooditemController",
				    data: "country_id=" + $("#foodcategory").val(),
				    
				    success: function(response){
		    		$('#statID').html(response);
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

		

<body>

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
		<!-- <div class="ten columns">
			<nav id="navMain">
				<ul id="nav">
				
					<li class="active"><a href="index.jsp">Home</a>
						
					</li>
                    
                    <li><a href="our_team.jsp">Events</a>
						<ul>
                            <li><a href="categories.jsp">categories</a></li>
                            <li><a href="#">packages</a>
								<ul>
                                	<li><a href="#">Diamond</a></li>
                                    <li><a href="#">Golden</a></li>
                                    <li><a href="#">Silver</a></li>
                                </ul>
                            </li>    
                            <li><a href="services.jsp">Services</a></li>
         					<li><a href="gallery.jsp">Gallery</a></li>
							
                        </ul>
					</li>
					
					<li><a href="shortcodes.jsp">Hotels</a>
						<ul>
							
							
                            <li><a href="pricing_tables.jsp">Hotels</a></li>
                            
                            <li><a href="columns.jsp">Food</a></li>
                           
						</ul>
					</li>
					
					<li><a href="portfolio_4.jsp">Portfolio</a>
						<ul>
							<li><a href="portfolio_2.jsp">2 Columns</a></li>
							<li><a href="portfolio_3.jsp">3 Columns</a></li>
							<li><a href="portfolio_4.jsp">4 Columns</a></li>
							<li><a href="single_project.jsp">Single event</a></li>
                            <li><a href="single_project_wide.jsp">Single event Wide</a></li>
						</ul>
					</li>
					
					<li><a href="contact.jsp">Contact</a>
                    	<ul>
							<li><a href="contact.jsp">Contact Details</a></li>
                            <li><a href="contact_wide.jsp">Contact Details Wide</a></li>
						</ul>
                    </li>
                    <li class="active"><a href="signin.jsp">Sign In</a>
						
					</li>
                    <li class="active"><a href="signup.jsp">Sign Up</a>
						
					</li>
                    
				</ul>
			</nav>
		</div>		Main Navigation End -->
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
				<h1>SIGN UP PROCESS</h1>
			</div>
        </div>
        <div class="four columns search">
        	<form class="searchForm" action="#" method="get" >
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
<div align="left">
<section class="content">
<!--  1200 Container Start -->
<div class="container" >
   
		<h3 class="sectionTitle" align="center">REGISTRATION Events</h3>
		<form action="<%=request.getContextPath() %>/SelectController" method="post"  id="form" name="form">
		<center>
		<table class="formWrap" >
		<%-- <table class="formWrap">
            <tr  >
              <td > <label style="margin-right: 30px" >Select Category ::</label></td>
              <td>  <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>   
									<select name="name" class="placeholderField text" >
									<c:forEach items="${sessionScope.cat }" var="i">
									<option value="${i.id }">${i.catName}</option>
									</c:forEach>
									</select></td>
           </tr> --%><tr>
           
                      <td>  	<label style="margin-right: 30px" >Category</label></td>
                           
                        <td>    <select name="selectcategory" id="selectcategory" onchange="ChangeCountry(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.category}" var="cat">
                                <c:choose>
                                	<c:when test="${cat.id==sessionScope.packageobj.categoryid}">
                                <option selected="selected" value="${cat.id}">${cat.catName}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${cat.id}">${cat.catName}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                            </td>
                            </tr>
                          
                      <tr>
                        	<td><label style="margin-right: 30px">SubCategory</label></td>
                            <td><div id="stateID">
                           
                            <select style="width:300px" name="selectsubcategory"  id="selectsubcategory">
                            	<option value="">Choose One</option>
                                 <c:forEach items="${sessionScope.subcategory}" var="subcat">
                                <c:choose>
                                	<c:when test="${subcat.subcatid==sessionScope.packageobj.subcategoryid}">
                                <option selected="selected" value="${subcat.subcatid}">${subcat.subcategoryname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${subcat.subcatid}">${subcat.subcategoryname}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                            </div>
                            </td>
                            </tr>
                            
        <!--                 
           <tr>
            <td><label style="margin-right: 30px" > Package Name::</label></td>
               <td> <select style="width:300px" name="state" required>
                <option value="" >Choose</option>
                        <option value='option1'>Standard</option>
                        <option value='option2'>Premium</option>
                        <option value='option3'>Royal</option>
                </select>
                </td>
                </tr> -->
       <!-- <tr>
               <td><label style="margin-right: 30px" >Scheme::</label></td>
             <td> <input   type="text"  name="scheme"/></td>
         </tr> -->
      <%--  <tr>
             <td>         	<label>Food Category</label></td>
                           
                  <td>          <select name="foodcategory" id="foodcategory" onchange="ChangeCountry1(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.foodcategory}" var="foodcat">
                                <c:choose>
                                	<c:when test="${foodcat.foodcatid==sessionScope.fooditemobj.foodcategoryid}">
                                <option selected="selected" value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                        </td>
                        </tr>
                        
                        <tr>
                       
                        	<td><label>Food SubCategory</label></td>
                             
                            <td> <div id="stateID">
                            <select name="foodsubcategory" id="foodsubcategory">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.foodsubcategory}" var="foodsubcat">
                                <c:choose>
                                	<c:when test="${foodsubcat.foodsbubcatid==sessionScope.fooditemobj.foodsubcategoryid}">
                                <option selected="selected" value="${foodsubcat.foodsbubcatid}">${foodsubcat.foodsubcatname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${foodsubcat.foodsbubcatid}">${foodsubcat.foodsubcatname}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                            </div>
                            
                           </td>
                          </tr>          --%>     
                          <tr>
                        	<td><label>Food Category</label></td>
                            
                    <td>      <span class="field">  <select name="foodcategory" id="foodcategory" onchange="Change(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.foodcategory}" var="foodcat">
                                <c:choose>
                                	<c:when test="${foodcat.foodcatid==sessionScope.fooditemobj.foodcategoryid}">
                                <option selected="selected" value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                            </span>
                            
                            
                            
                            </td>
                            </tr>
                            
                       <tr>
                        	<td><label>Food SubCategory</label></td>
                            
                          <td>   <div id="statID">
                          <span class="field">  <select name="foodsubcategory" id="foodsubcategory">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.foodsubcategory}" var="foodsubcat">
                                <c:choose>
                                	<c:when test="${foodsubcat.foodsbubcatid==sessionScope.fooditemobj.foodsubcategoryid}">
                                <option selected="selected" value="${foodsubcat.foodsbubcatid}">${foodsubcat.foodsubcatname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${foodsubcat.foodsbubcatid}">${foodsubcat.foodsubcatname}</option>
                                </c:otherwise>
                                </c:choose>
 
                                 </c:forEach>
                                
                            </select>
                            </span>
                            </div>
                            </td>
                        </tr>
                        
                        <tr>
               <td><label style="margin-right: 30px" > Food Item Name::</label></td>
               <td><input type="text" name="fooditemname"  />
  				</td>
  				</tr>
                            
                        	
         <!--  <tr>
               <td><label style="margin-right: 30px" >Food Item Name</label></td>
             <td> <input   type="text"  name="fooditemname" /></td>
         </tr> -->
          <!--  <tr> 
                 <td><label style="margin-right: 30px" required>ADDRESS:: </label></td>
                  <td> <textarea  name="address" style="height: 40px;width:300px"></textarea></td>
   				</tr> -->
   				<tr>
          <td> <!-- <label style="margin-right: 30px" > CITY::</label></td>
           <td>    <select style="width:300px" name="city" required>
            <option value="" >Choose</option>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select> -->
                <%--  <select name="countryid" id="countryid"  onchange="ChangeCountry(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.country}" var="country">
                              
                              	<c:choose>
                                	<c:when test="${country.countryid==sessionScope.cityobj.countryid }">
                                <option selected="selected" value="${country.countryid}">${country.countryname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${country.countryid}">${country.countryname}</option>
                                </c:otherwise>
                                </c:choose>
                              </c:forEach>
                                
                            </select>
           </td>
           </tr> --%>
           
<%--            <tr>
            <td><!-- <label style="margin-right: 30px" > STATE::</label></td>
               <td> <select style="width:300px" name="state" required>
                <option value="" >Choose</option>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select> -->
                <select name="stateid" id="ddldrop">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.state}" var="state">
                                <c:choose>
                                	<c:when test="${state.stateid==sessionScope.cityobj.stateid }">
                                  <option value="${state.stateid}" selected="selected">${state.addstatename}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${state.stateid}" >${state.addstatename}</option>
                                </c:otherwise>
                                </c:choose>
                             
                                 </c:forEach>
                                
                            </select>
                </td> --%>
                <tr>
                <td><label style="margin-right: 30px">Hotel Name</label>
                </td>
             <td>  <select name="name" class="form-control" >
									<c:forEach items="${sessionScope.pac }" var="i">
									<option value="${i.hotelid }">${i.hotelname}</option>
									
									
									
									</c:forEach>
									
									
									
									</select>
									</td>
									</tr>
                </tr>
             <!--    <tr>
            <td> <label style="margin-right: 30px" >COUNTRY::</label></td>
               <td> <select style="width:300px" required name="country">
               <option value="" >Choose</option>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select>
                </td>
               </tr> -->
               <!-- <tr>
                
                   <td> <label style="margin-right: 30px" >Passport Photo:: </label></td>
                   <td> <input type="file" class="upload" /></td>
      		</tr> -->
                
                
         
          </table>
          </center>
         </br></br>
       <center>   <input type="submit" class="button small grey" name="flag" value="submit"></center>
            </form>
        </div> 
        </div>   
           

	
    
    
	<!-- end #main.container -->
</section>
</div>
<div class="contentBottom"></div>

<!-- Footer Start -->
<footer>

	<section class="footerMiddle">
		<div class="container">
        
            <!-- Reach Us -->
            <div class="four columns reachUs">
                <h3>Reach Us</h3>
                    <div class="worldMap"><img src="images/world-map.png" alt="" class="scale-with-grid" /></div>
                    <p class="footerIcon footerAddress">JASS MANAGEMENT CONSULTANTS<br />AMABAWADI,AHMEDABAD</p>
                    <p class="footerIcon footerPhone">8401369031</p>
                    <p class="footerIcon footerEmail"><a href="mailto:info@html5css3templates.com" title="Email Us">contact us</a></p>
            </div>
            
            <!-- Site Links -->
           <!--  <div class="four columns usefulLinks">
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
                        
                <div class="eleven columns">
                    
                </div>
                        
               
        
            </div>
        </div>
        
    </section>    
	
</footer>

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>

<!-- Style Switcher -->
<div class="switcher"></div>



</body>
</html>