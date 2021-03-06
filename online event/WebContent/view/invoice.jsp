<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
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
                    <li><a href="photo.jsp">Photo/Video Sharing</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li class="current"><a href="invoice.jsp">Invoice</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">Invoice (Client View)</h1>
            <span class="pagedesc">This is a sample description of a page</span>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper invoicewrapper">
        	
          <div class="one_half">
            
              <div class="invoice_logo"><img src="../images/samplelogo.png" alt="" /></div>
              
              <table cellpadding="0" cellspacing="0" class="table invoicefor">
               	  <tr>
                   	  <td width="30%">Invoice For:</td>
                      <td width="70%"><strong>John Doe</strong></td>
                  </tr>
               	  <tr>
               	    <td>Project ID:</td>
               	    <td>HF12-23DFF</td>
           	    </tr>
                	<tr>
                	  <td>Project Name:</td>
                	  <td>Company Website Design</td>
              	  </tr>
              </table>
            </div><!--one_half-->
            
			<div class="one_half last">
            <table cellpadding="0" cellspacing="0" class="table">
               	  <tr>
                   	  <td width="30%">From:</td>
                      <td width="70%">
                      	<strong>ThemePixels, Inc.</strong> <br />
                        201 Something St., Something Town, <br />
                        YT 242, Country 6546 <br />
                        Tel No: 324 445-4544 <br />
                        Email: youremail@companyname.com
                      </td>
                  </tr>
              </table>
           
              <table cellpadding="0" cellspacing="0" class="table invoiceinfo">
               	  <tr>
                   	  <td width="30%">Invoice ID:</td>
                      <td width="70%"><strong>I-2323</strong></td>
                  </tr>
               	  <tr>
               	    <td>Issue Date:</td>
               	    <td><strong>June 23, 2012</strong></td>
           	    </tr>
                	<tr>
                	  <td>Due Date:</td>
                	  <td><strong>November 01, 2012</strong></td>
              	  </tr>
              </table>
            </div><!--one_half-->
            
            <br clear="all" />
            
            <table cellpadding="0" cellspacing="0" border="0" class="stdtable invoicetable">
                    <colgroup>
                        <col class="con0" width="15%" />
                        <col class="con1" width="45%" />
                        <col class="con0" width="5%" />
                        <col class="con1" width="15%" />
                        <col class="con0" width="20%" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="head0">Type</th>
                            <th class="head1">Description</th>
                            <th class="head0 right">Quantity</th>
                            <th class="head1 right">Unit Price</th>
                            <th class="head0 right">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Website Design</td>
                            <td>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae</td>
                            <td class="right">2</td>
                            <td class="right">$150</td>
                            <td class="right"><strong>$300</strong></td>
                        </tr>
                        <tr>
                            <td>Firefox Plugin</td>
                            <td>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</td>
                            <td class="right">1</td>
                            <td class="right">$1,200</td>
                            <td class="right"><strong>$1,2000</strong></td>
                        </tr>
                        <tr>
                            <td>iPhone App</td>
                            <td>Et harum quidem rerum facilis est et expedita distinctio</td>
                            <td class="right">2</td>
                            <td class="right">$850</td>
                            <td class="right"><strong>$1,700</strong></td>
                        </tr>
                        <tr>
                            <td>Android App</td>
                            <td>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut</td>
                            <td class="right">3</td>
                            <td class="right">$850</td>
                            <td class="right"><strong>$2,550</strong></td>
                        </tr>
                        <tr>
                            <td>Wordpress Template</td>
                            <td>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</td>
                            <td class="right">5</td>
                            <td class="right">$50</td>
                            <td class="right"><strong>$250</strong></td>
                        </tr>
                    </tbody>
                </table>
                                
                <table cellpadding="0" cellspacing="0" border="0" class="invoicetable">
                    <colgroup>
                        <col class="con0" width="80%" />
                        <col class="con1" width="20%" />
                  </colgroup>
                    <tbody>
                        <tr>
                            <td class="right" style="border-right: 1px solid #ddd; padding-right: 10px; ">
                            	Subtotal <br />
                                Tax (5%) <br />
                                Discount
                            </td>
                            <td class="right"><strong>$6,000 <br />$600 <br />$50</strong></td>
                        </tr>
                    </tbody>
          </table>
			
          <div class="amountdue">
          	<h1><span>Amount Due:</span> $6,550.00</h1>
            <a href="">Pay Invoice</a>
          </div>
          
          
          <div class="contenttitle2">
          	<h3>Message</h3>
          </div><!--contenttitle-->
          
          <div>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </div>
                                                
      </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>