<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
.container{
    border: 1px solid #29465B;
    border-radius: 1rem;
    margin-left: 3rem;
    margin-top: 1rem;
    padding: 2rem;
    padding-right: -200rem;
    width: 30%;
    margin-bottom: 2rem;
}
form{
    display: flex;
    flex-direction: column;
    justify-content: center;
}
</style>
</head>
<body  style="font-family: Arial;">
<%@ include file = "header.jsp" %>


<form action="RegisterServlet" method="post">

	<div class="container">
	<h2>Register</h2>
	
	<div class="input-container">
		<label style="margin-right: 2em;">Name:</label><br><input required style="width: 90%;" type="text" name="yourName" size="25">
	</div>
	<div class="input-container">
		<label style="margin-right: 2em;">Username:</label><br><input required style="width: 90%;" type="text" name="yourUserName" size="20">
	</div>
	<div class="input-container">
		<label style="margin-right: 2em;">Password:</label><br><input required style="width: 90%;" type="password" name="yourPassword" size="20">
	</div>
	<div class="input-container">
		<label style="margin-right: 2em;">Email:</label><br><input required style="width: 90%;" type="text" name="yourEmail" size="20">
	</div>
	<br>
	
	
	<input style="width: 10rem; background-color: #29465B; border-radius: 1rem; padding: .5rem; border: none; color: white; opacity: .7; outline: none; margin-left: 0px; margin-bottom: 1rem;" type="submit" value=" Register! " />
	<br><br>
	<a class="user" href="login.jsp" style="color: black;">Already have an Account? Login here</a>
	</div>
	
</form>


<%@ include file = "footer.jsp" %>
</body>
</html>