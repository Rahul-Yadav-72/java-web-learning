<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>My Progress</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f4f6f9;
}

.card {
	border-radius: 10px;
}
</style>
</head>

<body>

	<div class="container mt-4">

		<a href="${pageContext.request.contextPath}/student"
			class="btn btn-secondary mb-3"> ⬅ Back to Dashboard </a>

		<h2 class="mb-4">📊 My Course Progress</h2>

		<!-- Java -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<h5>Java Programming</h5>
				<div class="progress mt-3">
					<div class="progress-bar bg-success" style="width: 70%">70%
						Completed</div>
				</div>
			</div>
		</div>

		<!-- Web Dev -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<h5>Web Development</h5>
				<div class="progress mt-3">
					<div class="progress-bar bg-warning" style="width: 40%">40%
						Completed</div>
				</div>
			</div>
		</div>

		<!-- Spring -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<h5>Spring Framework</h5>
				<div class="progress mt-3">
					<div class="progress-bar bg-danger" style="width: 20%">20%
						Completed</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>