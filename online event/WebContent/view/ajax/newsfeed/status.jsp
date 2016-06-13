<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Status</title>
</head>
<body>
<ul>
<li>
	<div class="updatethumb"><img src="../images/thumbs/avatar15.png" alt="" /></div>
	<div class="updatecontent">
		<div class="top">
			<a href="" class="user">Juan Dela Cruz</a> - <a href="">0 Comment</a> - 
			<a href="">Share</a> - <a href="">Report</a> - <span>Just now</span>
		</div><!--top-->
		<div class="text">
			<%
				String s=request.getParameter("txt");
				out.println(s);
			%>
			
					</div><!--text-->
	</div><!--updatecontent-->
</li>
</ul>
</body>
</html>