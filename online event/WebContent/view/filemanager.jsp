<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Manager</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/filemanager.js"></script>
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
            <li class="current"><a href="filemanager.jsp" class="gallery">File Manager</a></li>
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
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">File Manager</h1>
            <span class="pagedesc">To select an item, just click the thumbnail.</span>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper nopadding">
        
        	<div class="filemgr">
            	<div class="filemgr_left">
                	<div class="filemgr_head">
                    	<ul class="filemgr_menu">
                        	<li><a class="prev prev_disabled"></a></li>
                            <li><a class="next"></a></li>
                            <li class="marginleft20"><a class="selectall">Select All</a></li>
                            <li class="marginleft5 viewfilebtn"><a class="preview preview_disabled">View File</a></li>
                            <li class="marginleft20 newfoldbtn"><a class="newfolder" title="Add New Foldr"></a></li>
                            <li class="marginleft5 trashbtn"><a class="trash trash_disabled" title="Trash"></a></li>
                            <li class="marginleft20 filesearch">
                            	<form>
                            		<input type="text" id="filekeyword" class="filekeyword" value="Search file here" />
                                </form>
                            </li>
                            <li class="right newfilebtn"><a href="" class="newfilebutton radius2">Add New File</a></li>
                        </ul>
                        <span class="clearall"></span>
                    </div><!--filemgr_head-->
                    
                    <div class="filemgr_category">
                    	<ul>
                        	<li class="current"><a href="">All</a></li>
                            <li><a href="">Images</a></li>
                            <li><a href="">Video</a></li>
                            <li><a href="">Audio</a></li>
                            <li><a href="">Documents</a></li>
                            <li class="right"><span class="pagenuminfo">Showing 1 - 20 of 69</span></li>
                        </ul>
                    </div><!--filemgr_category-->
                    
                    <div class="filemgr_content">
						
                        <small>
                        	<strong>
                            	<em>Tips: Hold Control key to select multiple items. To view file, select one item and click View File button.</em>
                            </strong>
                        </small>
                        
                        <br /><br />
                    	
                        <ul class="listfile">
                        	<li>
                            	<a class="image" href="../images/preview/image1.png">
                                	<span class="img"><img src="../images/thumbs/image1.png" alt="" /></span>
                                    <span class="filename">Image1.jpg</span></a>
                            </li>
                        	<li>
                            	<a class="image" href="../images/preview/image2.png">
                                	<span class="img"><img src="../images/thumbs/image2.png" alt="" /></span>
                                    <span class="filename">Image2.jpg</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="video" href="assets/movie1.avi">
                                	<span class="doc"><img src="../images/thumbs/video.png" alt="" /></span>
                                    <span class="filename">Movie1.avi</span></a>
                            </li>
                            <li>
                            	<a class="audio" href="assets/audio1.mp3">
                                	<span class="doc"><img src="../images/thumbs/audio.png" alt="" /></span>
                                    <span class="filename">Song1.mp3</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="image" href="../images/preview/image3.png">
                                	<span class="img"><img src="../images/thumbs/image3.png" alt="" /></span>
                                    <span class="filename">Image3.jpg</span></a>
                            </li>
                            <li>
                            	<a class="audio" href="assets/audio1.mp3">
                                	<span class="doc"><img src="../images/thumbs/audio.png" alt="" /></span>
                                    <span class="filename">Song1.mp3</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                        	<li>
                            	<a class="image" href="../images/preview/image5.png">
                                	<span class="img"><img src="../images/thumbs/image5.png" alt="" /></span>
                                    <span class="filename">Image5.jpg</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="video" href="assets/movie1.avi">
                                	<span class="doc"><img src="../images/thumbs/video.png" alt="" /></span>
                                    <span class="filename">Movie1.avi</span></a>
                            </li>
                        	<li>
                            	<a class="image" href="../images/preview/image4.png">
                                	<span class="img"><img src="../images/thumbs/image4.png" alt="" /></span>
                                    <span class="filename">Image4.jpg</span></a>
                            </li>
                            <li>
                            	<a class="audio" href="assets/audio1.mp3">
                                	<span class="doc"><img src="../images/thumbs/audio.png" alt="" /></span>
                                    <span class="filename">Song1.mp3</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                            <li>
                            	<a class="image" href="../images/preview/image6.png">
                                	<span class="img"><img src="../images/thumbs/image6.png" alt="" /></span>
                                    <span class="filename">Image6.jpg</span></a>
                            </li>
                            <li>
                            	<a class="audio" href="assets/audio1.mp3">
                                	<span class="doc"><img src="../images/thumbs/audio.png" alt="" /></span>
                                    <span class="filename">Song1.mp3</span></a>
                            </li>
                            <li>
                            	<a class="doc" href="assets/tutorial1.pdf">
                                	<span class="doc"><img src="../images/thumbs/doc.png" alt="" /></span>
                                    <span class="filename">Tutorial1.pdf</span></a>
                            </li>
                        </ul>
                        
                        <br clear="all" />
                        
                    </div><!--filemgr_content-->
                    
                </div><!--filemgr_left -->
                
                <div class="filemgr_right">
                	<div class="filemgr_rightinner">
                    	<div class="contenttitle2" style="margin-top: 0">
                            <h3>Browse Files</h3>
                        </div><!--contenttitle-->
                        <ul class="menuright">
                        	<li class="current"><a href="">All Files</a></li>
                            <li><a href="">Deleted Files</a></li>
                            <li><a href="">Recently Added</a></li>
                            <li><a href="">Recently Viewed</a></li>
                            <li><a href="">New Folder</a></li>
                            <li><a href="">New Folder(2)</a></li>
                        </ul>
                    </div><!-- filemgr_rightinner -->
                </div><!-- filemgr_right -->
                <br clear="all" />
            </div><!--filemgr-->
        	
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>