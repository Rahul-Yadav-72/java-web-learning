<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            height: 100vh;
            background-color: #111827;
            padding-top: 20px;
        }
        .sidebar a {
            color: white;
            display: block;
            padding: 12px;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #1f2937;
        }
        .card:hover {
            transform: scale(1.02);
            transition: 0.3s;
        }
    </style>
</head>

<body>

<div class="container-fluid">
    <div class="row">

        <!-- Sidebar -->
        <div class="col-md-2 sidebar">
            <h4 class="text-center text-white">Admin Panel</h4>
            <hr class="text-white">

            <a href="admin">🏠 Dashboard</a>
            <a href="#">👨‍🎓 Manage Students</a>
            <a href="#">👨‍🏫 Manage Teachers</a>
            <a href="#">📚 Manage Courses</a>
            <a href="#">⚙ Settings</a>
            <a href="login">🚪 Logout</a>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 p-4">

            <!-- Top Navbar -->
            <nav class="navbar navbar-light bg-white shadow-sm mb-4">
                <div class="container-fluid">
                    <span class="navbar-brand mb-0 h5">Welcome, Admin 👑</span>
                </div>
            </nav>

            <!-- Statistics Cards -->
            <div class="row mb-4">

                <div class="col-md-3">
                    <div class="card bg-primary text-white shadow p-3">
                        <h6>Total Students</h6>
                        <h3>500</h3>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-success text-white shadow p-3">
                        <h6>Total Teachers</h6>
                        <h3>50</h3>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-warning text-dark shadow p-3">
                        <h6>Total Courses</h6>
                        <h3>30</h3>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-danger text-white shadow p-3">
                        <h6>Active Users</h6>
                        <h3>420</h3>
                    </div>
                </div>

            </div>

            <!-- Recent Users Table -->
            <div class="card shadow">
                <div class="card-header bg-dark text-white">
                    Recent Registrations
                </div>
                <div class="card-body">

                    <table class="table table-bordered table-hover">
                        <thead class="table-light">
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Rahul Sharma</td>
                                <td>rahul@email.com</td>
                                <td>Student</td>
                                <td><span class="badge bg-success">Active</span></td>
                                <td>
                                    <button class="btn btn-sm btn-danger">Delete</button>
                                </td>
                            </tr>

                            <tr>
                                <td>Anita Verma</td>
                                <td>anita@email.com</td>
                                <td>Teacher</td>
                                <td><span class="badge bg-warning text-dark">Pending</span></td>
                                <td>
                                    <button class="btn btn-sm btn-success">Approve</button>
                                </td>
                            </tr>

                            <tr>
                                <td>Rohit Singh</td>
                                <td>rohit@email.com</td>
                                <td>Student</td>
                                <td><span class="badge bg-success">Active</span></td>
                                <td>
                                    <button class="btn btn-sm btn-danger">Delete</button>
                                </td>
                            </tr>
                        </tbody>

                    </table>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>