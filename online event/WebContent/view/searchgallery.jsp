<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forms</title>
<!-- <link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="../js/plugins/charCount.js"></script>
<script type="text/javascript" src="../js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/tables.js"></script>
<script type="text/javascript" src="../js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/forms.js"></script>-->
</head>
<body class="withvernav">
	<jsp:include page="head.jsp"></jsp:include>
	<div class="bodywrapper">

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">Gallery</h1>

				<ul class="hornav">

					<li class="current"><a>Search Gallery</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">
				<form id="form1" class="stdform" method="post"
					action="<%=request.getContextPath() %>/galleryController">
					<input type="hidden" name="flag" value="search" />
					<p>
						<label>Gallery Name</label> <span class="field"><input
							type="text" name="galleryname" id="galleryname" class="longinput" /></span>
					</p>
					<br />

					<p class="stdformbutton">
						<button class="submit radius2">Search</button>
					</p>
				</form>


				<div class="contenttitle2">
					<h3>Gallery</h3>
				</div>
				<!--contenttitle-->
				<table cellpadding="0" cellspacing="0" border="0" class="stdtable"
					id="dyntable2">

					<colgroup>
						<col class="con0" style="width: 4%" />
						<col class="con1" />
						<col class="con0" />
						<col class="con1" />
						<col class="con0" />
					</colgroup>
					<thead>
						<tr>
							<th class="head0 nosort"><input type="checkbox" /></th>
							<th class="head0">Gallery id</th>
							<th class="head1">photo name</th>
							<th class="head0">photo path</th>
							<th class="head1">category id</th>
							<th class="head0">subcategory id</th>
							<th class="head1">photo description</th>
							<th class="head0">photo operation</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th class="head0"><span class="center"> <input
									type="checkbox" />
							</span></th>
							<th class="head0">Gallery id</th>
							<th class="head1">photo name</th>
							<th class="head0">photo path</th>
							<th class="head1">category id</th>
							<th class="head0">subcategory id</th>
							<th class="head1">photo description</th>
							<th class="head0">photo operation</th>

						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${sessionScope.lsgallerysearch}" var="row">
							<tr class="gradeX">
								<td align="center"><span class="center"> <input
										type="checkbox" />
								</span></td>
								<td>${row.galleryid}</td>
								<td>${row.photoname}</td>
								<td><img src="../images/${row.photo}" height="80"
									width="150"></img></td>

								<td>${row.categoryid}</td>
								<td>${row.subcategoryid}</td>
								<td>${row.photodes}</td>
								<td><a
									href="<%=request.getContextPath() %>/galleryController?id=${row.galleryid}&flag=edit">edit</a>
									&nbsp;/&nbsp; <a
									href="<%=request.getContextPath() %>/galleryController?id=${row.galleryid}&flag=delete">delete</a>/<a
									href="addimagetogal.jsp?id=${row.galleryid}"></a></td>



							</tr>
						</c:forEach>
					</tbody>

				</table>



			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->


	</div>
	<!--bodywrapper-->

</body>
</html>