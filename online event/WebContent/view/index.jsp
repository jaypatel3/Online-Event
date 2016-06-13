<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="../css/style.default.css" type="text/css" />
<script type="text/javascript" src="../js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="../js/custom/general.js"></script>
<script type="text/javascript" src="../js/custom/index.js"></script>
<script type="text/javascript" src="../js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/custom/forms.js"></script>
</head>
<body class="loginpage">

	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1><span>EVENT</span>PLANNER</h1>
                
                <h2><span>LOG</span>IN</h2>
            </div><!--logo-->
            
            <br clear="all" /><br />
            
            <div class="nousername">
				<div class="loginmsg">The password you entered is incorrect.</div>
            </div><!--nousername-->
            
            <div class="nopassword">
				<div class="loginmsg">The password you entered is incorrect.</div>
                <div class="loginf">
                    <div class="thumb"><img alt="" src="../images/thumbs/avatar1.png" /></div>
                    <div class="userlogged">
                        <h4></h4>
                        <a href="index.jsp">Not <span></span>?</a> 
                    </div>
                </div><!--loginf-->
            </div><!--nopassword-->
          
                        <form id="login" action="<%=request.getContextPath()%>/indexController" method="post">
            	   <div id="validation" class="subcontent" >
                <div class="username">
                	<div class="usernameinner">
                    	<input type="text" name="username" id="username" />
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<input type="password" name="password" id="password" />
                    </div>
                </div>
                </div>
                <button>Sign In</button>
               
                <div class="keep"><input type="checkbox" /> Keep me logged in</div>
        <div class="keep" align="right"> <a href="forgotpassword.jsp"><h4><b>Forgot Password</b></h4></a></div>
            </form>
            
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->


</body>
</html>