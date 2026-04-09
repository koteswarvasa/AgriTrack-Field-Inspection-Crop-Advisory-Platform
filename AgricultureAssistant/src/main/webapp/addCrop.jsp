<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Add Crop</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* Coconut trees background */
body {
	background:
		url('https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1920&q=80')
		no-repeat center center/cover;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

/* Dark overlay */
.overlay {
	background: rgba(0, 0, 0, 0.6);
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

/* Glass form box */
.glass-box {
	background: rgba(255, 255, 255, 0.95);
	padding: 35px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
	width: 100%;
	max-width: 500px;
	animation: slideUp 0.8s ease;
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

/* Button hover */
.btn-success {
	width: 100%;
	font-weight: bold;
	transition: 0.3s;
}

.btn-success:hover {
	transform: scale(1.05);
}

/* Input focus */
.form-control:focus {
	border-color: #198754;
	box-shadow: 0 0 8px rgba(25, 135, 84, 0.5);
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
			<div class="header">
				<h3>🌴 Add Crop</h3>
				
				<a href="crops.jsp" class="btn btn-secondary btn-sm">
				Back
			</a>
			</div>

			<form action="addCrop" method="post">

				<label>Farmer Name</label> <input name="farmerName" class="form-control mb-2" placeholder="Enter Farmer Name" required> 
					
				<label>Crop Name</label> <input name="cropName" class="form-control mb-2" placeholder="Enter Crop Name" required>

				<label>Land Area</label> <input name="landArea"class="form-control mb-2" placeholder="Enter Land Area" required> 
				
				<label>Season</label> 
					<select name="season" class="form-control mb-3">

						<option>Kharif</option>
						<option>Rabi</option>
						<option>Zaid</option>

					</select>

				<button class="btn btn-success">Add Crop</button>

			</form>

		</div>

	</div>

</body>
</html>