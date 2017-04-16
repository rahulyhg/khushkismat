<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
  
  <form:form action="/Tarun_Khanna/UpdateCategoryToDB" method="post" modelAttribute="cat">
       
        <div class="form-group">
      <label for="name">Full Name:</label>

        <form:input type="hidden" class="form-control" placeholder="Enter Name" path="id"/>
   <form:input type="text" class="form-control" placeholder="Enter Name" path="name"/>
   </div>
    <div class="form-group">
      <label for="name">Phone Number:</label>
    <form:input type="hidden" class="form-control" placeholder="Enter Name" path="id"/>
    <form:input type="number" class="form-control" placeholder="Enter Phone Number" path="phoneno"/>
    </div>
      <div class="form-group">
      <label for="name">Date of Birth:</label>
<form:input type="hidden" class="form-control" placeholder="Enter Name" path="id"/>   
<form:input type="date" class="form-control" placeholder="Enter Date of Birth" path="dateofbirth"/>
    </div>
    <div class="form-group">
      <label for="name">Time of Birth:</label>
    <form:input type="hidden" class="form-control" placeholder="Enter Name" path="id"/>
    <form:input type="time" class="form-control" placeholder="Enter Time of Birth" path="timeofbirth"/>
    </div>
      <div class="form-group">
      <label for="name">Place of Birth:</label>
    <form:input type="String" class="form-control" placeholder="Enter Place of Birth" path="placeofbirth"/>
    </div>
    
 <input type="submit" value="Update"/>
</form:form>
</body>
</html>
