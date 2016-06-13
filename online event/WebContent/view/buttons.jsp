<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buttons</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
</head>
<body class="withvernav">

<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Aman.<span>da</span></h1>
            <span class="slogan">admin template</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<div class="notification">
                <a class="count" href="ajax/notifications.jsp"><span>9</span></a>
        	</div>
            <div class="userinfo">
            	<img src="../images/thumbs/avatar.png" alt="" />
                <span>Juan Dela Cruz</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="../images/thumbs/avatarbig.png" alt="" /></a>
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
                	<h4>Juan Dela Cruz</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.jsp">Edit Profile</a></li>
                        <li><a href="accountsettings.jsp">Account Settings</a></li>
                        <li><a href="help.jsp">Help</a></li>
                        <li><a href="index.jsp">Sign Out</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>Dashboard</a></li>
            <li><a href="manageblog.jsp"><span class="icon icon-pencil"></span>Manage Blog</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>Messages</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>Reports</a></li>
        </ul>
        
        <div class="headerwidget">
        	<div class="earnings">
            	<div class="one_half">
                	<h4>Today's Earnings</h4>
                    <h2>$640.01</h2>
                </div><!--one_half-->
                <div class="one_half last alignright">
                	<h4>Current Rate</h4>
                    <h2>53%</h2>
                </div><!--one_half last-->
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">Forms</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="forms.jsp">Basic Form</a></li>
                    <li><a href="wizard.jsp">Wizard</a></li>
                    <li><a href="editor.jsp">WYSIWYG</a></li>
                </ul>
            </li>
            <li><a href="filemanager.jsp" class="gallery">File Manager</a></li>
            <li><a href="elements.jsp" class="elements">Elements</a></li>
            <li><a href="widgets.jsp" class="widgets">Widgets</a></li>
            <li><a href="calendar.jsp" class="calendar">Calendar</a></li>
            <li><a href="support.jsp" class="support">Customer Support</a></li>
            <li><a href="typography.jsp" class="typo">Typography</a></li>
            <li><a href="tables.jsp" class="tables">Tables</a></li>
			<li class="current"><a href="buttons.jsp" class="buttons">Buttons &amp; Icons</a></li>
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
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">Buttons &amp; Icons</h1>
            <span class="pagedesc">This is a sample description of a page</span>
            
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper lineheight21">
        
        
                   <div class="contenttitle2">
                   		<h3>Icon Buttons With Text</h3>
                   </div><!--contenttitle-->
                   
                   
                   <ul class="buttonlist">
                   		<li><a href="" class="btn btn_search radius50"><span>Search</span></a></li>
                   		<li><a href="" class="btn btn_trash"><span>Trash</span></a></li>
                   		<li><a href="" class="btn btn_flag"><span>Flag</span></a></li>
                   		<li><a href="" class="btn btn_home"><span>Home</span></a></li>
                   		<li><a href="" class="btn btn_link"><span>Link</span></a></li>
                   		<li><a href="" class="btn btn_book"><span>Book</span></a></li>
                   		<li><a href="" class="btn btn_mail"><span>Mail</span></a></li>
                   		<li><a href="" class="btn btn_help"><span>Help</span></a></li>
                   		<li><a href="" class="btn btn_rss"><span>RSS</span></a></li>
                   		<li><a href="" class="btn btn_archive"><span>Archive</span></a></li>
                   		<li><a href="" class="btn btn_info"><span>Info</span></a></li>
                   		<li><a href="" class="btn btn_bell"><span>Bell</span></a></li>
                   		<li><a href="" class="btn btn_world"><span>World</span></a></li>
                   		<li><a href="" class="btn btn_bulb"><span>Bulb</span></a></li>
                   		<li><a href="" class="btn btn_cloud"><span>Cloud</span></a></li>
                    </ul>
                    
                    <p>You can change this to any color you want. Read the documentation on how. Below is an example.</p>
                    
                    <ul class="buttonlist">
                   		<li><a href="" class="btn btn_orange btn_search radius50"><span>Search</span></a></li>
                   		<li><a href="" class="btn btn_orange btn_trash"><span>Trash</span></a></li>
                   		<li><a href="" class="btn btn_orange btn_flag"><span>Flag</span></a></li>
                   		<li><a href="" class="btn btn_orange btn_home"><span>Home</span></a></li>
                   		<li><a href="" class="btn btn_orange btn_link"><span>Link</span></a></li>
                    </ul>
                    
                    <br />
                    
                    <div class="contenttitle2">
                   		<h3>Rounded Buttons With Text</h3>
                   </div><!--contenttitle2-->
                   
                   
                   <ul class="buttonlist">
                   		<li><a href="" class="btn btn2 btn_search"><span>Search</span></a></li>
                   		<li><a href="" class="btn btn2 btn_trash"><span>Trash</span></a></li>
                   		<li><a href="" class="btn btn2 btn_flag"><span>Flag</span></a></li>
                   		<li><a href="" class="btn btn2 btn_home"><span>Home</span></a></li>
                   		<li><a href="" class="btn btn2 btn_link"><span>Link</span></a></li>
                   		<li><a href="" class="btn btn2 btn_book"><span>Book</span></a></li>
                   		<li><a href="" class="btn btn2 btn_mail"><span>Mail</span></a></li>
                   		<li><a href="" class="btn btn2 btn_help"><span>Help</span></a></li>
                   		<li><a href="" class="btn btn2 btn_rss"><span>RSS</span></a></li>
                   		<li><a href="" class="btn btn2 btn_archive"><span>Archive</span></a></li>
                   		<li><a href="" class="btn btn2 btn_info"><span>Info</span></a></li>
                   		<li><a href="" class="btn btn2 btn_bell"><span>Bell</span></a></li>
                   		<li><a href="" class="btn btn2 btn_world"><span>World</span></a></li>
                   		<li><a href="" class="btn btn2 btn_bulb"><span>Bulb</span></a></li>
                   		<li><a href="" class="btn btn2 btn_cloud"><span>Cloud</span></a></li>
                    </ul>
                    
                    <p>You can change this to any color you want. Read the documentation on how. Below is an example.</p>
                    
                    <ul class="buttonlist">
                   		<li><a href="" class="btn btn2 btn_blue btn_search radius50"><span>Search</span></a></li>
                   		<li><a href="" class="btn btn2 btn_blue btn_trash"><span>Trash</span></a></li>
                   		<li><a href="" class="btn btn2 btn_blue btn_flag"><span>Flag</span></a></li>
                   		<li><a href="" class="btn btn2 btn_blue btn_home"><span>Home</span></a></li>
                   		<li><a href="" class="btn btn2 btn_blue btn_link"><span>Link</span></a></li>
                    </ul>

                    
                   <br />
                    
                   <div class="contenttitle2">
                   		<h3>Icon Buttons Without Text</h3>
                   </div><!--contenttitle-->
                   
                   
                   <ul class="buttonlist">
                   		<li><a href="" class="btn btn3 btn_search"></a></li>
                   		<li><a href="" class="btn btn3 btn_trash"></a></li>
                   		<li><a href="" class="btn btn3 btn_flag"></a></li>
                   		<li><a href="" class="btn btn3 btn_home"></a></li>
                   		<li><a href="" class="btn btn3 btn_link"></a></li>
                   		<li><a href="" class="btn btn3 btn_book"></a></li>
                   		<li><a href="" class="btn btn3 btn_mail"></a></li>
                   		<li><a href="" class="btn btn3 btn_help"></a></li>
                   		<li><a href="" class="btn btn3 btn_rss"></a></li>
                   		<li><a href="" class="btn btn3 btn_archive"></a></li>
                   		<li><a href="" class="btn btn3 btn_info"></a></li>
                   		<li><a href="" class="btn btn3 btn_bell"></a></li>
                   		<li><a href="" class="btn btn3 btn_world"></a></li>
                   		<li><a href="" class="btn btn3 btn_bulb"></a></li>
                   		<li><a href="" class="btn btn3 btn_cloud"></a></li>
                    </ul>
                    
                    <p>You can change this to any color you want. Read the documentation on how. Below is an example.</p>
                    
                    <ul class="buttonlist">
                   		<li><a href="" class="btn btn3 btn_black btn_search radius50"></a></li>
                   		<li><a href="" class="btn btn3 btn_black btn_trash"></a></li>
                   		<li><a href="" class="btn btn3 btn_black btn_flag"></a></li>
                   		<li><a href="" class="btn btn3 btn_black btn_home"></a></li>
                   		<li><a href="" class="btn btn3 btn_black btn_link"></a></li>
                    </ul>
                    
                    <br />
                    
                    <div class="contenttitle2">
                   		<h3>Rounded Buttons Without Text</h3>
                   </div><!--contenttitle-->
                   <br />
                   
                   <ul class="buttonlist">
                   		<li><a href="" class="btn btn4 btn_search"></a></li>
                   		<li><a href="" class="btn btn4 btn_trash"></a></li>
                   		<li><a href="" class="btn btn4 btn_flag"></a></li>
                   		<li><a href="" class="btn btn4 btn_home"></a></li>
                   		<li><a href="" class="btn btn4 btn_link"></a></li>
                   		<li><a href="" class="btn btn4 btn_book"></a></li>
                   		<li><a href="" class="btn btn4 btn_mail"></a></li>
                   		<li><a href="" class="btn btn4 btn_help"></a></li>
                   		<li><a href="" class="btn btn4 btn_rss"></a></li>
                   		<li><a href="" class="btn btn4 btn_archive"></a></li>
                   		<li><a href="" class="btn btn4 btn_info"></a></li>
                   		<li><a href="" class="btn btn4 btn_bell"></a></li>
                   		<li><a href="" class="btn btn4 btn_world"></a></li>
                   		<li><a href="" class="btn btn4 btn_bulb"></a></li>
                   		<li><a href="" class="btn btn4 btn_cloud"></a></li>
                    </ul>
                    
                    <p>You can change this to any color you want. Read the documentation on how. Below is an example.</p>
                    
                    <ul class="buttonlist">
                   		<li><a href="" class="btn btn4 btn_yellow btn_search radius50"></a></li>
                   		<li><a href="" class="btn btn4 btn_yellow btn_trash"></a></li>
                   		<li><a href="" class="btn btn4 btn_yellow btn_flag"></a></li>
                   		<li><a href="" class="btn btn4 btn_yellow btn_home"></a></li>
                   		<li><a href="" class="btn btn4 btn_yellow btn_link"></a></li>
                    </ul>

                    
                    <br />
                    
                    <div class="contenttitle2">
                   		<h3>Form Buttons</h3>
                   </div><!--contenttitle-->
                   
                   
                   <ul class="buttonlist">
                   		<li><button class="stdbtn">Form Button</button></li>
                   		<li><button class="stdbtn btn_yellow">Form Button</button></li>
                        <li><button class="stdbtn btn_blue">Form Button</button></li>
                        <li><button class="stdbtn btn_black">Form Button</button></li>
                        <li><button class="stdbtn btn_lime">Form Button</button></li>
                        <li><button class="stdbtn btn_orange">Form Button</button></li>
                        <li><button class="stdbtn btn_red">Form Button</button></li>
                   </ul>
                   
                   <br clear="all" />
                    
                   <div class="contenttitle2">
                    	<h3>Image Loaders</h3>
                   </div><!--contenttitle-->
                   
                    
                    <div class="loaders">
                    	<img src="../images/loaders/loader1.gif" alt="" />
                        <img src="../images/loaders/loader2.gif" alt="" />
                        <img src="../images/loaders/loader3.gif" alt="" />
                        <img src="../images/loaders/loader4.gif" alt="" />
                        <img src="../images/loaders/loader8.gif" alt="" />
                        <img src="../images/loaders/loader9.gif" alt="" />
                        <img src="../images/loaders/loader5.gif" alt="" />
                        <img src="../images/loaders/loader6.gif" alt="" />

                        <img src="../images/loaders/loader7.gif" alt="" />
                        <img src="../images/loaders/loader10.gif" alt="" />
                        <br /><br />
                        <small>You can create your own loader images by going to <a href="ajaxload.info">ajaxload.info</a></small>
                    </div><!--loaders-->
        
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>