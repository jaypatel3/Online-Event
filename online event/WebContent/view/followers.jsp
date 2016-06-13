<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Followers</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.autogrow-textarea.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/profile.js"></script>
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
            
            <div class="userinfodrop">            	<div class="avatar">
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
            <li class="current"><a href="#addons" class="addons">Addons</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="newsfeed.jsp">News Feed</a></li>
                    <li class="current"><a href="profile.jsp">Profile Page</a></li>
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
    
        <div class="pageheader">
        	<span class="profilepic"><img src="../images/thumbs/avatarbig.png" alt="" /></span>
            <div class="profiletitle">
            <h1 class="pagetitle">Juan Dela Cruz</h1>
            <span class="pagedesc">Front-End Engineer / UI Designer</span>
            </div>
            <ul class="hornav">
                <li class="current"><a href="#profile">Profile</a></li>
                <li><a href="#editprofile">Edit Profile</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        
        	<div class="profile_wrapper">
                <div id="profile" class="subcontent">
                    <button id="followbtn" class="stdbtn btn_yellow followbtn">Follow</button>
                    <ul class="profile_summary">
                        <li class="current"><a href="followers.jsp"><span>15</span> Followers</a></li>
                        <li><a href="" id="following"><span>20</span> Following</a></li>
                        <li><a href="blog.jsp"><span>2</span> Blog</a></li>
                        <li><a href=""><span>8</span> Project Shots</a></li>
                    </ul>                    
                    
                    <br clear="all" /><br />
                    
                    <div class="contenttitle2">
                        <h3>Followers</h3>
                    </div><!--contenttitle-->
                    
					
                    <ul class="followerlist">
                    	<li class="one_third">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar5.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Hiccup Haddock III</strong></a>
                                    <small>Softwarer Engineer</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                        <li class="one_third">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar6.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Astrid Hofferson</strong></a>
                                    <small>Systems Analyst</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                        <li class="one_third last">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar7.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Vector</strong></a>
                                    <small>Computer Scientist</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                    	<li class="one_third">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar8.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Puss in Boots</strong></a>
                                    <small>Holywood Actor</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                        <li class="one_third">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar9.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Humpty Dumpty</strong></a>
                                    <small>Visual Designer</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                        <li class="one_third last">
                        	<div class="userfollow">
                            	<a href="" class="th"><img src="../images/thumbs/avatar10.png" alt="" /></a>
                                <div class="cn">
                                	<a href=""><strong>Shrek</strong></a>
                                    <small>Account Manager</small>
                                </div><!--cn-->
                            </div><!--userfollow-->
                        </li>
                    </ul>                    
                    
                </div><!--#profile-->
                
                <div id="editprofile" class="subcontent" style="display: none">
                    Edit profile form goes here...
                </div><!--#editprofile-->
                
                <br /><br />
            </div><!--profile_wrapper-->
            
            <br /><br />
            
        </div><!--contentwrapper-->
                
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>