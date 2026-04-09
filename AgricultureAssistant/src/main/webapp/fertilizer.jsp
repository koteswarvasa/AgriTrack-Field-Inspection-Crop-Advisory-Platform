<%@ page
	import="java.util.*, com.agri.dao.FertilizerDAO, com.agri.model.Fertilizer"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Fertilizers</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* Agriculture background image */
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
	padding-top: 40px;
	padding-bottom: 40px;
	background: rgba(0, 0, 0, 0.45);
}

/* Glass blur container */
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

/* Button hover */
.btn-success:hover {
	transform: scale(1.05);
	transition: 0.3s;
}

.btn-danger:hover {
	transform: scale(1.1);
	transition: 0.3s;
}

/* Table hover */
.table tbody tr:hover {
	background-color: rgba(25, 135, 84, 0.15);
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

		<div class="container">

			<div class="glass-box">
				
				<div class="d-flex justify-content-between align-items-center mb-3">
					<h3 class="heading mb-3">🌾 Fertilizer List</h3>
					
					<a href="dashboard.jsp" class="btn btn-warning">
						Back
					</a>
			 	</div>

				<a href="addFertilizer.jsp" class="btn btn-success mb-3"> Add
					Fertilizer </a>

				<table class="table table-bordered table-hover">

					<tr class="table-dark">

						<th>ID</th>
						<th>Crop</th>
						<th>Fertilizer</th>
						<th>Description</th>
						<th>Action</th>

					</tr>

					<%
					FertilizerDAO dao = new FertilizerDAO();

					List<Fertilizer> list = dao.getAllFertilizers();

					for (Fertilizer f : list) {
					%>

					<tr>

						<td><%=f.getId()%></td>
						<td><%=f.getCropName()%></td>
						<td><%=f.getFertilizerName()%></td>
						<td><%=f.getDescription()%></td>

						<td><a href="deleteFertilizer?id=<%=f.getId()%>"
							class="btn btn-danger btn-sm"> Delete </a></td>

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