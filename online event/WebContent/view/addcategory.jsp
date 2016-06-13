<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forms</title>
<!--  <link rel="stylesheet" href="../css/style.default.css" type="text/css" />
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
            <h1 class="pagetitle">Category</h1>
            
            <ul class="hornav">
                
                <li class="current"><a>ADD CATEGORY</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        	
        	           
            	
                    <form id="form1" class="stdform" method="post" action="<%=request.getContextPath() %>/CategoryController">
                    	<input type="hidden" name="flag" value="${sessionScope.hdnflag}"/>
                    	 <input type="hidden" value="${sessionScope.catobj.id}" name="id" />
                    	<p>
                        	<label>Category Name</label>
                            <span class="field"><input type="text" name="catname" id="catname" class="longinput"  value="${sessionScope.catobj.catName }"/></span>
                        </p>
                        
                        
                        <p>
                        	<label>Description</label>
                            <span class="field"><textarea cols="80" rows="5" name="catdesc" class="mediuminput" id="location">${sessionScope.catobj.catDesc}</textarea></span> 
                        </p>
                        
                       
                        
                        <br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">Save</button>
                        </p>
                    </form>


        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>