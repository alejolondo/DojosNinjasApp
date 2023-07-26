<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
 <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
	
	<div class="container">
		<form:form action="/ninjas/create" method="post" modelAttribute="ninja"> 
			<h1>Nuevo Ninja</h1>
			
			<div class="form-group">
			<form:label path="dojo">dojo:</form:label>
			<form:select path="dojo" class="form-select">
				<c:forEach var="dojo" items="${dojos}">
				<option value=${dojo.id}>${dojo.name}</option> 	
				</c:forEach>
			</form:select>
			<form:errors path="dojo" class="text-danger" />
			</div>
			
			<div class="form-group">
			
			<form:label path="firstName">Nombre:</form:label>
			<form:input path="firstName" class="form-control" />
			<form:errors path="firstName" class="text-danger" />
			
			</div>
			
			<div class="form-group">
			
			<form:label path="lastName">Apellido:</form:label>
			<form:input path="lastName" class="form-control" />
			<form:errors path="lastName" class="text-danger" />
			
			</div>
			
			<div class="form-group">
			
			<form:label path="age">Edad:</form:label>
			<form:input  Type="number" path="age" class="form-control" />
			<form:errors path="age" class="text-danger" />
			
			</div>
			
			<input type="submit" value="Crear" class="btn btn-success" />
		</form:form>
	</div>
	
</body>
</html>