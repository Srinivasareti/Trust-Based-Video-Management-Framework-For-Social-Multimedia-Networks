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
        <li><a href="UserHome.jsp">Home</a></li>
        <li class="active"><a href="ViewMyProfile.jsp">View My Profile</a></li>
        <li><a href="SerachFriends.jsp">Search Friends</a></li>
     
     <li><a href="SerachVideo.jsp">Search Video</a></li>
     <li><a href="Top_KVideos.jsp">Top-K Videos</a></li>
        <li><a href="SharedVideos.jsp">View All Shared Videos</a></li>
     <li><a href="RemoteUser.jsp">Logout</a></li>  
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
    <div class="fl_left">
   <% 
   
   
   
    String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
   
   
   %>
        <h2>WELCOME : <%=username%></h2>
    
    </div>
    <div class="fl_right"><img src="images/Capture.PNG" alt="" width="380"/></div>
    <br class="clear" />
  </div>
</div>

<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2>UserHome Page</h2>
      
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