<%-- 
    Document   : UploadWords
    Created on : 18 Feb, 2023, 6:18:07 PM
    Author     : GKV
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
try{
             
        
    String category=request.getParameter("category");
    String word=request.getParameter("word");
    
    ResultSet r=Queries.getExecuteQuery("select count(*) from words where word='"+word+"'");
    int c=0;
    while(r.next()){
        c=r.getInt(1);
    }
    if(c==0){
    String query="insert into words values('"+category+"','"+word+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Word Added Successful..!!");
          window.location="AddCategory.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Word Adding Failed..!!");
          window.location="AddCategory.jsp";
      </script>
      <%
}
}else{
%>
      <script type='text/javascript'>
          window.alert("Word Already Added..!!");
          window.location="AddCategory.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>