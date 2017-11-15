<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>ADESA Application</title>
</head>
<body>

<div class="container">
<div class="jumbotron text-center">
  <h1 align="center">ADESA Login</h1>
  <p>Please Login with your credentials</p> 
  <hr>
</div>
<div align="center" class="container">
  <div  class="form">
    <form action="hello" method="post" onsubmit="return validate()">
      <table align="center" class="table">
        <tr>
          <td>Enter Your EmailID</td>
          <td><input type="text" name="email"></td>
          
        </tr>
        <tr>
          <td>Enter Password</td>
          <td><input type="password" name="password"></td>
          
        </tr>
        <tr>
          
          <td><input type="submit" value="Submit"></td>
          
        </tr>
      </table>
    </form>
  </div>
</div>
</div>

</body>
</html>