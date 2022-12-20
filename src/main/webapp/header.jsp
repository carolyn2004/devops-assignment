<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="border-bottom: thin solid black; padding:20px; text-align: center; background-color: #232b2b;">
	<div style="">
		<img src="https://i.postimg.cc/hvbbqsQm/upgraded-Playlah.png" alt="PLAYLAH-logo" style="width:90px; z-index: 2; position: relative; float: left; margin-right: 150px">
  		<img src="https://i.postimg.cc/76znKwxm/leftconsolelogo.png" alt="PLAYLAH-left" style="width:55px;">
  		<a href="<%=request.getContextPath()%>/index.jsp" style="padding: 3%; color: white; font-size: 20px;">Home</a>
  		<a href="<%=request.getContextPath()%>/about.jsp" style="padding: 3%; color: white; font-size: 20px;">About</a>
  		<a href="<%=request.getContextPath()%>/GameServlet/dashboard" style="padding: 3%; color: white; font-size: 20px;">Games</a>
  		<img src="https://i.postimg.cc/C5VHtX5Y/rightconsolelogo.png" alt="PLAYLAH-right" style="width:50px;">
  		
  		<div style="width:260px; z-index: 3; position: relative; float: right;">
  		<a href="<%=request.getContextPath()%>/register.jsp" style="padding: 1%; color: white; font-size: 20px;">Register</a>
  		<a href="<%=request.getContextPath()%>/login.jsp" style="padding: 1%; color: white; font-size: 20px;">Login</a>
        
  		<a href="" style="padding: 1%; color: white; font-size: 20px;">Logout</a>
  		<a href="userprofile.jsp" style="padding: 1%; color: white; font-size: 20px;">Profile</a>
  		</div>
  
  	</div>
</div>
<br>
</body>
</html>
