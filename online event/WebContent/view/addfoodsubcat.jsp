<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<script type="text/javascript" src="../js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/forms.js"></script>-->
</head>
<body class="withvernav">
<jsp:include page="head.jsp"></jsp:include>
<div class="bodywrapper">
   
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Food SubCategory</h1>
            
            <ul class="hornav">
                
                <li class="current"><a>ADD FOOD SUBCATEGORY</a></li>
            </ul>
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        
                    <div id="validation" class="subcontent" >
            	
                    <form id="form1" class="stdform" method="post" action="<%=request.getContextPath() %>/foodsubcatController">
                    	<c:if test="${sessionScope.hdnflag}==null">
                    <input type="hidden" name="flag" value="insert"/>
                 </c:if>
                     <input type="hidden" value="${sessionScope.hdnflag}" name="flag" />
                                        <input type="hidden" value="${sessionScope.foodsubcatobj.foodsbubcatid}" name="id" />
                    	
                    	<p>
                        	<label>Food Category</label>
                            <span class="field">
                            <select name="foodcate" id="foodcate">
                            		<option value="">Choose One</option>
                                <c:forEach items="${sessionScope.lsfoodsubcat}" var="foodcat">
                                 <c:choose>
                                	<c:when test="${foodcat.foodcatid==sessionScope.foodsubcatobj.foodsbubcatid}">
                                <option selected="selected" value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${foodcat.foodcatid}">${foodcat.foodcatName}</option>
                                </c:otherwise>
                                </c:choose>
                                 </c:forEach>
                            </select>
                            </span>
                        </p>
                    	<p>
                        	<label>Food SubCategory Name</label>
                            <span class="field"><input type="text" name="foodsubcatname" id="foodsubcatname" class="longinput" value="${sessionScope.foodsubcatobj.foodsubcatname}" /></span>
                        </p>
                        <p>
                        	<label>Description</label>
                            <span class="field"><textarea cols="80" rows="5" name="foodsubcatdes" class="mediuminput" id="foodsubcatdes">${sessionScope.foodsubcatobj.foodsubcatdes}</textarea></span> 
                        </p>
                        
                        
                        
                        <br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">save</button>
                        </p>
                    </form>

            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>