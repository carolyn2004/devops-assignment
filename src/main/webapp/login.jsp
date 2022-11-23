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
        <h3>Login</h3>
        <form>
        
        <div class="input-container">
                <div><label>Username</label></div>
                <input size="50" type="email" placeholder="Email">
            </div>
            <div class="input-container">
                <div><label>Email</label></div>
                <input size="50" type="email" placeholder="Email">
            </div>
            <div class="input-container">
                <div><label>Password</label></div>
                
                <input size="50" type="password" placeholder="Password">
            </div>
            <br>
<div class="button"></div>
<button type="submit">Login</button>
        </form>
        <a class="user" href="signup.jsp">New user? Register here</a>
    </div>
    <br><br><br>

</div>
<%@ include file = "footer.jsp" %>
</body>
</html>