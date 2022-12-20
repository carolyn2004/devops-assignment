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
body  {
  background-image: url(<c:out value='${game.image}' />);
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
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
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

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
  
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light" style=" color: white; background-color: #3a3b3c">
	<div>
		<a class="navbar-brand"> Game Information </a>
	</div>
	<ul class="navbar-nav">
		<li><a style="color: grey;"
			href="<%=request.getContextPath()%>/GameServlet/dashboard"
			class="nav-link">Back to List of Games</a></li>
	</ul>
</nav>

<div style="text-align: center">
	
	<h1 style=" color: #D3d1c9; background: rgba(0,0,0,0.8);">
	<br>
			<c:out value='${game.name}' />
			<br><br>
			
	</h1>
		<p style=" color: #D3d1c9; background: rgba(0,0,0,0.7);">
			<br>
			<c:out value='${game.category}' />
			<br><br>
			<c:out value='${game.description}' />
		</p>
<!-- Trigger/Open The Modal -->
<button class="btn btn-primary" id="myBtn">Write a review</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close" style="margin-left:70rem">&times;</span>
    <form>
     <div class="pinfo" style="text-align:left">Rate the game.</div>
  

<div class="form-group">
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-heart"></i></span>
   <select class="form-control" id="rate">
      <option value="1star">1</option>
      <option value="2stars">2</option>
      <option value="3stars">3</option>
      <option value="4stars">4</option>
      <option value="5stars">5</option>
    </select>
    </div>
  </div>
</div>

 <div class="pinfo" style="text-align:left">Write your feedback.</div>
  

<div class="form-group">
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
  <textarea class="form-control" id="review" rows="3"></textarea>
 
    </div>
  </div>
</div>

 <button type="submit" style="margin-right:70rem"class="btn btn-primary">Submit</button>


</form>
   
  </div>

</div>	
 <div style="margin-top:1rem; height: 130px; width: 1000px;  margin-left: 15rem"class="card" id='commentSection'> 
            <div class="comment row"> 
              <div class="col-2" style="text-align: center; padding-top: 10px">
                <img src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png" style="border-radius: 50%; width: 80px; max-width:80px; margin-left: 1rem; object-fit: cover;">
                <span style="padding-bottom: 10px; width:230px; max-width: 230px; margin-left: 1rem;"> Richard123</span>
               </div>
                <div class="col-10">
                 
                  
                  <span style="display: inline-block; padding-left: 610px; padding-top: 1rem">13/12/2020 10:56 pm</span>

             
           
                  <p style="padding-right: 45rem;">Review body</p>
                  <span style="padding-left: 630px;"class="modify-buttons"> 
                    <button class="btn btn-primary"> Edit </button>  
                    <button class="btn btn-primary"style="padding-left: 5px;"> Delete </button>
                  </span>
              </div>
            </div>
        </div>
        
        
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