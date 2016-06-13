<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.flot.pie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/charts.js"></script>
</head>
<body>

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
    
      
    <div class="contentwrapper">
    
    	<div id="charts" class="subcontent">
    	
            <div class="one_half">
                <div class="contenttitle2">
                    <h3>Simple Chart</h3>
                </div><!--contenttitle-->
                <br />
                <div id="chartplace" style="height:300px;"></div>
            </div><!--one_half-->
            
            <div class="one_half last">            
                <div class="contenttitle2">
                    <h3>Bar Graph</h3>
                </div><!--contenttitle-->
                <br />
                <div id="bargraph" style="height:300px;"></div>
            </div><!--one_half last-->
            
            <br clear="all" /><br />
            
            <div class="one_half">
                <div class="contenttitle2">
                    <h3>Real Time Chart</h3>
                </div><!--contenttitle-->
                <br />
                <div id="realtime" style="height:300px;"></div>
                <br />
                <small>You can update a chart periodically to get a real-time effect by using a timer to insert the new data in the plot and redraw it.</small>
            </div><!--one_half-->
            
            <div class="one_half last">
                <div class="contenttitle2">
                    <h3>Pie Chart</h3>
                </div><!--contenttitle-->
                <br />
                <div id="piechart" style="height: 300px;"></div>
            </div><!--one_half last-->
        
        <br clear="all" />
        
        </div><!--#charts-->
        
        <div id="statistics" class="subcontent">
        	&nbsp;
        </div><!--#statistics-->
        
    </div><!--contentwrapper-->
    
    
</div><!--bodywrapper-->

</body>
</html>