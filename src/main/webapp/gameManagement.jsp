<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
<%@ include file="header.jsp"%>

	<div class="row">
		<div class="container">
			<h3 class="text-center">List of Games</h3>
			<hr>
			<div class="container text-left">
				<!-- Add new user button redirects to the register.jsp page -->
<%-- 				<a href="<%=request.getContextPath()%>/register.jsp" --%>
<!-- 					class="btn btn-success">Add New User</a> -->
			</div>
			<br>
			<!-- Create a table to list out all current users information -->
			<table class="table">
				<thead>
					<tr>
						<th>Name</th>
						<th>Category</th>
						<th>image</th>
						<th>description</th>
						<th>Actions</th>
					</tr>
				</thead>
				<!-- Pass in the list of users receive via the Servlet's response to a loop-->
				<tbody>
					<c:forEach var="game" items="${listGames}">
						<!-- For each user in the database, display their information accordingly -->
						<tr>
							<td><c:out value="${game.name}" /></td>
							<td><c:out value="${game.category}" /></td>
							<td><img src="<c:out value="${game.image}"/>"style="width: 100%"></td>
							<td><c:out value="${game.description}" /></td>
							<!-- For each user in the database, Edit/Delete buttons which invokes the edit/delete functions -->
							<td><a href="edit?name=<c:out value='${game.name}'/>">More Information</a>
<!-- 								&nbsp;&nbsp;&nbsp;&nbsp;  -->
<%-- 								<a href="delete?name=<c:out value='${game.name}' />">Delete</a></td> --%>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>