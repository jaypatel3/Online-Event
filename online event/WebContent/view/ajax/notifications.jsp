<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notifications</title>
</head>
<body>
<ul class="notitab">
	<li class="current"><a href="#messages">Messages (3)</a></li>
    <li><a href="#activities">Activities (6)</a></li>
</ul>
<div id="messages">
    <ul class="msglist">
        <li>
            <a href="messages.jsp">
            	<span class="thumb"><img src="../images/thumbs/avatar1.png" alt="" /></span>
                <span class="msgdetails">
                    <span class="name">John Doe</span>
                    <span class="msg">Lorem ipsum dolor sit amet, consectetur...</span>
                    <span class="time">About an hour ago</span>
                </span><!--msgdetails-->
            </a>
        </li>
        <li>
            <a href="messages.jsp">
            	<span class="thumb"><img src="../images/thumbs/avatar2.png" alt="" /></span>
                <span class="msgdetails">
                    <span class="name">Disidido Mohabal</span>
                    <span class="msg">adipisicing elit, sed do eiusmod tempor...</span>
                    <span class="time">Yesterday</span>
                </span><!--msgdetails-->
            </a>
        </li>
        <li>
            <a href="messages.jsp">
            	<span class="thumb"><img src="../images/thumbs/avatar3.png" alt="" /></span>
                <span class="msgdetails">
                    <span class="name">John Doe</span>
                    <span class="msg">Lorem ipsum dolor sit amet, consectetur...</span>
                    <span class="time">May 20</span>
                </span><!--msgdetails-->
            </a>
        </li>
        <li>
            <a href="messages.jsp">
            	<span class="thumb"><img src="../images/thumbs/avatar4.png" alt="" /></span>
                <span class="msgdetails">
                    <span class="name">Jane Phoebe</span>
                    <span class="msg">adipisicing elit, sed do eiusmod tempor...</span>
                    <span class="time">May 19</span>
                </span><!--msgdetails-->
            </a>
        </li>
    </ul>
	<div class="msgbutton">
    	<a href="">View All Messages</a>
        <a href="">Send a New Messsage</a>
    </div><!--msgbutton-->
</div>

<div id="activities" class="activities" style="display: none">
    <ul class="actlist">
        <li class="user new">
            <div class="msg">
                <a href="">Justin Meller</a> added <a href="">John Doe</a> as Admin.
                <span>About an hour ago</span>
            </div>
        </li>
        <li class="call new">
            <div class="msg">
                You missed a call from <a href="">Porfirio</a>
                <span>Yesterday</span>
            </div>
        </li>
        <li class="calendar new">
            <div class="msg">
                <a href="">Katherine Kate</a> invited you in an event <a href="">Rock Party</a>.
                <span>Tuesday</span>
            </div>
        </li>
        <li class="settings">
            <div class="msg">
                <a href="">Jane Doe</a> updated her profile.
                <span>May 10</span>
            </div>
        </li>
        <li class="user">
            <div class="msg">
                <a href="">Jet Lee</a> is now following you.
                <span>May 9</span>
            </div>
        </li>
    </ul>
    <div class="msgbutton"><a href="">View All Activities</a></div>
</div>
</body>
</html>