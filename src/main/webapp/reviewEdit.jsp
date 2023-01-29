<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Edit Review</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light">
		<div>
			<a class="navbar-brand"> Edit Review</a>
		</div>
		<ul class="navbar-nav">
			<li><a
				href="<%=request.getContextPath()%>/GameServlet/dashboard"
				class="nav-link">Back to Game</a></li>
		</ul>
	</nav>
	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">
				<c:if test="${reviews != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${reviews == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${reviews != null}">
Edit Review
</c:if>
						<c:if test="${reviews == null}">
Add New User
</c:if>
					</h2>
				</caption>
				<c:if test="${reviews != null}">
					<input type="hidden" name="review_id"
						value="<c:out
value='${reviews.review_id}' />" />
				</c:if>
				<fieldset class="form-group">

					<label>Game</label> <input type="text" id="game" required

						value="<c:out
value='${reviews.game}' />" class="form-control"
						name="game">
				</fieldset>
				<fieldset class="form-group">
					<label>Rating</label> <input type="text" id="rating1" required
						value="<c:out
value='${reviews.rating}' />" class="form-control"
						name="rating">
				</fieldset>
				<fieldset class="form-group">
					<label>Feedback</label> <input type="text" id="feedback1" required
						value="<c:out
value='${reviews.feedback}' />"
						class="form-control" name="feedback">
				</fieldset>
				<fieldset class="form-group">

					<label>Username</label> <input type="text" id="username" required

						value="<c:out
value='${reviews.username}' />"
						class="form-control" name="username">
				</fieldset>

				<button id="save"type="submit" class="btn btn-success">Save</button>

				</form>
			</div>
		</div>
	</div>

</body>
</html>