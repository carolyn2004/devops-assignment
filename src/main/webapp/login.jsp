<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
.details{
    width: 28rem;
}
form{
    display: flex;
    flex-direction: column;
    justify-content: center;
}
button{
    border-radius: 1rem;
    border: none;
    padding: .5rem;
    color: white;
    opacity: .7;
    outline: none;
    margin-left: 0px;
    background-color: #29465B;
    width: 10rem;
    margin-bottom: 1rem;
    
}
.user{
    color:#000000
}
</style>
</head>
<body>
<%@ include file = "header.jsp" %>
<div class="container">
    <div class="details">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
        
        <div class="input-container">
		<label style="margin-right: 2em;">Username:</label><br><input style="width: 90%;" type="text" name="YourUsername" size="25">
	</div>

            <div class="input-container">
		<label style="margin-right: 2em;">Password:</label><br><input style="width: 90%;" type="password" name="YourPassword" size="20">
	</div>
            <br>
<div class="button"></div>
<button type="submit" value="Login!">Login</button>
        </form>
        <a class="user" href="register.jsp">New user? Register here</a>
    </div>
    <br><br><br>

</div>
<%@ include file = "footer.jsp" %>
</body>
</html>