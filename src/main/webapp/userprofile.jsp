<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body style="font-family: Arial;"background-color:#E2EAEC;">

	<%@ include file="header.jsp"%>
	<div style="padding: 10rem; margin-top: -9rem;" >
		<!-- Profile -->
		
		<h1 style="text-align: center;" >Profile</h1>
		<div class="row profile-border">
			<div class="col-4" style="text-align: center; margin-left: 18rem">
				<img id="profile_image"
					src="https://imageio.forbes.com/specials-images/imageserve/6041579d3f27a0cd194da4d4/Excited-and-Focused-Gamer-Girl-in-Headset-with-Mic-Playing-Online-Video-Game-on-Her/960x0.jpg?format=jpg&width=960"
					style="border-radius: 50%; object-fit: cover; width: 300px; height: 300px;">
				<input id="file_input" type="file" accept="image/*"
					style="margin-top: 20px; text-align: center;">
			</div>
			<div class="container col-8">
				<!-- Name -->
				<div class="row">
					<div class="col">
						<label for="user_name">First Name</label><br> <input  value="${user.name}"
							id="user_name" type="text" style="width: 50%;">
					</div>

				</div>
				<!-- Username-->
				<div class="row">
					<div class="col">
						<label for="user_un">Username</label><br> 
						<input id="user_un" value="${user.username}"
							type="text" style="width: 50%;" disabled></input>
					</div>

				</div>

				<!-- Email-->
				<div class="row">
					<div class="col">
						<label for="user_email">Email</label><br> <input value="${user.email}"
							id="user_email" type="email" style="width: 50%;">
					</div>

				</div>

				<br> <br> <br>
				<button id="btn_details" class="btn btn-danger" style=" width: 10rem; background-color: #29465B; border-radius: 1rem; padding: .5rem; border: none; color: white; opacity: .7; outline: none; float: right;">Save Changes</button>

			</div>
		</div>

		<!-- Password Reset -->
		<h3 style="padding-top: 2%;">Password</h3>
		<div class="row profile-border">
			<div class="col">
				<div class="row">
					<div class="col">
						<label for="user_password_current">Password</label><br> <input
							id="user_password_current" type="password" style="width: 50%;">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<label for="user_password_new">New Password</label><br> <input
							id="user_password_new" type="password" style="width: 50%;">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<label for="user_password_confirm">Confirm Password</label><br>
						<input id="user_password_confirm" type="password"
							style="width: 50%;">
					</div>
				</div>
				<br> <br>
				<button id="btn_password" class="btn btn-danger"
					style="width: 10rem; background-color: #29465B; border-radius: 1rem; padding: .5rem; border: none; color: white; opacity: .7; outline: none; float: right;">Change
					Password</button>

			</div>
		</div>


		<!-- Delete Account -->
		<h3 style="padding-top: 2%;">Delete Account</h3>
		<div class="row">
			<div class="col">
				<label for="user_password_delete">Enter your password to
					delete this account.</label><br> <input id="user_password_delete"
					type="password" style="width: 50%;"> <br> <br>
				<button id="btn_delete" disabled class="btn btn-danger"
					style="width: 10rem; background-color: #29465B; border-radius: 1rem; padding: .5rem; border: none; color: white; opacity: .7; outline: none; float: right;">Delete
					Account</button>
			</div>
		</div>
		<br>
		<br>

	</div>
	<%@ include file="footer.jsp"%>


</body>
</html>