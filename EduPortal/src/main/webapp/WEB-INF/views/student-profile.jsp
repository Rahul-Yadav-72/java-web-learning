<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>My Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f4f6f9;
}

.profile-card {
	border-radius: 15px;
}
</style>
</head>

<body>

	<div class="container mt-5">

		<a href="${pageContext.request.contextPath}/student"
			class="btn btn-secondary mb-3"> ⬅ Back to Dashboard </a>

		<div class="card shadow profile-card">
			<div class="card-body">

				<h2 class="mb-4">👤 My Profile</h2>

				<div class="row">
					<div class="col-md-4 text-center">
						<img src="https://via.placeholder.com/150"
							class="rounded-circle mb-3" width="150" height="150">
						<h5>Rahul Kumar</h5>
						<p class="text-muted">Student</p>
					</div>

					<div class="col-md-8">
						<form>

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" value="Rahul Kumar">
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									class="form-control" value="rahul@email.com">
							</div>

							<div class="mb-3">
								<label class="form-label">Phone</label> <input type="text"
									class="form-control" value="9876543210">
							</div>

							<div class="mb-3">
								<label class="form-label">Course Enrolled</label> <input
									type="text" class="form-control" value="Java Programming"
									readonly>
							</div>

							<button class="btn btn-success">Update Profile</button>

						</form>
					</div>
				</div>

			</div>
		</div>

	</div>

</body>
</html>