<%-- 
    Document   : RemoteUser
    Created on : 13 Jul, 2021, 11:20:34 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
        <li><a href="ServerHome.jsp">Home</a></li>
       
        <li class="active"><a href="VideoServer.jsp">Logout</a></li>
     
        
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2>View ALL Shared Video</h2>
 
     <table>
            <tr>
                <th>Video Shared By</th><th>Video Share To </th><th>Shared To Id</th>
            </tr>
       <%
       try{
       String query="select * from share";
    ResultSet r=Queries.getExecuteQuery(query);
    while(r.next()){
      

    %>
    <tr>
        <td><%=r.getString("username")%></td>
        <td><a href="SplayVideo.jsp?fname=<%=r.getString("videoname")%>"><%=r.getString("videoname")%></a></tD> 
         <td><%=r.getString("fid")%></td>
    </tR>

<%    
        
    }
       
       
       }catch(Exception e){
           out.println(e);
}%>
        </table>
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