<%-- 
    Document   : CommentAction
    Created on : 18 Feb, 2023, 6:09:53 PM
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
      String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
        
    String vid=request.getParameter("vid");
String name=request.getParameter("name");
String comment=request.getParameter("comment");

Connection con=Dbconnection.getcon();
Statement s=con.createStatement();
Statement s1=con.createStatement();
Statement s2=con.createStatement();
Statement s3=con.createStatement();
Statement s4=con.createStatement();
ResultSet r=Queries.getExecuteQuery("select * from words");
while(r.next()){
  String word=r.getString("word");
  if(comment.contains(word)){
    
   ResultSet rr=s.executeQuery("select * from words where word='"+word+"'");
   if(rr.next()){   
       String category=rr.getString("category");
       
     ResultSet rs=s1.executeQuery("select count(*) from category where vid='"+vid+"' and category='"+category+"'");
     int c=0;
     if(rs.next()){
         c=rs.getInt(1);
     }
     if(c==0){
        s2.executeUpdate("insert into category values('"+vid+"','"+category+"','1')"); 
        
     }else{
      ResultSet rs1=s3.executeQuery("select * from category where vid='"+vid+"' and category='"+category+"'"); 
         while(rs1.next()){
             
             int count=Integer.parseInt(rs1.getString("count"));
            int tc=count+1;
            s4.executeUpdate("update category set count='"+tc+"'where vid='"+vid+"'and category='"+category+"'"); 
         }
         
     }
  }   
      
  }
  
  
}

    
    String query="insert into comment values(null,'"+vid+"','"+name+"','"+comment+"','Active')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Comment Successful..!!");
          window.location="SharedVideos.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Comment Sending Failed..!!");
          window.location="SharedVideos.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>