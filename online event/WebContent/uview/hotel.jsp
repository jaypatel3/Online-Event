<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="../uview/header.jsp"></jsp:include>
<!-- Basic Page Needs
 ================================================== -->


	</head>
	<!-- End Header -->


	<!--  Page Title -->
	<section class="pagetitle bg1">

		<!-- 1200 Container Start -->
		<div class="container">
			<div class="twelve columns">
				<div class="titleWrap">
					<h1>HOTELS</h1>
				</div>
			</div>
			<div class="four columns search">
				<form class="searchForm" action="<%=request.getContextPath() %>/usersigninController" method="get">
					<div>
						<input   type = "text" title="Search site..."
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
		<!-- 1200 Container -->
		<div class="container">


			<!-- Pricing -->
			<div class="sixteen columns">
				<h3 class="sectionTitle">Hotel Details</h3>
			</div>

			<!-- basic -->
			<div>
				<table align="left">
					<c:forEach items="${sessionScope.lshotel}" var="row">
						<div>
						<div class="four columns pricingInner">
				<ul>
					<li>
						<div class="">
							<ul>
								<li><center><img src="../images/${row[0].hotelPhoto}" ></center></li>
								 </ul>
								<div class=""></div>
						</div>
						<ul class="plan-features">
							<li><strong>Hotel Name::</strong>${row[0].hotelname}</li>
							<li class="alt"><strong>Address::</strong>${row[0].hoteladdress1}</li>
							<li><strong>${row[1].cityname}</strong>             ${row[2].addstatename}</li>
							<li class="alt"><strong>${row[3].countryname}</strong></li>
							<li><strong>E-mail::</strong>${row[0].email}</li>
							<li class="alt last"><strong>Phone No:</strong>
								<ul class="advanced">
									<li>${row[0].phone1}</li>
									<li>${row[0].phone2}</li>
									<li class="plus-link"><a href="#">${row[0].hoteldescription}</a></li>
								</ul>
							</li>
						</ul>
                         <a class="button medium burgundy" href="#">Register Today!</a>
					</li>
				</ul>						</div>
				
				
					</c:forEach>
				</table>
			</div>



			
			<!-- professional -->

		</div>
		<div class="sixteen columns">
    	<h3 class="sectionTitle">Pagination</h3>
    
    	<div class="paging">
            <ul class="pageList">
            	<li><a href="#">First</a></li>
                <li><a href="#">&laquo;</a></li>
                <li><a class="active" href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">&raquo;</a></li>
                <li><a href="#">Last</a></li>
            </ul>
        </div>
        
    </div>

			
	
		<!-- End 1200 Container -->
	</section>

	<div class="contentBottom"></div>

	<!-- Footer Start -->
	<jsp:include page="../uview/footer.jsp"></jsp:include>
	<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
    ga('create', 'UA-56821827-1', 'auto');
    ga('send', 'pageview');
    
    </script>
</body>
</html>