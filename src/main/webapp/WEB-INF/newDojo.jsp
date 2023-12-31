<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ page isErrorPage="true" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1 class="text-primary"> New Dojo </h1>
		<form:form action="/dojos/create" method="post" modelAttribute="dojo">
				
			<div class="form-group">
			
			<form:label path="name">Nombre:</form:label>
			<form:input path="name" class="form-control" />
			<form:errors path="name" class="text-danger" />
			
			</div>
			
			<input type="submit" value="Crear" class="btn btn-success" />
		</form:form>
		
	</div>
</body>
</html>