<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Profile</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { background-color: #f4f6f9; }

        .sidebar {
            height: 100vh;
            background-color: #1e1e2f;
            padding-top: 20px;
        }

        .sidebar a {
            color: white;
            display: block;
            padding: 12px 20px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background-color: #2e2e3e;
        }

        .sidebar .active {
            background-color: #343a40;
        }

        .card {
            border-radius: 12px;
        }
    </style>
</head>

<body>

<!-- ✅ Top Navbar -->
<nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
        <span class="navbar-brand">👨‍🏫 Teacher Dashboard</span>
        
    </div>
</nav>

<div class="container-fluid">
<div class="row">

    <!-- ✅ Sidebar -->
    <div class="col-md-2 sidebar">
        <h5 class="text-center text-white">Menu</h5>
        <hr class="text-white">

        <a href="${pageContext.request.contextPath}/teacher">🏠 Dashboard</a>
<a href="${pageContext.request.contextPath}/teacher/courses">📚 My Courses</a>
<a href="${pageContext.request.contextPath}/teacher/add-course">➕ Add Course</a>
<a href="${pageContext.request.contextPath}/teacher/students">👥 Students</a>
<a href="${pageContext.request.contextPath}/teacher/assignments">📝 Assignments</a>
<a href="${pageContext.request.contextPath}/teacher/quizzes">🧠 Quizzes</a>
<a href="${pageContext.request.contextPath}/teacher/profile" class="active">👤 Profile</a> <a href="${pageContext.request.contextPath}/login">🚪 Logout</a>
			</div>

    <!-- ✅ Main Content -->
    <div class="col-md-10 p-4">

        <div class="row">

            <!-- Profile Card -->
            <div class="col-md-4">
                <div class="card shadow text-center p-4">
                   <!--  <img src="https://via.placeholder.com/120"
                         class="rounded-circle mb-3"
                         alt="Profile Image"> -->

                    <h5>John Doe</h5>
                    <p class="text-muted">Senior Java Instructor</p>

                    <hr>

                    <p><strong>Email:</strong> john@example.com</p>
                    <p><strong>Phone:</strong> +91 9876543210</p>
                </div>
            </div>

            <!-- Edit Profile Form -->
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        Edit Profile
                    </div>

                    <div class="card-body">

                        <form>

                            <div class="mb-3">
                                <label class="form-label fw-bold">Full Name</label>
                                <input type="text" class="form-control"
                                       value="John Doe">
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">Email</label>
                                <input type="email" class="form-control"
                                       value="john@example.com">
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">Phone</label>
                                <input type="text" class="form-control"
                                       value="+91 9876543210">
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">Specialization</label>
                                <input type="text" class="form-control"
                                       value="Java, Spring Boot, Web Development">
                            </div>

                            

                            <div class="d-flex justify-content-between">
                                <a href="teacher" class="btn btn-secondary">
                                    ⬅ Back
                                </a>

                                <button type="submit" class="btn btn-success">
                                    💾 Update Profile
                                </button>
                            </div>

                        </form>

                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>