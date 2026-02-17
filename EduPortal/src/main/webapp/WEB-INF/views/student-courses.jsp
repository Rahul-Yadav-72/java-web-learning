<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>My Courses</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f4f6f9;
}

.card:hover {
	transform: scale(1.03);
	transition: 0.3s;
}
</style>
</head>

<body>

	<div class="container mt-4">

		<a href="${pageContext.request.contextPath}/student"
			class="btn btn-secondary mb-3"> ⬅ Back to Dashboard </a>

		<h2 class="mb-4">📚 My Courses</h2>

		<div class="row">

			<div class="col-md-4">
				<div class="card shadow">
					<div class="card-body text-center">
						<h5>Java Programming</h5>
						<p>Duration: 8 Weeks</p>
						<a href="course-details.jsp" class="btn btn-primary w-100">View
							Course</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card shadow">
					<div class="card-body text-center">
						<h5>Web Development</h5>
						<p>Duration: 6 Weeks</p>
						<a href="course-details.jsp" class="btn btn-primary w-100">View
							Course</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card shadow">
					<div class="card-body text-center">
						<h5>Spring Framework</h5>
						<p>Duration: 5 Weeks</p>
						<a href="course-details.jsp" class="btn btn-primary w-100">View
							Course</a>
					</div>
				</div>
			</div>

		</div>

	</div>

</body>
</html>