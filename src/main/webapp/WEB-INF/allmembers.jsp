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

<h1>Get All Information</h1>

<table border="1">

	<c:forEach var="x" items="${catlist}">
	<tr>
	<td>${x.getName()}</td>
	<td>${x.getPhoneno()}</td>
	<td>${x.getDateofbirth()}</td>
	<td>${x.getTimeofbirth()}</td>
	<td>${x.getPlaceofbirth()}</td>
	<td>${x.getPlaceofbirth()}</td>
	<td>${x.getPlaceofbirth()}</td>
	<td><a href="DeleteCategoryFromDB/${x.getId()}">Delete</a></td>
	<td><a href="updatecategory/${x.getId()}">Update</a></td>
	</tr>
	</c:forEach>
	
	</table>
</body>
</html>
