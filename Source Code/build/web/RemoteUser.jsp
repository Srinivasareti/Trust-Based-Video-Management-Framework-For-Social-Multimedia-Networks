<%-- 
    Document   : RemoteUser
    Created on : 13 Jul, 2021, 11:20:34 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Trust-Based Video Management Framework for Social Multimedia Networks</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo" style="width:auto;">
      <h1><a href="#">Trust-Based Video Management Framework</a></h1>
      <p><strong>for Social Multimedia Networks</strong></p>
    </div>
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li class="active"><a href="RemoteUser.jsp">Remote User</a></li>
        <li><a href="VideoServer.jsp">Video Server</a></li>
     
        
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
   
      <p>
Diverse data analytics applications have been proposed and developed with the goal to create a trustworthy SMN. The researchers’ vision of trustworthy SMNs lies in achieving certainty, authenticity, and security of data exchanged throughout social network nodes. In this vein, many trust models and reputation systems have emerged  with the goal to limit the spread of unsecured data. Generally, trust models and reputation systems are designed to assign a score to each entity in the network and establish trust among them. 
      </p> 
      
    
    </div>
    <div class="fl_right"><img src="images/Capture.PNG" alt="" width="380"/></div>
    <br class="clear" />
  </div>
</div>

<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2>User Login</h2>
       <form action="UserAction.jsp" method="post">
          <table>
              <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="pwd" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Login"> <a href="Register.jsp">Register</a>
           </td></tr>
          </table>
      </form>


    </div>
    <div id="column">
     
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col6">
  <div id="footer">
    
    
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Trust-Based Video Management Framework for Social Multimedia Networks</p>
     <br class="clear" />
  </div>
</div>
</body>
</html>