<%-- 
    Document   : edittask
    Created on : Jan 25, 2018, 5:47:04 AM
    Author     : 1406425
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>table
{
    table-layout: fixed;
    width: 600px;
}</style>
    </head>
    <body style="text-align: center">
<center>
<%
      String name = request.getParameter("idtask");
          String q="select * from task where idtask = '"+name+"' ;";
            ResultSet resultset = todolist.Daolayer.selectData(q);
 try{
                
            while(resultset.next())
            {
        %>
        <h2>Edit according to your comfort!!</h2>
        <form action="editt" method="get">
         <input type="text" value="<%= resultset.getString(2) %>" name="name">
         <input type="text" value="<%= resultset.getString(3) %>" name="detail">
         <input type="date" value="<%= resultset.getString(4) %>" name="date">
         <input type="hidden" value="<%= resultset.getString(1) %>" name="id">
         <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    <%
} 
}
catch(Exception e){
            out.print("No Task Added Till Now");
            
        }
%>
<br>
</center>
    </body>
</html>
