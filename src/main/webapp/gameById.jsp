<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Game Review</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style type="text/css">
body {
	background-color: #444444;
	background-repeat: no-repeat;
	background-size: cover;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
	

}
</style>
</head>
<body>
		<%@ include file="header.jsp"%>

	<!--<div style="text-align: center">

		<h1 style="color: #D3d1c9; background: rgba(0, 0, 0, 0.8);">
			<br>
			<c:out value='${game.name}' />
			<br>
			<br>

		</h1>
		<p style="color: #D3d1c9; background: rgba(0, 0, 0, 0.7);">
			<br>
			<c:out value='${game.category}' />
			<br>
			<br>
			<c:out value='${game.description}' />
		</p> -->
		<!-- Trigger/Open The Modal -->
		<div class="container">
   <img src="<c:out value="${game.image}" />" alt="image1" style="width: 100%">
   
    
  
    <div class="details">
        <div class="header">
            <span style="color:white; font-size: 40px"class="name">
<c:out value='${game.name}' />
            </span>
            <div class="card" style="width:fit-content; padding:0.3rem; background-color: #3a1a2a; border:none;" >
                <span style="color:white;">
                  <c:out value='${game.category}' />
                </span>
                
                
            </div>
          
            
            <div style="color:white; margin-bottom:1rem; margin-top: 1rem;"class="description">
	<c:out value='${game.description}' />
            </div>
           
           <button class="btn btn-primary" style="background-color: #887775; border:none;"id="myBtn">Write a review</button>
            </div>   
              </div>
         

           
           
	

		<!-- The Modal -->
		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<span class="close" style="margin-left: 70rem">&times;</span>
				<form action="ReviewServlet" method="post">
	<div class="form-group">


						
						
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-pencil"></i></span>
								<input name="yourGame" type="hidden" class="form-control" id="game" value="<c:out value='${game.name}' />">

							</div>
						</div>
					</div>			
<div class="form-group">


						
						<div class="pinfo" style="text-align: left">Your Username</div>
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-pencil"></i></span>
								<textarea name="yourUsername" class="form-control" id="username" rows="1"></textarea>

							</div>
						</div>
					</div>
					<div class="pinfo" style="text-align: left">Rate the game</div>

					<div class="form-group">
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span  class="input-group-addon"><i class="fa fa-heart"></i></span>
								<select name="yourRating" class="form-control" id="rate">
									<option value="1star">1</option>
									<option value="2stars">2</option>
									<option value="3stars">3</option>
									<option value="4stars">4</option>
									<option value="5stars">5</option>
								</select>
							</div>
						</div>
					</div>

					<div class="pinfo" style="text-align: left">Write your
						feedback</div>


					<div class="form-group">
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-pencil"></i></span>
								<textarea name="yourFeedback" class="form-control" id="review" rows="3"></textarea>

							</div>
						</div>
					</div>
					

					<button type="submit" value="Call Servlet" style="margin-right: 70rem; background-color: #887775; border:none;"
						class="btn btn-primary" >Submit</button>


				</form>

			</div>

		</div>
		
		<c:forEach var="reviews" items="${showReviews}">
		<div
			style="margin-top: 1rem; height: 160px; width: 1000px; "
			class="card" id='commentSection'>
			<div class="comment row">
				<div class="col-2" style="text-align: center; padding-top: 10px">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"
						style="border-radius: 50%; width: 80px; max-width: 80px; margin-left: 1rem; object-fit: cover;">
					<span
						style="padding-bottom: 10px; width: 230px; max-width: 230px; margin-left: 1rem;">
						<c:out value='${reviews.username}' /></span>
				</div>
				<div class="col-10">


					<span
						style="display: inline-block; padding-left: 610px; padding-top: 1rem">13/12/2020
						10:56 pm</span>

<p style="padding-right: 45rem; "><c:out value='${reviews.rating}' /></p>


					<p style="padding-right: 45rem;"><c:out value='${reviews.feedback}' /></p>
				
					<span style="padding-left: 650px;" class="modify-buttons">
						<button class="btn btn-primary" style="background-color: #887775; border:none;">Edit</button>
						<button class="btn btn-primary" style="padding-left: 5px; background-color: #887775; border:none;">
							Delete</button>
					</span>
				</div>
			</div>
		</div>
		</c:forEach>

	

	</div>












	<%-- 	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">
				<c:if test="${game != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${game == null}">
					<form action="insert" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${game != null}">Edit User</c:if>
						<c:if test="${game == null}">Add New User</c:if>
					</h2>
				</caption>
				<c:if test="${game != null}">
					<input type="hidden" name="oriName"
						value="<c:out
value='${game.name}' />" />
				</c:if>
				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out
value='${game.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>category</label> <input type="text"
						value="<c:out
value='${game.category}' />" class="form-control"
						name="category">
				</fieldset>
				<fieldset class="form-group">
					<label>image</label>
					<input type="text"value="<c:out value='${game.image}' />" class="form-control" name="image">
				</fieldset>
				<fieldset class="form-group">
					<label>description</label> <input type="text"
						value="<c:out
value='${game.description}' />" class="form-control"
						name="description">
				</fieldset>
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div> --%>
	<%@ include file="footer.jsp"%>
</body>
<script>
	//Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on the button, open the modal
	btn.onclick = function() {
		modal.style.display = "block";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
</html>