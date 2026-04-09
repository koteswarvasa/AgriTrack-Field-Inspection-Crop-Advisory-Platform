<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.agri.dao.CropDAO, com.agri.model.Crop"%>

<!DOCTYPE html>
<html>
<head>

<title>Crops</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* Coconut trees background (clear, no blur) */
body {
	margin: 0;
	padding: 0;
	background:
		url('https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1920&q=80')
		no-repeat center center/cover;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
}

/* Overlay WITHOUT blur */
.overlay {
	min-height: 100vh;
	padding-top: 40px;
	padding-bottom: 40px;
	background: rgba(0, 0, 0, 0.45);
}

/* Blur only inside container (like Manage Farmers) */
.glass-box {
	background: rgba(255, 255, 255, 0.65);
	backdrop-filter: blur(15px);
	-webkit-backdrop-filter: blur(15px);
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
	animation: slideUp 0.7s ease;
}

/* Heading */
.heading {
	font-weight: bold;
	color: #198754;
}

/* Hover effects */
.table tbody tr:hover {
	background-color: rgba(25, 135, 84, 0.15);
	transition: 0.3s;
}

.btn-success:hover {
	transform: scale(1.05);
}

.btn-danger:hover {
	transform: scale(1.1);
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

		<div class="container">

			<div class="glass-box">

				<div class="d-flex justify-content-between align-items-center mb-3">
					<h3 class="heading mb-3">🌴 Crop List</h3>
					
					<a href="dashboard.jsp" class="btn btn-warning">
						Back
					</a>
			 	</div>

				<a href="addCrop.jsp" class="btn btn-success mb-3">Add Crop</a>

				<table class="table table-bordered table-hover">

					<tr class="table-dark">

						<th>ID</th>
						<th>Farmer</th>
						<th>Crop</th>
						<th>Land Area</th>
						<th>Season</th>
						<th>Action</th>

					</tr>

					<%
					CropDAO dao = new CropDAO();
					List<Crop> list = dao.getAllCrops();

					for (Crop c : list) {
					%>

					<tr>

						<td><%=c.getId()%></td>
						<td><%=c.getFarmerName()%></td>
						<td><%=c.getCropName()%></td>
						<td><%=c.getLandArea()%></td>
						<td><%=c.getSeason()%></td>

						<td><a href="deleteCrop?id=<%=c.getId()%>"
							class="btn btn-danger btn-sm">Delete</a></td>

					</tr>

					<%
					}
					%>

				</table>

			</div>

		</div>

	</div>

</body>
</html>