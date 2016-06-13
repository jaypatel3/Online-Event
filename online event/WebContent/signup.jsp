<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
 <script>
            function CountryCntrl($scope) {
                $scope.countries = {
                    'India': {
                        'Maharashtra': ['Pune', 'Mumbai', 'Nagpur', 'Akola'],
                        'Madhya Pradesh': ['Indore', 'Bhopal', 'Jabalpur'],
                        'Rajasthan': ['Jaipur', 'Ajmer', 'Jodhpur']
                    },
                    'USA': {
                        'Alabama': ['Montgomery', 'Birmingham'],
                        'California': ['Sacramento', 'Fremont'],
                        'Illinois': ['Springfield', 'Chicago']
                    },
                    'Australia': {
                        'New South Wales': ['Sydney'],
                        'Victoria': ['Melbourne']
                    }
                };
            }
        </script>
        
<script type="text/javascript">  
function validateemail()  
{  
var x=document.form.emailid.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
  }  

if(form.password.value == form.username.value) {
    alert("Error: Password must be different from Username!");
    form.password.focus();
    return false;
}

/* re = /[0-9]/;
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
<script>
function ChangeCountry(ddl) {
		    // get the form values
		    //var abc = $(ddl).val();
		 //   alert("hiii");
		 $ = jQuery.noConflict();
		    if($("#countryid").val() != '0' )
		    	{
		   			
				   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
		   			$.ajax({
				    
		   			type: "POST",
				    url: "<%=request.getContextPath()%>/hotelController",
				    data: "country_id=" + $("#countryid").val(),
				    
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
function changestate(ddl) {
    // get the form values
    //var abc = $(ddl).val();
   //alert("hiii");
 $ = jQuery.noConflict();
    if($("#stateid").val() != '0' )
    	{
   			
		   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
   			$.ajax({
		    
   			type: "POST",
		    url: "<%=request.getContextPath()%>/hotelController",
		    data: "state_id=" + $("#stateid").val(),
		    
		    success: function(response){
    		$('#cityID').html(response);
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
<div align="left" >
<section class="content" >
<!--  1200 Container Start -->

<div class="container"  > 
   
		<h3 class="sectionTitle" align="center">REGISTRATION</h3>
		<form action="<%=request.getContextPath()%>/SignupController" method="post"  id="form" name="form" onSubmit="return validateemail();"  >
		
		<center>
		<table class="formWrap" >
		
		<tr>
               <td><label style="margin-right: 30px" > User Name::</label></td>
               <td><input title="User Name must contain at least 6 characters, including UPPER/lowercase and numbers"  type="text" name="username" required pattern = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/>
  				</td>
  
            <tr  >
              <td > <label style="margin-right: 30px" >FIRST NAME::</label></td>
              <td> <input   type="text"  name="firstname"   required/></td>
           </tr>
            
            </tr>
       <tr>
               <td><label style="margin-right: 30px" >LAST NAME::</label></td>
             <td> <input   type="text" name="lastname" required/></td>
         </tr>
          <tr>
               <td><label style="margin-right: 30px" >Password::</label></td>
             <td> <input title="Password must contain at least 6 characters, including UPPER/lowercase and numbers"   type="password" name="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  onchange="
  this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"/></td>
              
         </tr>
         
         
          <tr>
               <td><label style="margin-right: 30px" >Email Id</label></td>
             <td> <input   type="text" name="emailid" required/></td>
         </tr>
           <tr> 
                 <td><label style="margin-right: 30px" required>ADDRESS:: </label></td>
                  <td> <textarea  name="address" style="height: 40px;width:300px"></textarea></td>
   				</tr>
   				 
   				 <tr>
            <td>  <label style="margin-right: 30px"  >COUNTRY::</label></td>
              <td>   <select name="countryid" id="countryid" onchange="ChangeCountry(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.country}" var="country">
                                <c:choose>
                                	<c:when test="${country.countryid==sessionScope.hotelobj.countryid}">
                                <option selected="selected" value="${country.countryid}">${country.countryname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${country.countryid}">${country.countryname}</option>
                                </c:otherwise>
                                </c:choose>
                                 </c:forEach>
                                
                            </select>
                </td>
                </tr>
               
                  <tr>
            <td><label style="margin-right: 30px" > STATE::</label></td>
              <td>  <div id="stateID"> <select name="stateid" id="stateid"  onchange="changestate(this)">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.state}" var="state">
                                <c:choose>
                                	<c:when test="${state.stateid==sessionScope.hotelobj.stateid}">
                                <option selected="selected" value="${state.stateid}">${state.addstatename}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${state.stateid}">${state.addstatename}</option>
                                </c:otherwise>
                                </c:choose>
                                 </c:forEach>
                                
                            </select>
                            </div>
                </td>
                </tr>
   				<tr>
          <td> <label style="margin-right: 30px" > CITY::</label></td>
             <td> <div id="cityID"> <select name="cityid" id="cityid">
                            	<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.city}" var="city">
                                <c:choose>
                                	<c:when test="${city.cityid==sessionScope.hotelobj.cityid}">
                                <option selected="selected" value="${city.cityid}">${city.cityname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${city.cityid}">${city.cityname}</option>
                                </c:otherwise>
                                </c:choose>
                                 </c:forEach>
                                
                            </select>
                            </div>
           </td>
           </tr> 
           
                  <!-- <tr>
                
                   <td> <label style="margin-right: 30px" >Passport Photo:: </label></td>
                   <td> <input type="file" class="upload" /></td>
      		</tr> -->
                
                
         
          </table>
          </center>
         </br></br>
       <center>   <input type="submit" class="button small grey" name="submit" value="submit" ></center>
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