<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String assistant = (String) session.getAttribute("assistant");

if (assistant == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
	rel="stylesheet">

<style>

/* Background */
body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
		url('https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1920&q=80');
	background-size: cover;
	background-position: center;
	height: 100vh;
	margin: 0;
}

/* Navbar */
.navbar {
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
	padding: 12px 25px;
}

/* Dashboard Container */
.dashboard-box {
	background: rgba(255, 255, 255, 0.12);
	backdrop-filter: blur(15px);
	border-radius: 20px;
	padding: 40px;
	margin-top: 60px;
	color: white;
	box-shadow: 0 0 40px rgba(0, 255, 150, 0.3);
	animation: fadeUp 1s ease;
}

/* Heading */
.dashboard-box h3 {
	font-weight: 600;
	margin-bottom: 35px;
}

/* Button Grid */
.dashboard-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
	gap: 20px;
}

/* Dashboard Buttons */
.dashboard-btn {
	padding: 25px;
	border-radius: 15px;
	font-size: 18px;
	font-weight: 500;
	text-decoration: none;
	color: white;
	display: block;
	transition: 0.3s;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);
}

/* Individual colors */
.btn-farmers {
	background: linear-gradient(45deg, #007bff, #00c6ff);
}

.btn-crops {
	background: linear-gradient(45deg, #00c853, #64dd17);
}

.btn-fertilizer {
	background: linear-gradient(45deg, #ff9800, #ffc107);
}

.btn-reports {
	background: linear-gradient(45deg, #ff5252, #ff1744);
}

/* Hover */
.dashboard-btn:hover {
	transform: translateY(-8px) scale(1.03);
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
	color: white;
}

/* Logout button */
.btn-light {
	border-radius: 20px;
	font-weight: 500;
}

/* Animation */
@
keyframes fadeUp {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
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

<body>

	<nav class="navbar navbar-dark bg-success">

		<div class="container-fluid">

			<span class="navbar-brand fs-4 fw-bold"> 🌾 Welcome <%=assistant%>
			</span> <a href="login.jsp" class="btn btn-light"> <i
				class="fa fa-sign-out-alt"></i> Logout
			</a>

		</div>

	</nav>

	<div class="container">

		<div class="dashboard-box text-center">

			<h3>🌾 Agriculture Assistant Dashboard</h3>

			<div class="dashboard-grid">

				<a href="farmers.jsp" class="dashboard-btn btn-farmers"> <i
					class="fa fa-users fa-2x mb-2"></i><br> Manage Farmers
				</a> <a href="crops.jsp" class="dashboard-btn btn-crops"> <i
					class="fa fa-seedling fa-2x mb-2"></i><br> Manage Crops
				</a> <a href="fertilizer.jsp" class="dashboard-btn btn-fertilizer">
					<i class="fa fa-flask fa-2x mb-2"></i><br> Fertilizer
				</a> <a href="reports.jsp" class="dashboard-btn btn-reports"> <i
					class="fa fa-chart-line fa-2x mb-2"></i><br> Reports
				</a>

			</div>

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