<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/imageupload"  method="post" enctype="multipart/form-data">
<input type="file" name="photo" size="45" /><br />
<input type="submit" value="Upload File" />
</form>
<%
if(request.getParameter("pic") != null)
  {session.setAttribute("name",request.getParameter("pic") );
	//System.out.println(request.getParameter("pic"));
	%>
	<img src="<%=request.getContextPath()+"/images/"%>/<%=request.getParameter("pic") %>" alt="image not found" style="height:220px;width:350px"></img>
	<%  }%>
</body>
</html>