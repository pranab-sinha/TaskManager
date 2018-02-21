<%-- 
    Document   : alltask
    Created on : Jan 24, 2018, 10:50:12 PM
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
<center><TABLE>
        <th>Name</th>
        <th>Details</th>
        <th>Due Date</th>
<%
      String name = (String)session.getAttribute("usrnme"); 
          String q="select * from task where uid = '"+name+"' order by date asc;";
            ResultSet resultset = todolist.Daolayer.selectData(q);
 try{
                
            while(resultset.next())
            {
        %>
         <TR>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD>
                   <form action="edittask.jsp">
                       <button name="idtask" type="submit" value="<%= resultset.getString(1) %>">Edit</button>
                   </form>
               </TD>
               <TD>
                   <form action="deletetask" method="post">
                       <button name="idtask" type="submit" value="<%= resultset.getString(1) %>">Delete</button>
                   </form>
               </TD>
           </TR>
           
    <%
} 
}
catch(Exception e){
            out.print("No Task Added Till Now");
            
        }
%>
 </TABLE>
<br>
</center>
    </body>
</html>
