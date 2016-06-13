<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
</head>
<body class="withvernav">
<jsp:include page="head.jsp"></jsp:include>
<div class="bodywrapper">
    
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Hotel</h1>
            
            <ul class="hornav">
                
                <li class="current"><a>ADD HOTEL</a></li>
            </ul>
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        
                    <div id="validation" class="subcontent" >
            	
                    <form id="form1" class="stdform" method="post" action="<%=request.getContextPath()%>/hotelController">
                    <c:if test="${sessionScope.hdnflag}==null">
                    
                 </c:if>
                     <input type="hidden" value="${sessionScope.hdnflag}" name="flag" />
                       <input type="hidden" value="${sessionScope.hotelobj.hotelid}" name="id" />
                    	<p>
                        	<label>Hotel Name</label>
                            <span class="field"><input type="text" name="hotelname" id="hotelname" class="longinput"   value="${sessionScope.hotelobj.hotelname}"/></span>
                        </p>
                        <p>
                        	<label>Address1</label>
                            <span class="field"><textarea cols="80" rows="5" name="address1" class="mediuminput" id="address/">${sessionScope.hotelobj.hoteladdress1}</textarea></span> 
                        </p>
                        <p>
                        	<label>Address2</label>
                            <span class="field"><textarea cols="80" rows="5" name="address2" class="mediuminput" id="address2">${sessionScope.hotelobj.hoteladdress2}</textarea></span> 
                        </p>
                        <p>
                        	<label>Country</label>
                            <span class="field"> 
                            
                            <select name="countryid" id="countryid" onchange="ChangeCountry(this)">
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
                           
                            </span>
                        </p>
                        <p>
                        	<label>State</label>
                            <span class="field">
                            <div id="stateID">
                            <select name="stateid" id="stateid"  onchange="changestate(this)">
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
                            </span>
                        </p>
                         <p>
                        	<label>City</label>
                            <span class="field">
                            <div id="cityID">
                            <select name="cityid" id="cityid">
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
                            </span>
                        </p>
                        
                    	
                      
                        <p>
                        	<label>Email</label>
                            <span class="field"><input type="text" name="email" id="email" class="longinput" value="${sessionScope.hotelobj.email}"/></span>
                        </p>
                        
                    	<p>
                        	<label>Phone no1</label>
                            <span class="field"><input type="text" name="phone1" id="phone1" class="longinput"  value="${sessionScope.hotelobj.phone1}"/></span>
                        </p>
                        <p>
                        	<label>Phone no2</label>
                            <span class="field"><input type="text" name="phone2" id="phone2" class="longinput"  value="${sessionScope.hotelobj.phone2}" /></span>
                        </p>
                        <p>
                        	<label>Fax</label>
                            <span class="field"><input type="text" name="fax" id="fax" class="longinput"   value="${sessionScope.hotelobj.fax}"/></span>
                        </p>
                        <p>
                        	<label>Upload Hotel Photo</label>
                            <span class="field">
                             <%
                            if(session.getAttribute("hdnflag") != null && session.getAttribute("hdnflag").toString().equals("update"))  {
                            	%>
                            	<iframe src="../view/pic.jsp?pic=${sessionScope.hotelobj.hotelPhoto}" style="height: 300px;width: 400px"></iframe>
                            	<%
                            } else {
                            %>
                               
                              <iframe src="../view/pic.jsp" style="height: 300px;width: 400px"></iframe>
                                <% } %>
                                                               
                            	
                            </span>
                        </p>
                        <p>
                        	<label>Description</label>
                            <span class="field"><textarea cols="80" rows="5" name="hoteldescription" class="mediuminput" id="hoteldescription">${sessionScope.hotelobj.hoteldescription}</textarea></span> 
                        </p>
                        
                        
                        
                        <br />
                        
                        <input type="hidden" name="insertflag" value="insert"/>
                        <p class="stdformbutton">
                        	
                        	<button class="submit radius2" type="submit" >save</button>
                        </p>
                    </form>

            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>