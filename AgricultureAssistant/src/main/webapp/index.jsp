<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Agriculture Assistant</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Poppins', sans-serif;
	/* Agriculture Background Image */
	background: url("images/agri1.jpeg") no-repeat center center/cover;
	height: 100vh;
}

/* Dark overlay */
body::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}

/* Navbar styling */
.navbar {
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4);
	animation: slideDown 1s ease;
}

/* Glass card effect */
.main-box {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 50px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
	animation: fadeIn 2s ease;
	color: white;
}

/* Button styling */
.btn-success {
	padding: 12px 40px;
	font-size: 20px;
	border-radius: 30px;
	transition: 0.3s;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
}

/* Hover animation */
.btn-success:hover {
	transform: scale(1.1);
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.6);
}

/* Welcome text animation */
h2 {
	font-weight: 700;
	animation: fadeText 3s infinite alternate;
}
/* Animations */
@
keyframes fadeIn {from { opacity:0;
	transform: translateY(50px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes slideDown {from { transform:translateY(-100%);
	
}

to {
	transform: translateY(0);
}

}
@
keyframes fadeText {from { color:#ffffff;
	
}

to {
	color: #a5ffb2;
}

}

/* Footer */
.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	background: rgba(0, 0, 0, 0.6);
	backdrop-filter: blur(10px);
	color: white;
	padding: 10px 0;
	font-size: 14px;
	box-shadow: 0 -2px 15px rgba(0, 0, 0, 0.5);
}
</style>

</head>

<body class="bg-light">

	<nav class="navbar navbar-dark bg-success">

		<div class="container">

			<span class="navbar-brand fs-4 fw-bold"> 🌾 AgriTrack – Field
				Inspection & Crop Advisory Platform </span>

		</div>

	</nav>

	<div
		class="container d-flex justify-content-center align-items-center text-center"
		style="height: 80vh;">

		<div class="main-box">

			<h2 class="heading">Welcome Agriculture Assistant Mr.Koteswar
				Vasa</h2>

			<a href="login.jsp" class="btn btn-success btn-lg mt-4"> Login </a>

		</div>

	</div>

	<footer class="footer">
		<div class="container text-center">
			<span> © 2026 AgriTrack – Field Inspection & Crop Advisory
				Platform | Developed by Koteswar Vasa 🌾 | All Rights Reserved </span>
		</div>
	</footer>

</body>
</html>