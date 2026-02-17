<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Java Quiz</title>
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

		<h2 class="mb-4">🧠 Java Quiz</h2>

		<div class="card shadow">
			<div class="card-body">

				<form>

					<div class="mb-4">
						<h6>1. Java is?</h6>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q1"> <label
								class="form-check-label">Programming Language</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q1"> <label
								class="form-check-label">Operating System</label>
						</div>
					</div>

					<div class="mb-4">
						<h6>2. OOP stands for?</h6>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q2"> <label
								class="form-check-label">Object Oriented Programming</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q2"> <label
								class="form-check-label">Only One Program</label>
						</div>
					</div>

					<div class="mb-4">
						<h6>3. Which is not a primitive type?</h6>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q3"> <label
								class="form-check-label">int</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="q3"> <label
								class="form-check-label">String</label>
						</div>
					</div>

					<button class="btn btn-success w-100">Submit Quiz</button>

				</form>

			</div>
		</div>

	</div>

</body>
</html>