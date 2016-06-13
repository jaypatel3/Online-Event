<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Widgets</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/widgets.js"></script>
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
            <li class="current"><a href="widgets.jsp" class="widgets">Widgets</a></li>
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
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">Widgets</h1>
            <span class="pagedesc">This is a sample description of a page</span>
            
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper widgetpage">
        
                    
                    <div class="one_half">
                    
                    	<div class="widgetbox">
                        	<div class="title"><h3>Content Slider</h3></div>
                            <div class="widgetcontent">
                            	<ul id="slidercontent">
                                  <li>
                                  	<div class="slide_wrap">
                                  	<div class="slide_img"><img src="../images/thumbs/image1.png" alt="" /></div>
                                    <div class="slide_content">
                                    	<h4><a href="">Why Won't My Cat Eat?</a></h4>
                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                    </div>
                                    </div>
                                  </li>
                                  <li>
                                  	<div class="slide_wrap">
                                  	<div class="slide_img"><img src="../images/thumbs/image2.png" alt="" /></div>
                                    <div class="slide_content">
                                    	<h4><a href="">We Are About Color</a></h4>
                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                    </div>
                                    </div>
                                  </li>
                                  <li>
                                  	<div class="slide_wrap">
                                  	<div class="slide_img"><img src="../images/thumbs/image3.png" alt="" /></div>
                                    <div class="slide_content">
                                    	<h4><a href="">Ancient Technology</a></h4>
                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                    </div>
                                    </div>
                                  </li>
                                  <li>
                                  	<div class="slide_wrap">
                                  	<div class="slide_img"><img src="../images/thumbs/image4.png" alt="" /></div>
                                    <div class="slide_content">
                                    	<h4><a href="">Bird's Nest Soup</a></h4>
                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                    </div>
                                    </div>
                                  </li>
                                </ul>
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                    
                        <div class="widgetbox">
                            <div class="title"><h3>Statements</h3></div>
                            <div class="widgetcontent padding0 statement">
                               <table cellpadding="0" cellspacing="0" border="0" class="stdtable">
                                    <colgroup>
                                        <col class="con0" />
                                        <col class="con1" />
                                        <col class="con0" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="head0">Date</th>
                                            <th class="head1">Sales</th>
                                            <th class="head0">Earnings</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>01/12/12</td>
                                            <td>10</td>
                                            <td>$250.12</td>
                                        </tr>
                                        <tr>
                                            <td>01/11/12</td>
                                            <td>5</td>
                                            <td>$100.43</td>
                                        </tr>
                                        <tr>
                                            <td>01/10/12</td>
                                            <td>22</td>
                                            <td>$1010.00</td>
                                        </tr>
                                        <tr>
                                            <td>01/09/12</td>
                                            <td>21</td>
                                            <td>$1000.23</td>
                                        </tr>
                                        <tr>
                                            <td>01/08/12</td>
                                            <td>14</td>
                                            <td>$500.22</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                        
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Event Calendar</h3></div>
                            <div class="widgetcontent">
                                <div id="datepicker"></div>
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                        
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Widget with Head Buttons</h3></div>
                            <div class="widgetoptions">
                                <div class="right"><a href="">View All Users</a></div>
                                <a href="">Add User</a>
                            </div>
                            <div class="widgetcontent userlistwidget nopadding">
                                <ul>
                                    <li>
                                        <div class="avatar"><img src="../images/thumbs/avatar1.png" alt="" /></div>
                                        <div class="info">
                                            <a href="">Squint</a> <br />
                                            Front-End Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img src="../images/thumbs/avatar2.png" alt="" /></div>
                                        <div class="info">
                                            <a href="">Eunice</a> <br />
                                            Architectural Designer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img src="../images/thumbs/avatar1.png" alt="" /></div>
                                        <div class="info">
                                            <a href="">Captain Gutt</a> <br />
                                            Software Engineer <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                    <li>
                                        <div class="avatar"><img src="../images/thumbs/avatar2.png" alt="" /></div>
                                        <div class="info">
                                            <a href="">Flynn</a> <br />
                                            Accounting Manager <br /> 18 minutes ago
                                        </div><!--info-->
                                    </li>
                                </ul>
                                <a href="" class="more">View More Users</a>
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                            
                    </div><!--one_half-->
                    
                    
                    <div class="one_half last">
                    
                    	<div class="widgetbox">
                        	<div class="title"><h3>Slim Scroll</h3></div>
                            <div class="widgetcontent">
                                <div id="scroll1" class="mousescroll">
                                        <ul class="entrylist">
                                              <li>
                                                <div class="entry_wrap">
                                                    <div class="entry_img"><img src="../images/thumbs/image1.png" alt="" /></div>
                                                    <div class="entry_content">
                                                        <h4><a href="">Why Won't My Cat Eat?</a></h4>
                                                        <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                        <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                        <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                    </div>
                                                </div>
                                              </li>
                                              <li class="even">
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="../images/thumbs/image2.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">We Are About Color</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                              <li>
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="../images/thumbs/image3.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">Ancient Technology</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                              <li class="even">
                                                <div class="entry_wrap">
                                                <div class="entry_img"><img src="../images/thumbs/image4.png" alt="" /></div>
                                                <div class="entry_content">
                                                    <h4><a href="">Bird's Nest Soup</a></h4>
                                                    <small>Submitted by: <a href=""><strong>Hiccup</strong></a> - June 10, 2012</small>
                                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non...</p>
                                                    <p><button class="stdbtn btn_lime">Approve</button> <button class="stdbtn">Decline</button></p>
                                                </div>
                                                </div>
                                              </li>
                                            </ul>                        
                                </div><!--#scroll1-->
                            </div><!--widgetcontent-->
                        </div>
                    
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Tabbed Widget</h3></div>
                            <div class="widgetcontent">
                                <div id="tabs">
                                    <ul>
                                        <li><a href="#tabs-1">Products</a></li>
                                        <li><a href="#tabs-2">Posts</a></li>
                                        <li><a href="#tabs-3">Media</a></li>
                                    </ul>
                                    <div id="tabs-1">
                                        <ul class="listthumb">
                                            <li><img src="../images/thumb/small/thumb1.png" alt="" /> <a href="">Proin elit arcu, rutrum commodo</a></li>
                                            <li><img src="../images/thumb/small/thumb2.png" alt="" /> <a href="">Aenean tempor ullamcorper leo</a></li>
                                            <li><img src="../images/thumb/small/thumb3.png" alt="" /> <a href="">Vehicula tempus, commodo a, risus</a></li>
                                            <li><img src="../images/thumb/small/thumb4.png" alt="" /> <a href="">Donec sollicitudin mi sit amet mauris</a></li>
                                            <li><img src="../images/thumb/small/thumb5.png" alt="" /> <a href="">Curabitur nec arcu</a></li>
                                        </ul>
                                    </div>
                                    <div id="tabs-2">
                                        <ul>
                                            <li><a href="">Proin elit arcu, rutrum commodo</a></li>
                                            <li><a href="">Aenean tempor ullamcorper leo</a></li>
                                            <li><a href="">Vehicula tempus, commodo a, risus</a></li>
                                            <li><a href="">Donec sollicitudin mi sit amet mauris</a></li>
                                            <li><a href="">Curabitur nec arcu</a></li>
                                        </ul>
                                    </div>
                                    <div id="tabs-3">
                                        <ul class="thumb">
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb1.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb2.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb3.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb4.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb5.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb6.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb7.png" alt="" /></a></li>
                                            <li><a href="#"><img src="../images/thumb/xsmall/thumb8.png" alt="" /></a></li>
                                        </ul>     
                                    </div>
                                </div><!--#tabs-->
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                        
                        <div class="widgetbox">
                            <div class="title"><h3>Accordion</h3></div>
                            <div class="widgetcontent">
                                <div id="accordion" class="accordion">
                                    <h3><a href="#">Section 1</a></h3>
                                    <div>
                                        <p>
                                        Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                                        ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                                        amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                                        odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 2</a></h3>
                                    <div>
                                        <p>
                                        Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                                        purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                                        velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                                        suscipit faucibus urna.
                                        </p>
                                    </div>
                                    <h3><a href="#">Section 3</a></h3>
                                    <div>
                                        <p>
                                        Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                                        Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                                        ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                                        lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                                        </p>
                                        <ul class="margin1020">
                                            <li>List item one</li>
                                            <li>List item two</li>
                                            <li>List item three</li>
                                        </ul>
                                    </div>
                                    <h3><a href="#">Section 4</a></h3>
                                    <div>
                                        <p>
                                        Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                                        et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                                        faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                                        mauris vel est.
                                        </p>
                                        <p>
                                        Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                                        inceptos himenaeos.
                                        </p>
                                    </div>
                                </div>     
                              </div> <!--widgetcontent-->
                         </div><!--widgetbox-->      
                         
                        <div class="widgetbox">
                            <div class="title"><h3>Recent Activity</h3></div>
                            <div class="widgetcontent">
                                <ul class="recent_list">
                                    <li class="user new">
                                        <div class="msg">
                                            <a href="">Justin Meller</a> added <a href="">John Doe</a> as Admin.
                                        </div>
                                    </li>
                                    <li class="call new">
                                        <div class="msg">
                                            You missed a call from <a href="">Porfirio</a>
                                        </div>
                                    </li>
                                    <li class="calendar new">
                                        <div class="msg">
                                            <a href="">Katherine Kate</a> invited you in an event <a href="">Rock Party</a>.
                                        </div>
                                    </li>
                                    <li class="settings">
                                        <div class="msg">
                                            <a href="">Jane Doe</a> updated her profile.
                                        </div>
                                    </li>
                                    <li class="user">
                                        <div class="msg">
                                            <a href="">Jet Lee</a> is now following you.
                                        </div>
                                    </li>
                                </ul>
                                <div class="msgmore"><a href="">View All Activities</a></div>
                            </div><!--widgetcontent-->
                        </div><!--widgetbox-->
                    
                    </div><!--one_half last-->
                            
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>