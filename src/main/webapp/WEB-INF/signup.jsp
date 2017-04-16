<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
  <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
 <head>
  <title>Astrological and Matrimonial Services</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="resources/bootstrap.min.css">
  <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>
  <style>
  .banner {	color:black;position:absolute;top:70px;left:130px;}
  .minor-nav{color:#9099a3;display:inline-block;font-size:13px;position:absolute;top:10px;left:1030px;}
   .img-circle{border-radius: 20px;}
    .facebook{height:15px;width:15px;background:url(linked.png) 0 250px ;background-position: 0% 0%;background-repeat: no-repeat;}
 </style>
</head>
  <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
	 <li class="dropdown">
	  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Janam Kundali Creation<span class="caret"></span></a>
	  </li>
      <li>
	  <a class=""  href="#">Future Prediction<span class="caret"></span></a>
	  </li>
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Remedies<span class="caret"></span></a>
      </li>
	    <li class="dropdown">
	  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Horary <span class="caret"></span></a>
	  </li>
	    <li class="dropdown">
	  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Vaastu Prediction <span class="caret"></span></a>
	  </li>
	  <li class="dropdown">
	  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Matrimonial Services<span class="caret"></span></a>
	  </li>
	  	<li><a href="http://www.linkedin.com"><img class="img-circle" src="resources/linked.png" width="25" height="25"></a></li>
	  	<li><a href="http://www.facebook.com"><img class="img-circle" src="resources/facebook.png" width="25" height="25"></a></li>
		
	  
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="index.html"><span class="NewUser"></span> Home</a></li>
       </ul>
  </div>
</nav>
  <h2>Login Information</h2><br><br>
  
  <c:if test="${not empty mypasswordmismatch }">
  
  	<label class="alert alert-danger">Passwords do not match</label>
  
  </c:if>
  
  <c:if test="${not empty useralreadyexists }">
  
  	<label class="alert alert-danger">User-name already exists</label>
  
  </c:if>
  
   <c:if test="${not empty myerrors }">
  
  	<label class="alert alert-danger">Binding Error</label>
  
  </c:if>
  
  
  <form:form action="AddCategoryToDB" method="post" modelAttribute="cat">
       
        <div class="form-group">
      <label for="name">Full Name:</label>
   <form:input type="text" class="form-control" placeholder="Enter Full Name" path="name"/>
	<form:errors path="name"></form:errors>
   </div>
   
   
       <div class="form-group">
      <label for="name">Select Gender</label><br>
   <input type="radio" name="gender" value="male" name="gender" checked> Male<br>
  <input type="radio"   name="gender" value="female" name="gender"> Female<br>
	<form:errors path="name"></form:errors>
   </div>
   <label for="name">Select Religion</label><br>
   <div class="checkbox">
  <label><input type="checkbox" value="hindu" name="religion">Hindu</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" value="sikh" name="religion">Sikh</label>
</div>
<div class="checkbox disabled">
  <label><input type="checkbox" value="muslim" name="religion">Muslim</label>
</div>
<div class="checkbox disabled">
  <label><input type="checkbox" value="christian" name="religion">Christian</label>
</div>
    <div class="form-group">
      <label for="name">Age:</label>
   <form:input type="text" class="form-control" placeholder="Enter Age" path="age"/>
	<form:errors path="name"></form:errors>
   </div>
    <div class="form-group">
      <label for="name">Phone Number:</label>
    <form:input type="text" class="form-control" placeholder="10 digit mobile number" path="phoneno"/>
    <form:errors path="phoneno"></form:errors>
    </div>
    
    <div class="form-group">
      <label for="name">Email Address:</label>
    <form:input type="text" class="form-control" placeholder="Email Address" path="email"/>
    <form:errors path="phoneno"></form:errors>
    </div>
    
     <div class="form-group">
      <label for="name">Enter Salary:</label>
   <form:input type="text" class="form-control" placeholder="Enter Salary" path="salary"/>
	<form:errors path="name"></form:errors>
   </div>
    
    
    
    <label for="name">Select Educational Qualification</label><br>
   <div class="checkbox">
  <label><input type="checkbox" value="BE/BTech" name="eduqual">BE/BTech</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" value="MBA" name="eduqual">MBA</label>
</div>
<div class="checkbox disabled">
  <label><input type="checkbox" value="BA/BSC" name="eduqual">BA/BSC</label>
</div>
<div class="checkbox disabled">
  <label><input type="checkbox" value="MA/MSC" name="eduqual">MA/MSC</label>
</div>




      <div class="form-group">
      <label for="name">Date of Birth:</label>
    <form:input type="text" class="form-control" placeholder="DD-MM-YYYY" path="dateofbirth"/>
    </div>
    <div class="form-group">
      <label for="name">Time of Birth:</label>
    <form:input type="text" class="form-control" placeholder="HH:MM:SS" path="timeofbirth"/>
    </div>
      <div class="form-group">
      <label for="name">Place of Birth:</label>
    <form:input type="text" class="form-control" placeholder="Place of Birth" path="placeofbirth"/>
    </div>
      <div class="form-group">
      <label for="name">Present Location:</label>
    <form:input type="text" class="form-control" placeholder="Enter Present Location" path="presentlocation"/>
    </div>
     <div class="form-group">
      <label for="name">New Password:</label>
    <form:input type="password" class="form-control" placeholder="New Password" path="newpassword"/>
    </div>
    
     <div class="form-group">
      <label for="name">Confirm Password:</label>
    <form:input type="password" class="form-control" placeholder="Confirm Password" path="confirmpassword"/>
    </div>
 <input type="submit" value="Submit"/>
</form:form>


 


</body>
</html>