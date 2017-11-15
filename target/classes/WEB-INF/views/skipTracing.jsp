<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<div class="wrapper">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Spring Boot</title>
</head>
<body>
<!--Navbar -->
      <div class="container">
        <header class="page-header">
          <ul class="nav nav-pills pull-right">
            <li ><a href="/hello">Home</a></li>
            <li><a href="/repossession">Repossession</a></li>
            <li class="active"><a href="/skipTracing">Skip Tracing</a></li>
            <li><a href="/remarketing">Re marketing</a></li>
            <li><a href="/titleServices">Title Services</a></li>
          </ul>
         <h1>ADESA</h1>                        
        </header>
        </div><!--End Navbar -->
<div class="jumbotron text-center">
  <h1 align="center">SkipTracing</h1>
  
 </div>
 <div align="center" class="container">
<table align="center" class="table">
  <tr>
    <th>ID</th>
    <th>YEAR</th>
    <th>Make</th>
    <th>Model</th>
    <th>Vin</th>
  </tr>
  <c:forEach begin="6" end="8" var="entry1" items="${carsmap}">
  <tr>
    <td>${entry1.id}</td>
    <td>${entry1.year}</td>
    <td>${entry1.make}</td>
    <td>${entry1.model}</td>
    <td>${entry1.vin}</td>
  </tr>
  </c:forEach>
</table>
</div>
</div>
</body>
</div>
</html>