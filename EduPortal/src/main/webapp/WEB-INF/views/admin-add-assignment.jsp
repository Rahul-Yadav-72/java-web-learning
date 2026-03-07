<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>Admin - Add Assignment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f6f9;
font-family:'Segoe UI';
}

.sidebar{
height:100vh;
background:#111827;
padding-top:20px;
}

.sidebar a{
color:white;
display:block;
padding:12px;
text-decoration:none;
border-radius:5px;
margin:5px 10px;
}

.sidebar a:hover{
background:#1f2937;
}

.btn-custom{
border-radius:50px;
padding:8px 25px;
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

<a href="admin-manage-students">👨‍🎓 Manage Students</a>

<a href="admin-manage-teachers">👨‍🏫 Manage Teachers</a>

<a href="admin-manage-courses">📚 Manage Courses</a>

<a href="admin-manage-assignments" class="bg-primary">📝 Manage Assignments</a>

<a href="admin-manage-quizzes">🧠 Manage Quizzes</a>

<a href="admin-manage-payments">💰 Payments</a>

<a href="admin-reports">📊 Reports</a>

<a href="admin-settings">⚙ Settings</a>

<a href="login">🚪 Logout</a>

</div>

<!-- Main Content -->

<div class="col-md-10 p-4">

<nav class="navbar navbar-light bg-white shadow-sm mb-4">

<div class="container-fluid">
<span class="navbar-brand mb-0 h5">➕ Add New Assignment</span>
</div>

</nav>

<div class="card shadow p-4">

<form action="save-assignment" method="post">

<!-- Assignment Details -->

<div class="mb-3">
<label>Assignment Title</label>
<input type="text" name="title" class="form-control" required>
</div>

<div class="mb-3">
<label>Course</label>

<select name="course" class="form-select" required>

<option value="">Select Course</option>

<option value="java">Java Programming</option>

<option value="python">Python Programming</option>

<option value="mern">MERN Stack Development</option>

</select>

<c:forEach var="course" items="${courses}">
<option value="${course.name}">
${course.name}
</option>
</c:forEach>

</select>

</div>

<div class="mb-3">

<label>Teacher</label>

<select name="teacherId" class="form-select" required>

<option value="">Select Teacher</option>

<c:forEach var="teacher" items="${teachers}">
<option value="${teacher.id}">
${teacher.fullName}
</option>
</c:forEach>

</select>

</div>

<div class="mb-3">
<label>Due Date</label>
<input type="date" name="dueDate" class="form-control" required>
</div>

<div class="mb-3">
<label>Description</label>
<textarea name="description" class="form-control" rows="3"></textarea>
</div>

<hr>

<h4>Assignment Questions</h4>

<div id="questionsContainer">

<!-- Question 1 -->

<div class="card p-3 mb-3">

<h5>Question 1</h5>

<input type="text" name="questions[]" class="form-control mb-2" placeholder="Enter Question" required>

<div class="row">

<div class="col-md-6 mb-2">
<input type="text" name="option1[]" class="form-control" placeholder="Option 1" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option2[]" class="form-control" placeholder="Option 2" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option3[]" class="form-control" placeholder="Option 3" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option4[]" class="form-control" placeholder="Option 4" required>
</div>

</div>

<label>Correct Answer</label>

<select name="correctAnswer[]" class="form-select">

<option value="1">Option 1</option>
<option value="2">Option 2</option>
<option value="3">Option 3</option>
<option value="4">Option 4</option>

</select>

</div>

</div>

<button type="button" onclick="addQuestion()" class="btn btn-primary mb-3">

➕ Add Another Question

</button>

<button type="submit" class="btn btn-success btn-custom w-100">

Save Assignment

</button>

</form>

</div>

</div>

</div>

</div>

<script>

let questionCount = 1;

function addQuestion(){

questionCount++;

let html = `

<div class="card p-3 mb-3">

<h5>Question ${questionCount}</h5>

<input type="text" name="questions[]" class="form-control mb-2" placeholder="Enter Question" required>

<div class="row">

<div class="col-md-6 mb-2">
<input type="text" name="option1[]" class="form-control" placeholder="Option 1" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option2[]" class="form-control" placeholder="Option 2" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option3[]" class="form-control" placeholder="Option 3" required>
</div>

<div class="col-md-6 mb-2">
<input type="text" name="option4[]" class="form-control" placeholder="Option 4" required>
</div>

</div>

<label>Correct Answer</label>

<select name="correctAnswer[]" class="form-select">

<option value="1">Option 1</option>
<option value="2">Option 2</option>
<option value="3">Option 3</option>
<option value="4">Option 4</option>

</select>

</div>

`;

document.getElementById("questionsContainer").insertAdjacentHTML("beforeend",html);

}

</script>

</body>
</html>