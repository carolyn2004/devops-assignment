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
    background-color: #d91279;
    margin: auto;
    max-width: auto;
    padding-top: 1em;
    text-align: center;
    align-items: center;
    
}

.images {
    margin-top: 1em;
    padding-bottom: 2%;
    position: relative;
    width: 256px; 
    height: 256px; 
  	margin-left: auto;
  	margin-right: auto;
    
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


.container1 {
  position: relative;
  width: 32%;
  max-width: 32%;
  /* margin-left: auto;
  margin-right: auto; */
  display: inline-block;
  padding: 0 8px;
 
}

.container1 img {
  width: 100%;
  height: auto;
}

.container1 .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #555;
  color: white;
  font-size: 16px;
  padding: 14px 28px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.container1 .btn:hover {
  background-color: black;
}

</style>
</head>
<body>
<%@ include file = "header.jsp" %>

<h1 style=" color: white; text-align: center;">LATEST GAMES</h1>

<div class="row" style="">
	<div class="column" style="display:inline">
		<div class="container1">
			<img alt="" src="https://i.postimg.cc/dQZ1D0T0/editedduelyst.png" style=" width: 100%; border-radius: 20px;">
			<button class="btn">Duelyst</button>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<img alt="" src="https://i.postimg.cc/fR6gvBRX/godofwar.jpg" style=" width: 100%; border-radius: 20px;">
			<button class="btn">God Of War</button>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<img alt="" src="https://i.postimg.cc/RVkMD34H/tombraider.jpg" style=" width: 100%; border-radius: 20px;">
			<button class="btn">Tomb Raider</button>
		</div>
	</div>
</div>

<h1 style=" color: white; text-align: center;">GAME TRAILERS</h1>

<div class="row" style="padding: 0 8px; text-align: center;">
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480" height="345" src="https://www.youtube.com/embed/-f3eqgsi4IE"></iframe>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480" height="345" src="https://www.youtube.com/embed/3FwLWwWvNes"></iframe>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480"  height="345" src="https://www.youtube.com/embed/XYtyeqVQnRI"></iframe>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480" height="345" src="https://www.youtube.com/embed/cTDJNZ9cK1w"></iframe>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480" height="345" src="https://www.youtube.com/embed/9p0YVZy2hXI"></iframe>
		</div>
	</div>
	<div class="column" style="display:inline">
		<div class="container1">
			<iframe width="480"  height="345" src="https://www.youtube.com/embed/oceLRiqQsko"></iframe>
		</div>
	</div>
</div>

<br><br>

<div class="container" style="">
	<div class="modal center">
	    <input type="radio" name="image-slider" class="to-one" checked>
	    <input type="radio" name="image-slider" class="to-two">
	    <input type="radio" name="image-slider" class="to-three">
	    <div class="images">
	        <img src="https://i.postimg.cc/26SQX736/playlah.png" class="slide-one" alt="PLAYLAH">
	        <img src="http://vignette2.wikia.nocookie.net/apps/images/2/24/Windows-8-Logo-small.png/revision/latest?cb=20130627215459" class="slide-two">
	        <img src="http://vignette2.wikia.nocookie.net/apps/images/3/24/Windows-8-Logo-small.png/revision/latest?cb=20130627215459" class="slide-three">
	    </div>
	</div>
</div>


<%@ include file = "footer.jsp" %>


</body>
</html>