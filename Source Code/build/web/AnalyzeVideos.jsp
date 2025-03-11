<%-- 
    Document   : AnalyzeVideos
    Created on : 18 Feb, 2023, 6:25:36 PM
    Author     : GKV
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dbconnection"%>
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
      <h2>All Transactions</h2>
 
      <table style="margin-bottom: 100px;">
          <tr><th>Video ID</th>
          <th>Video name</th>
           <th>Video Type</th>
           <th>Video Status</th>
        
          
          <%
              try{
                  Connection con=Dbconnection.getcon();
                  Statement st=con.createStatement();
                   Statement st1=con.createStatement();
                    Statement st2=con.createStatement();
                          
          ResultSet r=Queries.getExecuteQuery("select distinct fname,vid,status from comment");
          while(r.next()){
        
          String vid=r.getString("vid"); 
          String status=r.getString("status");
          System.out.println(status);
ResultSet rs=st.executeQuery("select * from category where vid='"+vid+"'");
int pcount=0;
int ncount=0;
while(rs.next()){
    String category=rs.getString("category");
 if(category.equals("Positive")){
   ResultSet rs1=st1.executeQuery("select * from category where vid='"+vid+"' and category='Positive'");
if(rs1.next()){
   pcount=Integer.parseInt(rs1.getString("count"));
}
} else if(category.equals("Negative")){
    ResultSet rs2=st2.executeQuery("select * from category where vid='"+vid+"' and category='Negative'");
if(rs2.next()){
   ncount=Integer.parseInt(rs2.getString("count"));
}   
 }
    
}
              %>
              <tr>
                  <td><%=r.getString("vid")%></td>     
                  <td><%=r.getString("fname")%></td>
                    <%if(pcount>=5){%>
                    <td><font color="green">It Is trusted Video</font></td>
                    <%}else if(ncount>=5){%>
                    <td><font color="red">Un-trusted Video   <a href="Block.jsp?vid=<%=vid%>">Block Video</a></font></td>                 
                    <%}%>
                    <td><%=r.getString("status")%></td>
  
<%}
}catch(Exception e)
{
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
</html>
