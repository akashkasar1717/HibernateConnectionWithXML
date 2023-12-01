<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


</head>
<body style="background-color:purple;">

	<h2 class="text-center mt-4 text-primary">Employee List</h2>
	
	<div class="container">
	<div class="row">
	<a href="createEmployee" class="btn btn-outline-warning mt-2 mb-2">Add New Employee</a>
	
	<table  class="table table-dark">
		<thead style=" font-weight: 900; font-size: 20px; color:dark-gray;">
			<tr class="text-center">
				<th scope="col">Id</th>
				<th scope="col">Name</th>
				<th scope="col">salary</th>
				<th scope="col">Update</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="employees">
				<tr class="text-center">
					<td>${employees.id}</td>
					<td>${employees.name}</td>
					<td>${employees.salary}</td>
					<td><a href="update/${employees.id}" class="btn btn-outline-info">Update</a></td>
					<td><a href="delete/${employees.id}" class="btn btn-outline-danger" onclick="if(!(confirm('are you sure you want to delete this data ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>


		</tbody>
	</table>
	</div>
	</div>
</body>
</html>
