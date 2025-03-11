<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    

    if(uname.equals("Server")&&pwd.equals("Server")){
      
      %>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="ServerHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="VideoServer.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>