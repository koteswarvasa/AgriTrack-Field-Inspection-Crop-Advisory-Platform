<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Add Fertilizer</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* Agriculture background */
body {
	margin: 0;
	padding: 0;
	background-image: url("images/agri2.jpeg");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

/* Overlay */
.overlay {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: rgba(0, 0, 0, 0.45);
}

/* Glass blur form container */
.glass-box {
	background: rgba(255, 255, 255, 0.65);
	backdrop-filter: blur(15px);
	-webkit-backdrop-filter: blur(15px);
	padding: 35px;
	border-radius: 15px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
	width: 100%;
	max-width: 500px;
	animation: slideUp 0.7s ease;
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

/* Input focus */
.form-control:focus {
	border-color: #198754;
	box-shadow: 0 0 8px rgba(25, 135, 84, 0.5);
}

/* Button hover */
.btn-success {
	width: 100%;
	font-weight: bold;
}

.btn-success:hover {
	transform: scale(1.05);
	transition: 0.3s;
}

/* Animation */
@
keyframes slideUp {from { opacity:0;
	transform: translateY(40px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>

</head>

<body>

	<div class="overlay">

		<div class="glass-box">

			<!-- 🔥 Header with Back Button -->
			<div class="header">
				<h3>🌱 Add Fertilizer</h3>

				<a href="fertilizer.jsp" class="btn btn-secondary btn-sm"> Back
				</a>
			</div>

			<form action="addFertilizer" method="post">

				<label>Crop Name</label> <input name="cropName"
					class="form-control mb-2" placeholder="Enter Crop Name" required> <label>Fertilizer
					Name</label> <input name="fertilizerName" class="form-control mb-2" placeholder="Enter Fertilizer Name"
					required> <label>Description</label>
				<textarea name="description" class="form-control mb-3" placeholder="Enter Description" required></textarea>

				<button class="btn btn-success">Add Fertilizer</button>

			</form>

		</div>

	</div>

</body>
</html>