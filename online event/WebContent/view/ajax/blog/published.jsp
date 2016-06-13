<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Published</title>
</head>
<body>
<div class="contenttitle">
	<h4>Published Posts</h4>
</div><!--contenttitle-->	
<table cellpadding="0" cellspacing="0" border="0" class="stdtable blogtable">
	<colgroup>
    	<col class="con0" />
        <col class="con1" />
        <col class="con0" />
        <col class="con1" />
        <col class="con0" />
        <col class="con1" />
    </colgroup>
    <thead>
    <tr>
    	<th class="head1">Id</th>
    	<th class="head0">Contact Name</th>
        <th class="head1">Contact Message</th>
        <th class="head0">Contact Email</th>
        <th class="head1"></th>
    </tr>
    </thead>
    <tfoot>
    
    	<tr>
        	<th class="head1 aligncenter"><input type="checkbox" name="checkall" class="checkall2" /></th>
        	<th class="head0">Title</th>
            <th class="head1">Author</th>
            <th class="head0">Categories</th>
            <th class="head1"></th>
        </tr>
    </tfoot>
    <tbody>
    <c:forEach items="${sessionScope.ar }" var="i">
    	<tr>
        	<td class="con1"></td>
        	<td class="con0">${i.contactid }</td>
            <td class="con1">${i.contactname }</td>
            <td class="con0">${i.contactmessage }</td>
            <td class="con1">${i.contactemail }</td>
            <td class="actions aligncenter">
            	<a href="editblog.jsp">Edit</a> <a href="ajax/blog/quickedit.jsp" class="quickview">Quick Edit</a> <a href="">View</a> <a href="" class="delete">Delete</a>
            </td>
        </tr>
        </c:forEach>
	</tbody>
</table>
</body>
</html>