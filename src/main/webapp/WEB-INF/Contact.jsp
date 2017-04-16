<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <c:import url="head-meta.jsp"></c:import>
</head>
<body>
  <c:import url="head.jsp"></c:import>

<div class="container">
  <h2>Contact Us</h2><br><br>
  
  <form>
   <div class="form-group">
    <label for="name">First Name:</label>
    <input type="name" class="form-control" id="First Name">
  </div>
   <div class="form-group">
    <label for="name">Last Name:</label>
    <input type="name" class="form-control" id="Last name">
  </div>
  <div class="form-group">
    <label for="email">Email Address:</label>
    <input type="email" class="form-control" id="Email">
  </div>
   <div class="form-group">
    <label for="email">Phone:</label>
	<input type="Phone" class="form-control" id="Last name">
	<div class="form-group">
    <br><label for="email">Message:</label><br>
	
	<textarea rows="4" cols="50" maxlength="50">
Enter text here...</textarea>
  </div>
 <br><br>
  <button type="submit" class="btn btn-default">Submit</button>
  </div>
</form>
</body>
</html>