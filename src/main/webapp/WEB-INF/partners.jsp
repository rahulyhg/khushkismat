<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Find respective partners</h1><a></a>

<h1> Enter the least age of the partner you are looking for </h1>

  <form action="AddpaCategoryToDB" method="post" >
       
             <label for="name">Enter min and max  age:</label>
   <input type="text"   name="miid"/>
   <input type="text"  name="miad"/>
      <div class="form-group">
      <label for="name">Select Gender</label><br>
   <input type="radio" name="gender" value="male" name="gender" checked> Male<br>
  <input type="radio"   name="gender" value="female" name="gender"> Female<br>
  
    <label for="name">Select Religion</label><br>
   <input type="radio" name="religion" value="hindu"  checked> Hindu<br>
  <input type="radio"   name="religion" value="sikh" > sikh<br>
    <input type="radio" name="religion" value="muslim"> Muslim<br>
  <input type="radio"   name="religion" value="christian">Christian<br>
  
  
    <input type="submit" value="Submit"/>
    </form>
   <table border="1">

	<c:forEach var="x" items="${patlist}">
	<tr>
	<td>${x.getName()}</td>
	</tr>
	</c:forEach>
	
	</table>
</body>
</html>
