<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.agri.dao.ReportDAO, com.agri.model.Report"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Field Visit Reports</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>

/* Agriculture background image */
body {
	margin: 0;
	padding: 0;
	background-image: url("images/agri3.jpeg");
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
	box-shadow: 0 10px 35px rgba(0, 0, 0, 0.4);
	animation: slideUp 0.7s ease;
}

/* Heading */
.heading {
	font-weight: bold;
	color: #dc3545;
}

/* Add button hover */
.btn-danger:hover {
	transform: scale(1.05);
	transition: 0.3s;
}

/* Delete button hover */
.btn-sm:hover {
	transform: scale(1.1);
	transition: 0.3s;
}

/* Table hover effect */
.table tbody tr:hover {
	background-color: rgba(220, 53, 69, 0.15);
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
					<h3 class="heading mb-3">Field Visit Reports</h3>
					
					<a href="dashboard.jsp" class="btn btn-warning">
						Back
					</a>
			 	</div>

				<a href="addReport.jsp" class="btn btn-danger mb-3"> Add Report
				</a>

				<table class="table table-bordered table-hover">

					<tr class="table-dark">

						<th>ID</th>
						<th>Farmer Name</th>
						<th>Problem</th>
						<th>Suggestion</th>
						<th>Action</th>

					</tr>

					<%
					ReportDAO dao = new ReportDAO();

					List<Report> list = dao.getAllReports();

					for (Report r : list) {
					%>

					<tr>

						<td><%=r.getId()%></td>
						<td><%=r.getFarmerName()%></td>
						<td><%=r.getProblem()%></td>
						<td><%=r.getSuggestion()%></td>

						<td><a href="deleteReport?id=<%=r.getId()%>"
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