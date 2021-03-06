<html>
<head>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/dashboard.js"></script>
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
                    	
                        
                        <li><a href="signout.jsp">Sign Out</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>HOME</a></li>
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
               		<li><a href="<%=request.getContextPath() %>/galleryController">ADD GALLERY</a></li>
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
              <li><a href="#formInvitationCard" class="editor">INVITATION CARD</a>
            	<span class="arrow"></span>
            	<ul id="formInvitationCard">
               		<li><a href="<%=request.getContextPath() %>/invitationCardController">ADD INVITATION CARD</a></li>
                    <li><a href="searchInvitationCard.jsp">MANAGE INVITATION CARD
                    </a></li>
                   
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
            
            
         
        	           
        </div><!--leftmenu-->
</body>    
</html>