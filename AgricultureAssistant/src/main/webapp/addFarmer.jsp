<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Add Farmer</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap"
	rel="stylesheet">

<style>

/* Background */
body {
	font-family: 'Poppins', sans-serif;
	background:
		url('https://images.unsplash.com/photo-1502082553048-f009c37129b9?auto=format&fit=crop&w=1920&q=80')
		no-repeat center center/cover;
	min-height: 100vh;
	margin: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	animation: zoomBg 20s infinite alternate ease-in-out;
}

/* Overlay */
.overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.55);
	z-index: 0;
}

/* Glass Box */
.glass-box {
	position: relative;
	z-index: 2;
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(12px);
	border-radius: 20px;
	padding: 35px;
	width: 100%;
	max-width: 450px;
	color: white;
	box-shadow: 0 10px 40px rgba(0, 0, 0, 0.7);
}

/* Header */
.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

/* Title */
h3 {
	font-weight: 600;
	margin: 0;
}

/* Inputs */
.form-control {
	border-radius: 10px;
	border: none;
	padding: 10px;
}

.form-control:focus {
	box-shadow: 0 0 10px #00ff88;
}

/* Buttons */
.btn-success {
	width: 100%;
	padding: 12px;
	font-size: 16px;
	border-radius: 25px;
}

.btn-secondary {
	border-radius: 20px;
}

/* Labels */
label {
	margin-top: 10px;
	font-weight: 500;
}

/* Animations */
@keyframes zoomBg {
	from { background-size: 100%; }
	to { background-size: 110%; }
}

</style>

</head>

<body>

	<div class="overlay"></div>

	<div class="glass-box">

		<!-- 🔥 Header with Back Button -->
		<div class="header">
			<h3>🌾 Add Farmer</h3>

			<a href="farmers.jsp" class="btn btn-secondary btn-sm">
				Back
			</a>
		</div>

		<!-- Form -->
		<form action="addFarmer" method="post">

			<label>Name</label>
			<input type="text" name="name" class="form-control" placeholder="Enter Name" required>

			<label>Village</label>
			<input type="text" name="village" class="form-control" placeholder="Enter Village" required>

			<label>Mobile</label>
			<input type="text" name="mobile" class="form-control mb-3" placeholder="Enter a Mobile Number"required>

			<button type="submit" class="btn btn-success">
				Add Farmer
			</button>

		</form>

	</div>

</body>
</html>