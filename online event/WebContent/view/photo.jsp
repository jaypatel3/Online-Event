<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Photo/Video Sharing</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){
	
	
	///// DROP DOWN BUTTON /////
	jQuery('.dropdown').each(function(){
		var t = jQuery(this);
		t.find('a.dropdown_label').click(function(){
			if(!t.hasClass('open')) {
				var h = t.height();
				t.find('ul').show().css({top: h+2+'px'});	
				t.addClass('open');
			} else {
				t.find('ul').hide();	
				t.removeClass('open');				   
			}
			return false;
		});
		
	});
	
	jQuery(document).click(function(){
		jQuery('.dropdown').removeClass('open').find('ul').hide();
	});
	

	
	

});
</script>
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
                    <li><a href="profile.jsp">Profile Page</a></li>
                    <li><a href="productlist.jsp">Product List</a></li>
                    <li class="current"><a href="photo.jsp">Photo/Video Sharing</a></li>
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
            <h1 class="pagetitle">Photo/Video Sharing</h1>
            <span class="pagedesc">This is a sample description of a page</span>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper nopadding">
        	<div class="photosharing_head">
            	<ul class="photosharing_menu">
                    <li><a class="prev prev_disabled"></a></li>
                    <li><a class="next"></a></li>
                    <li class="marginleft5 dropdown" id="actions">
                        <a class="dropdown_label" href="#actions">
                        Actions
                        <span class="arrow"></span>
                        </a>
                        <ul>
                            <li><a href="">Add to Group</a></li>
                            <li><a href="">Edit Photo</a></li>
                            <li><a href="">View Exif Info</a></li>
                            <li><a href="">Share</a></li>
                        </ul>
                    </li>
                    <li class="marginleft5 viewfilebtn"><a class="viewsizes">View All Sizes</a></li>
                    <li class="marginleft5 trashbtn"><a class="trash" title="Trash"></a></li>
                </ul>
                <span class="clearall"></span>
            </div><!--photosharing_head-->
            
            
            <div class="two_third photosharing_wrapper">
            	<div class="photopreview">
                	<a href=""><img src="../images/preview/themepixels1.jpg" alt="" /></a>
                </div>
                <br />
                <h2>An Ant</h2>
                <div class="desc">
                	<p>Even kings and emperors with heaps of wealth and vast dominion cannot compare with an ant filled with the love of God.</p>
                </div>
                
				<div class="contenttitle2">
                	<h3>Comments</h3>
                </div><!--contenttitle-->
                
                 <ul class="commentlist nomargin">
                    <li>
                        <div class="comment_authorimg"><img src="../images/thumbs/avatar5.png" alt="" /></div>
                        <div class="commentcontent">
                            <div class="top">
                                <a href="" class="user">Hiccup</a> - <a href="">Report</a> - <span>1 hour ago</span>
                            </div><!--top-->
                            <div class="text">Everything we know about you guys is wrong. </div><!--text-->
                         </div><!--updatecontent-->
                    </li>
                    <li>
                        <div class="comment_authorimg"><img src="../images/thumbs/avatar5.png" alt="" /></div>
                        <div class="commentcontent">
                            <div class="top">
                                <a href="" class="user">Hiccup</a> - <a href="">Report</a> - <span>1 hour ago</span>
                            </div><!--top-->
                            <div class="text">Then something crazy...! </div><!--text-->
                         </div><!--updatecontent-->
                    </li>
                 </ul>

                <div class="sharing_commentform">
                    <form action="" method="post">
                        <div class="comment_authorimg"><img src="../images/thumbs/avatar14.png" alt="" /></div>
                        <div class="commentcontent" style="padding-right: 12px;">
                            <input type="text" name="" value="Type your comment and press enter to submit" onclick="this.value=''" />
                        </div><!--updatecontent-->
                    </form>
                </div><!--commentform-->       
                
                         
            </div><!--photosharing_wrapper-->
            
            <div class="one_third last ps_sidebar">
            	<div class="ps_author">
                	<span class="thumb"><img alt="" src="../images/thumbs/avatar5.png" /></span>
                </div><!--ps_author-->
                <div class="ps_authorinfo">
                	<a href="">Hiccup Haddock III</a> <br />
                    <small>Added: June 14, 2012 3:45pm</small>
                </div><!--ps_authorinfo-->
                
                <div class="viewinfo">
                	<span class="numviews"> 2,212 views</span>
                    <span class="numcomments"> 78 comments</span>
                </div><!--viewinfo-->
                
				<div class="contenttitle2">
                	<h3>More from this user</h3>
                </div><!--contenttitle-->
                
                <ul class="morephotolist">
                	<li><a href=""><img src="../images/thumbs/image1.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image2.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image3.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image4.png" alt="" /></a></li>	
                </ul><!--morephotolist-->
                
                <br clear="all" />
                
				<div class="contenttitle2">
                	<h3>Related Photos</h3>
                </div><!--contenttitle-->
                
                <ul class="morephotolist">
                	<li><a href=""><img src="../images/thumbs/image5.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image6.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image2.png" alt="" /></a></li>	
                    <li><a href=""><img src="../images/thumbs/image1.png" alt="" /></a></li>	
                </ul><!--morephotolist-->
                
                <br clear="all" />
                
                <div class="contenttitle2">
                	<h3>Tags</h3>
                </div><!--contenttitle-->
                
                <ul class="morephotolist">
                	<li><a href="">Cat</a></li>	
                    <li><a href="">Ancient</a></li>	
                    <li><a href="">Crayon</a></li>	
                    <li><a href="">Egg</a></li>	
                </ul><!--morephotolist-->

            </div><!--ps_sidebar-->
            
        </div><!--contentwrapper-->
                
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>