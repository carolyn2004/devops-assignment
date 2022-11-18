<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-color: #444;
}

.modal {
    background-color: white;
    margin: 1em auto;
    max-width: 256px;
    padding: 1em;
    text-align: center;
}

.images {
    margin-top: 1em;
    position: relative;
    width: 256px;
    height: 256px;
}

[class*="slide-"] {
    opacity: 0.0;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    transition: opacity linear 0.5s;
}

.to-one:checked ~ .images .slide-one,
.to-two:checked ~ .images .slide-two,
.to-three:checked ~ .images .slide-three {
    opacity: 1.0;
}
</style>
</head>
<body>
<h1>Testing</h1>
<a href="about.jsp">About</a>
<div class="modal">
    <input type="radio" name="image-slider" class="to-one" checked>
    <input type="radio" name="image-slider" class="to-two">
    <input type="radio" name="image-slider" class="to-three">
    <div class="images">
        <img src="http://vignette2.wikia.nocookie.net/apps/images/2/24/Windows-8-Logo-small.png/revision/latest?cb=20130627215459" class="slide-one">
        <img src="http://vignette2.wikia.nocookie.net/apps/images/2/24/Windows-8-Logo-small.png/revision/latest?cb=20130627215459" class="slide-two">
        <img src="http://vignette2.wikia.nocookie.net/apps/images/2/24/Windows-8-Logo-small.png/revision/latest?cb=20130627215459" class="slide-three">
    </div>
</div>
</body>
</html>