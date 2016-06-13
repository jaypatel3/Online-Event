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
<script>
function ChangeCountry(ddl) {
		    // get the form values
		    //var abc = $(ddl).val();
		 //   alert("hiii");
		 $ = jQuery.noConflict();
		    if($("#category").val() != '0' )
		    	{
		   			
				   // $.showprogress('Please wait', 'Loading...', '<img src="../../img/loadingfinal.gif">');
		   			$.ajax({
				    
		   			type: "POST",
				    url: "<%=request.getContextPath()%>/galleryController",
				    data: "country_id=" + $("#category").val(),
				    
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

</head>
<body class="withvernav">
<jsp:include page="head.jsp"></jsp:include>
<div class="bodywrapper">
     <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Gallery</h1>
            
            <ul class="hornav">
                
                <li class="current"><a>ADD GALLERY</a></li>
            </ul>
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        
                    <div id="validation" class="subcontent" >
            	
                    <form id="form1" class="stdform" method="post" action="<%=request.getContextPath() %>/galleryController">
                    	<c:if test="${sessionScope.hdnflag}==null">
                    <input type="hidden" name="flag" value="insert"/>
                 </c:if>
                     <input type="hidden" value="${sessionScope.hdnflag}" name="flag" />
                                        <input type="hidden" value="${sessionScope.galleryobj.galleryid}" name="id" />
                    	
                    	<p>
                        	<label>Category</label>
                            <span class="field">
                            <select name="category" id="category" onchange="ChangeCountry(this)">
                            	<option value="">Choose One</option>
                            	<c:forEach items="${sessionScope.category}" var="cat">
                                 <c:choose>
                                	<c:when test="${cat.id==sessionScope.galleryobj.categoryid}">
                                <option selected="selected" value="${cat.id}">${cat.catName}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${cat.id}">${cat.catName}</option>
                                </c:otherwise>
                                </c:choose>
                                
                                 </c:forEach>
                                
                            </select>
                            </span>
                        </p>
                        <p>
                        	<label>SubCategory</label>
                            <span class="field">
                            <div id="stateID">
                            <select name="subcategory" id="subcategory">
                            	<option value="">Choose One</option>
                           <c:forEach items="${sessionScope.subcategory}" var="subcat">
                                 <c:choose>
                                	<c:when test="${subcat.subcatid==sessionScope.galleryobj.subcategoryid}">
                                <option selected="selected" value="${subcat.subcatid}">${subcat.subcategoryname}</option>
                                </c:when>
                                <c:otherwise>
                                <option value="${subcat.subcatid}">${subcat.subcategoryname}</option>
                                </c:otherwise>
                                </c:choose>
                                
                                 </c:forEach>
                              </select>
                              </div>
                            </span>
                        </p>
                    	<p>
                        	<label>Photo Name</label>
                            <span class="field"><input type="text" name="photoname" id="photoname" class="longinput" value="${sessionScope.galleryobj.photoname}" /></span>
                        </p>
                       
                         <p>
                        	<label>Upload Photo</label>
                            <span class="field">
                            	<%
                            if(session.getAttribute("hdnflag") != null && session.getAttribute("hdnflag").toString().equals("update"))  {
                            	%>
                            	<iframe src="../view/pic.jsp?pic=${sessionScope.galleryobj.photo}" style="height: 300px;width: 400px"></iframe>
                            	<%
                            } else {
                            %>
                               
                              <iframe src="../view/pic.jsp" style="height: 300px;width: 400px"></iframe>
                                <% } %>
                                                               
                            </span>
                        </p>
                        <p>
                        	<label>Description</label>
                            <span class="field"><textarea cols="80" rows="5" name="photodes" class="mediuminput" id="photodes">${sessionScope.galleryobj.photodes}</textarea></span> 
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