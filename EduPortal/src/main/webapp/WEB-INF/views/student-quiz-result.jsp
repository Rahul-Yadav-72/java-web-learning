<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quiz Result</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f4f6f9;
}

.result-card {
	border-radius: 15px;
}

.score {
	font-size: 40px;
	font-weight: bold;
}
</style>
</head>

<body>

	<div class="container mt-5">

		<a href="${pageContext.request.contextPath}/student"
			class="btn btn-secondary mb-3"> ⬅ Back to Dashboard </a>

		<div class="card shadow text-center result-card">
			<div class="card-body">

				<h2 class="mb-4">🧠 Quiz Result</h2>

				<p class="score text-success">8 / 10</p>

				<p class="text-muted">You scored 80%</p>

				<hr>

				<p>
					<strong>Status:</strong> <span class="badge bg-success">Passed</span>
				</p>

				<p>Great job! Keep improving your skills 🚀</p>

				<a href="student-quiz.jsp" class="btn btn-primary mt-3"> Retake
					Quiz </a>

			</div>
		</div>

	</div>

</body>
</html>