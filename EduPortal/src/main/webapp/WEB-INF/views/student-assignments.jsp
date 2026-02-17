<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Assignments</title>
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

		<h2 class="mb-4">📝 Assignments</h2>

		<div class="card shadow mb-4">
			<div class="card-body">
				<h5>Java OOP Assignment</h5>
				<p>Submission Deadline: 20 June 2025</p>

				<button class="btn btn-primary mb-3">Download Assignment</button>

				<form>
					<div class="mb-3">
						<label class="form-label">Upload Your Solution</label> <input
							type="file" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Submit
						Assignment</button>
				</form>
			</div>
		</div>

		<div class="card shadow">
			<div class="card-body">
				<h5>Web Development Project</h5>
				<p>Submission Deadline: 25 June 2025</p>

				<button class="btn btn-primary mb-3">Download Assignment</button>

				<form>
					<div class="mb-3">
						<input type="file" class="form-control">
					</div>
					<button class="btn btn-success">Submit Assignment</button>
				</form>
			</div>
		</div>

	</div>

</body>
</html>