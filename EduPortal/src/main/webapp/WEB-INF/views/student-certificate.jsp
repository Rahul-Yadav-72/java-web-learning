<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>My Certificates</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f4f6f9;
}

.certificate-card {
	border: 2px solid #0d6efd;
	border-radius: 15px;
	padding: 20px;
}

.certificate-title {
	font-size: 28px;
	font-weight: bold;
	color: #0d6efd;
}
</style>
</head>

<body>

	<div class="container mt-5">

		<a href="${pageContext.request.contextPath}/student"
			class="btn btn-secondary mb-3"> ⬅ Back to Dashboard </a>

		<h2 class="mb-4">🎓 My Certificates</h2>

		<div class="card shadow certificate-card">

			<div class="card-body text-center">

				<div class="certificate-title mb-3">Certificate of Completion
				</div>

				<p>This is to certify that</p>

				<h4 class="text-primary">Rahul Kumar</h4>

				<p>has successfully completed the course</p>

				<h5>Java Programming</h5>

				<p class="mt-3">Date: 14 June 2025</p>

				<button class="btn btn-success mt-3">Download Certificate</button>

			</div>

		</div>

	</div>

</body>
</html>