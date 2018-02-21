<%-- 
    Document   : login
    Created on : Jan 24, 2018, 10:49:33 PM
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
    <table class="table">
        <tr><td>
<div class="container">
  <h2>!!Login here!!</h2>
  <form action="loginvalidate">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
            </td>
            <td>    
<div class="container">
  <h2>!!Register Here!!</h2>
  <form action="signup">
      <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" class="form-control" id="name" placeholder="Enter name" name="name"> 
      </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required="true">
    </div>
      <div class="form-group">
          <label for="username">Username:</label>
          <input type="username" class="form-control" id="usrname" placeholder="Enter the usename" name="usrname">  
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
            </td></tr></table>
</body>
</html>
