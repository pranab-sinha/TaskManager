<%-- 
    Document   : homepage
    Created on : Jan 24, 2018, 10:48:49 PM
    Author     : 1406425
--%>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>To Do List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
<center><h1>!!Task Manager!!</h1></center>

<%
    if ((session.getAttribute("id") == null) || (session.getAttribute("id") == "")) {
        
%><a href="login.jsp">Login/Signup</a>
Welcome Guest
<% } else { %>
Hello <%= session.getAttribute("id") %>
!!!!<a href="\todolist\logout">Logout</a>
<% } %>
<table class="table" style="border: 100%">
        <tr>
            <td>
                <h2>All Tasks</h2>
                <jsp:include page="alltask.jsp" />
            </td>
            <td>
<div class="container">
  <h2>Add new Task</h2>
  <form action="addtask">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="name" class="form-control" id="name" placeholder="Enter Name of Task" name="name" required="true">
    </div>
    <div class="form-group">
      <label for="detail">Detail:</label>
      <input type="textarea" class="form-control" id="detail" placeholder="Enter Details" name="detail" required="true">
    </div>
      <div class="form-group">
          <label for="date">Due Date</label>
          <input type="date" class="form-control" id="date" placeholder="Select date" name="date" required="true">
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
            </td>
        </tr>
    </table>
</body>
</html>
