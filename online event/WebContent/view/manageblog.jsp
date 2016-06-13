<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Blog</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/blog.js"></script>
</head>
<body class="withvernav">

<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">EVENT<span>PLANNER</span></h1>
            <span class="slogan"></span>
            
            <div class="search">
            	<form action="" method="post">
                	
                   
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<div class="notification">
               
        	</div>
            <div class="userinfo">
            	
                <span>Welcome Admin</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	
                    <div class="changetheme">
                    	Change theme: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Admin</h4>
                    
                    <ul>
                    	
                        
                        <li><a href="index.jsp">Sign Out</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>Home</a></li>
        	  <li><a href="manageblog.jsp"><span class="icon icon-pencil"></span>Manage Blog</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>Messages</a></li>
        	
            <li><a href="manageblog.jsp"></a></li>
            <li><a href="messages.jsp"></span></a></li>
            <li><a href="reports.jsp"></span></a></li>
        </ul>
        
       
        
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
    		<li><a href="#formcat" class="editor">CATEGORY</a>
            	<span class="arrow"></span>
            	<ul id="formcat">
               		<li><a href="addcategory.jsp">ADD CATEGORY</a></li>
                    <li><a href="searchcategory.jsp">MANAGE CATEGORY</a></li>
                  
                </ul>
            </li>
            <li><a href="#formsub" class="editor">SUBCATEGORY</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="<%=request.getContextPath() %>/subcategoryController?id=fetch">ADD SUBCATEGORY</a></li>
                    <li><a href="searchsubcategory.jsp">MANAGE SUBCATEGORY</a></li>
                    
                </ul>
            </li>
            <li><a href="#formpack" class="editor">PACKAGE</a>
            	<span class="arrow"></span>
            	<ul id="formpack">
               		<li><a href="<%=request.getContextPath() %>/packageController">ADD PACKAGE</a></li>
                    <li><a href="searchpackage.jsp">MANAGE PACKAGE</a></li>
                    
                </ul>
            </li>
             
			<li><a href="#formhotel" class="editor">HOTEL</a>
            	<span class="arrow"></span>
            	<ul id="formhotel">
               		<li><a href="<%=request.getContextPath() %>/hotelController">ADD HOTEL</a></li>
                    <li><a href="searchhotel.jsp">MANAGE HOTEL</a></li>
                    
                </ul>
            </li>
            <li><a href="#formfoodcat" class="editor">FOOD CATEGORY</a>
            	<span class="arrow"></span>
            	<ul id="formfoodcat">
               		<li><a href="addfoodcat.jsp">ADD FOOD CATEGORY</a></li>
                    <li><a href="searchfoodCat.jsp">MANAGE CATEGORY</a></li>
                    
                </ul>
            </li>
            <li><a href="#formfoodsubcat" class="editor">FOOD SUBCATEGORY</a>
            	<span class="arrow"></span>
            	<ul id="formfoodsubcat">
               		<li><a href="<%=request.getContextPath() %>/foodsubcatController">ADD FOOD SUBCATEGORY</a></li>
                    <li><a href="searchfoodsubcat.jsp">MANAGE FOOD SUBCATEGORY</a></li>
                    
                </ul>
            </li>
            
            <li><a href="#formfooditm" class="editor">FOOD ITEMS</a>
            	<span class="arrow"></span>
            	<ul id="formfooditm">
               		<li><a href="<%=request.getContextPath() %>/fooditemController">ADD FOOD ITEM</a></li>
                    <li><a href="searchfooditm.jsp">MANAGE FOOD ITEM</a></li>
                    
                </ul>
            </li>
            <li><a href="#formgallery" class="editor">GALLERY</a>
            	<span class="arrow"></span>
            	<ul id="formgallery">
               		<li><a href="addgallery.jsp">ADD GALLERY</a></li>
                    <li><a href="searchgallery.jsp">MANAGE GALLERY</a></li>
                    
                </ul>
            </li>
             <li><a href="#formscheme" class="editor">SCHEME</a>
            	<span class="arrow"></span>
            	<ul id="formscheme">
               		<li><a href="<%=request.getContextPath() %>/schemeController">ADD SCHEME</a></li>
                    <li><a href="searchscheme.jsp">MANAGE SCHEME</a></li>
                   
                </ul>
            </li>
            
            <li><a href="#formcountry" class="editor">COUNTRY</a>
            	<span class="arrow"></span>
            	<ul id="formcountry">
               		<li><a href="addcountry.jsp">ADD COUNTRY</a></li>
                    <li><a href="searchcountry.jsp">MANAGE COUNTRY</a></li>
                    
                </ul>
            </li>
            <li><a href="#formstate" class="editor">STATE</a>
            	<span class="arrow"></span>
            	<ul id="formstate">
               		<li><a href="<%=request.getContextPath() %>/stateController">ADD STATE</a></li>
                    <li><a href="searchstate.jsp">MANAGE STATE</a></li>
                    
                </ul>
            </li>
            <li><a href="#formcity" class="editor">CITY</a>
            	<span class="arrow"></span>
            	<ul id="formcity">
               		<li><a href="<%=request.getContextPath() %>/cityController">ADD CITY</a></li>
                    <li><a href="searchcity.jsp">MANAGE CITY</a></li>
                    
                </ul>
            </li>
            
            
          <!--  
        	            <li><a href="filemanager.jsp" class="gallery">File Manager</a></li>
            <li><a href="elements.jsp" class="elements">Elements</a></li>
            <li><a href="widgets.jsp" class="widgets">Widgets</a></li>
            <li><a href="calendar.jsp" class="calendar">Calendar</a></li>
            <li><a href="support.jsp" class="support">Customer Support</a></li>
            <li><a href="typography.jsp" class="typo">Typography</a></li>
            <li><a href="tables.jsp" class="tables">Tables</a></li>
			<li><a href="buttons.jsp" class="buttons">Buttons &amp; Icons</a></li>
            <li><a href="#error" class="error">Error Pages</a>
            	<span class="arrow"></span>
            	<ul id="error">
               		<li><a href="notfound.jsp">Page Not Found</a></li>
                    <li><a href="forbidden.jsp">Forbidden Page</a></li>
                    <li><a href="internal.jsp">Internal Server Error</a></li>
                    <li><a href="offline.jsp">Offline</a></li>
                </ul>
            </li>
            <li><a href="#addons" class="addons">Addons</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="newsfeed.jsp">News Feed</a></li>
                    <li><a href="profile.jsp">Profile Page</a></li>
                    <li><a href="productlist.jsp">Product List</a></li>
                    <li><a href="photo.jsp">Photo/Video Sharing</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="invoice.jsp">Invoice</a></li>
                </ul>
            </li>-->
        </ul>
          <a class="togglemenu"></a>
        <br /><br />
            </div><!--leftmenu-->
    
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Manage Blog</h1>
            <span class="pagedesc">The content below are loaded using ajax</span>
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="ajax/blog/allposts.jsp">All Post (5)</a></li>
                <li><a href="<%=request.getContextPath() %>/manageController">Published (5)</a></li>
                
                <li><a href="ajax/blog/draft.jsp">Draft (3)</a></li>
                <li><a href="ajax/blog/trash.jsp">Trash (1)</a></li>
            </ul>
        </div><!--pageheader--><!-- "ajax/blog/published.jsp" -->
        
        <div id="contentwrapper" class="contentwrapper">
             
        </div><!--contentwrapper-->
    
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>