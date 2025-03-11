<%-- 
    Document   : Comment
    Created on : 18 Feb, 2023, 6:05:54 PM
    Author     : GKV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
        <li><a href="ViewMyProfile.jsp">View My Profile</a></li>
        <li><a href="SerachFriends.jsp">Search Friends</a></li>
     
     <li><a href="SerachVideo.jsp">Search Video</a></li>
     <li><a href="Top_KVideos.jsp">Top-K Videos</a></li>
      <li class="active"><a href="SharedVideos.jsp">View All Shared Videos</a></li>
     <li><a href="RemoteUser.jsp">Logout</a></li>  
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>

   <% 
   
   
   
    String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
  String fname=request.getParameter("fname");
  String vid=request.getParameter("vid");
   %>
        <h2>WELCOME : <%=username%></h2>
    
   

<div class="wrapper col5">
  <div id="container">
    <div id="content">
        <form action="CommentAction.jsp" method="post">
        <table>
            <tr><th>ID</th><td><input type="text" name="vid" value="<%=vid%>" readonly=""></td></tr>  
            <tr><th>Video Name</th><td><input type="text" name="name" value="<%=fname%>" readonly=""></td></tr>  
                        <tr><th>Comment Here</th><td><textarea cols="30" rows="5" name="comment"></textarea></td></tr>
<tr><th></th><td><input type="submit" value="Submit">   </td></tr>
        </table>
        </form>
      <a href="SharedVideos.jsp">Back</a>
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