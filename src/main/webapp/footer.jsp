<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<footer class="footer" style="background-color: #89ecd6; text-align: center;">
<div>
<br>
      <a class="social-icon__link" href="#" style="color: black; font-size: 40px; padding: 3%;"><ion-icon name="logo-facebook"></ion-icon></a>
      <a class="social-icon__link" href="#" style="color: black; font-size: 40px; padding: 3%;"><ion-icon name="logo-twitter"></ion-icon></a>
      <a class="social-icon__link" href="#" style="color: black; font-size: 40px; padding: 3%;"><ion-icon name="logo-linkedin"></ion-icon></a>
      <a class="social-icon__link" href="#" style="color: black; font-size: 40px; padding: 3%;"><ion-icon name="logo-instagram"></ion-icon></a>
</div>
    <div>
    	<br>
    	<a class="menu__link" href="<%=request.getContextPath()%>/index.jsp" style="color: black; padding: 2%; font-size: 18px;">Home</a>
    	<a class="menu__link" href="<%=request.getContextPath()%>/about.jsp" style="color: black; padding: 2%; font-size: 18px;">About</a>
    	<a class="menu__link" href="<%=request.getContextPath()%>/GameServlet/dashboard" style="color: black; padding: 2%; font-size: 18px;">Games</a>
    </div>
      
        <br>
    <p>&copy; 2022 JustPlayLah | All Rights Reserved. </p>
  </footer>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>


</body>
</html>
