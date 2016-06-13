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
				<h3 class="sectionTitle">Food Details</h3>
			</div>

			<!-- basic -->
			<div>
				<table align="left">
					<c:forEach items="${sessionScope.cat}" var="i">
						<div>
						<div class="four columns pricingInner">
				<ul>
					<li>
						<div class="">
							<ul>
								<li><center><img src="../images/${i.fooditempic}" ></center></li>
								 </ul>
								<div class=""></div>
						</div>
						<ul class="plan-features">
							<li><strong>Hotel Name::</strong>${i.fooditemname}</li>
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
		<!-- End 1200 Container -->
	</section>

	<div class="contentBottom"></div>

	<!-- Footer Start -->
	<jsp:include page="../uview/footer.jsp"></jsp:include>
</body>
</html>