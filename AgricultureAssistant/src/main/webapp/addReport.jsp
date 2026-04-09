<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Add Field Visit Report</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* 🌾 Rice field background */
body {
	background: url("images/agri2.jpeg");
	background-size: cover;
	background-position: center;
	background-attachment: fixed;
	min-height: 100vh;
}

/* 🌫 Glass effect form */
.glass-card {
	background: rgba(255, 255, 255, 0.25);
	backdrop-filter: blur(12px);
	border-radius: 15px;
	padding: 30px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
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
/* ✨ Title style */
.title {
	font-weight: bold;
	color: #14532d;
	text-align: center;
	margin-bottom: 20px;
}

/* 🎨 Gradient button */
.btn-agri {
	background: linear-gradient(45deg, #198754, #20c997);
	border: none;
	color: white;
	font-weight: bold;
	width: 100%;
}

.btn-agri:hover {
	background: linear-gradient(45deg, #157347, #1aa179);
}

/* 📦 Center container */
.main-container {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

</head>

<body>

	<div class="container main-container">

		<div class="col-md-6">

			<div class="glass-card">
				
				<!-- 🔥 Header with Back Button -->
			<div class="header">
				<h3>🌾 Add Field Visit Report</h3>

				<a href="fertilizer.jsp" class="btn btn-secondary btn-sm"> Back
				</a>
			</div>

				<form action="addReport" method="post">

					<label class="fw-bold">Farmer Name</label> <input name="farmerName"
						class="form-control mb-3" placeholder="Enter farmer name" required>

					<label class="fw-bold">Problem</label>
					<textarea name="problem" class="form-control mb-3" rows="3"
						placeholder="Describe farmer problem" required></textarea>

					<label class="fw-bold">Suggestion</label>
					<textarea name="suggestion" class="form-control mb-4" rows="3"
						placeholder="Enter suggestion" required></textarea>

					<button class="btn btn-agri">➕ Add Report</button>

				</form>

			</div>

		</div>

	</div>

</body>
</html>