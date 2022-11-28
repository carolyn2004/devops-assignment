<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Games</title>
<style>
.image {
	position: center;
	width: 800x;
	height: 400px;
	margin-left: 22rem;
	margin-right: 22rem;
}

.row {
	margin-bottom: -5rem;
	padding-top: -100px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

.column {
	float: left;
	width: 33.3%;
	margin-bottom: 16px;
	padding: 0 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: 80px;
}

.container {
	padding: 0 16px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
}

.tag {
	background-color: #d3d3d3;
	width: 130px;
	height: 30px;
	border-radius: 15px;
	
}
.tag-text{
	margin-left: 10px;
	padding-top: 5px;
}

@media screen and (max-width: 650px) {
	.column {
		width: 100%;
		display: block;
	}
}
</style>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>
	<%@ include file="header.jsp"%>
	<div>
		<img class="image" src="https://i.postimg.cc/6pMCZ991/image.png">
	</div>

	<h2 style="text-align: center">Featured games</h2>

	<c:forEach var="games" items="${listGames}">
		<div class="column">
			<div class="card">
				<img src="<c:out value="${games.image}" />" alt="image1"
					style="width: 100%">
				<div class="container">
					<h2>
						<c:out value="${games.name}" />
					</h2>
					<div class="tag">
						<p class="tag-text">
							<c:out value="${games.category}" />
						</p>
					</div>
					<br>
				</div>
			</div>
		</div>
	</c:forEach>

	

	<%@ include file="footer.jsp"%>
</body>
</html>