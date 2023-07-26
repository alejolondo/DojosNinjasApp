<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

	<div class="container">
		<h1> <c:out value="${dojo.name}"></c:out>  Ninjas </h1>
		<a href="/index" class="btn btn-success "> Go back</a>
		
		<table class="table  table-striped">
			<tbody>
				<c:forEach var="dojo" items="${dojo.ninjas}">
					<tr>
						<td> <c:out value="${dojo.firstName}"></c:out>
						<td> <c:out value="${dojo.lastName}"></c:out>
						<td> <c:out value="${dojo.age}"></c:out>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>