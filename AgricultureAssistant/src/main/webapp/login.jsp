<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Agriculture Assistant Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	rel="stylesheet">

<style>
body {
	font-family: 'Poppins', sans-serif;
	height: 100vh;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
		url("images/agri2.jpeg");
	background-size: cover;
	background-position: center;
	overflow: hidden;
}

/* Floating particles */
body::before {
	content: "";
	position: absolute;
	width: 200%;
	height: 200%;
	background-image: radial-gradient(#00ff88 1px, transparent 1px);
	background-size: 50px 50px;
	animation: moveParticles 40s linear infinite;
	opacity: 0.2;
}

@
keyframes moveParticles {from { transform:translate(0, 0);
	
}

to {
	transform: translate(-500px, -500px);
}

}

/* Glass Card */
.login-card {
	width: 380px;
	padding: 30px;
	border-radius: 20px;
	background: rgba(255, 255, 255, 0.12);
	backdrop-filter: blur(15px);
	box-shadow: 0 0 30px rgba(0, 255, 150, 0.4);
	color: white;
	animation: fadeIn 1.2s ease;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(40px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* Title */
.title {
	font-size: 26px;
	font-weight: 600;
	text-align: center;
	margin-bottom: 20px;
}

/* Input group */
.input-group {
	margin-bottom: 18px;
}

.input-group-text {
	background: #00c853;
	border: none;
	color: white;
	border-radius: 10px 0 0 10px;
}

.form-control {
	border: none;
	border-radius: 0 10px 10px 0;
	padding: 12px;
}

.form-control:focus {
	box-shadow: 0 0 10px #00ff88;
}

/* Button */
.btn-login {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 25px;
	background: linear-gradient(45deg, #00c853, #64dd17);
	color: white;
	font-size: 18px;
	font-weight: 600;
	transition: 0.3s;
}

.btn-login:hover {
	transform: scale(1.05);
	box-shadow: 0 0 15px #00ff88;
}

/* Footer text */
.footer {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
	opacity: 0.8;
}
</style>

</head>

<body>

	<div class="login-card">

		<div class="title">🌾 Agriculture Assistant Login</div>

		<form action="login" method="post">

			<div class="input-group">
				<span class="input-group-text"> <i class="fa fa-user"></i>
				</span> <input type="text" name="username" class="form-control"
					placeholder="Enter Username" required>
			</div>

			<div class="input-group">
				<span class="input-group-text"> <i class="fa fa-lock"></i>
				</span> <input type="password" name="password" class="form-control"
					placeholder="Enter Password" required>
			</div>

			<button class="btn-login">Login</button>

		</form>

		<div class="footer">AgriTrack – Field Inspection & Crop Advisory
			Platform</div>

	</div>

</body>
</html>