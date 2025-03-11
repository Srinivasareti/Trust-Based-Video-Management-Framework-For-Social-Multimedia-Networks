<%-- 
    Document   : Block
    Created on : 18 Feb, 2023, 7:11:26 PM
    Author     : GKV
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try{
              
    String vid=request.getParameter("vid");


    
    String query="update video set status='Blocked' where id='"+vid+"'";
    String query1="update comment set status='Blocked' where vid='"+vid+"'";
    int i=Queries.getExecuteUpdate(query);
    Queries.getExecuteUpdate(query1);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Video Blocked..!!");
          window.location="AnalyzeVideos.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Blocking Failed..!!");
          window.location="AnalyzeVideos.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>