<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50">

<div class="min-h-screen flex items-center justify-center p-4 bg-[linear-gradient(135deg,#4e73df,#1cc88a)]">
    
    <div class="bg-white p-8 rounded-3xl shadow-2xl w-full max-w-md border border-gray-100">
        
        <div class="text-center mb-8">
            <div class="text-4xl mb-2">🎓</div>
            <h2 class="text-3xl font-extrabold text-gray-900 tracking-tight">Create Account</h2>
            <p class="text-gray-500 text-sm mt-1">Join the EduPortal community today</p>
        </div>

        <form action="${pageContext.request.contextPath}/registerUser" method="post" id="regForm">

            <div class="mb-4">
                <label class="block text-xs font-bold text-gray-700 uppercase mb-1">I am a...</label> 
                <select name="role" id="roleSelect" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none transition" required>
                    <option value="">Select your role</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                </select>
            </div>

            <div id="student-fields" class="hidden mb-4 p-4 bg-blue-50 rounded-xl border border-blue-100">
                <label class="block text-xs font-bold text-blue-800 uppercase mb-1">Semester</label> 
                <input type="number" name="semester" class="w-full p-2 border border-blue-200 rounded-lg outline-none" placeholder="e.g., 6">
            </div>

            <div id="teacher-fields" class="hidden mb-4 p-4 bg-green-50 rounded-xl border border-green-100">
                <label class="block text-xs font-bold text-green-800 uppercase mb-1">Department</label> 
                <input type="text" name="department" class="w-full p-2 border border-green-200 rounded-lg outline-none" placeholder="e.g., Computer Science">
            </div>

            <div class="grid grid-cols-2 gap-4">
                <div class="mb-4">
                    <label class="block text-xs font-bold text-gray-700 uppercase mb-1">Full Name</label> 
                    <input type="text" name="name" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none" placeholder="Rahul" required />
                </div>
                <div class="mb-4">
                    <label class="block text-xs font-bold text-gray-700 uppercase mb-1">Mobile</label> 
                    <input type="text" name="mobile" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none" placeholder="9876543210" required />
                </div>
            </div>

            <div class="mb-4">
                <label class="block text-xs font-bold text-gray-700 uppercase mb-1">Email</label> 
                <input type="email" name="email" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none" placeholder="rahul@example.com" required />
            </div>
            
            <div class="grid grid-cols-2 gap-4">
                <div class="mb-4">
                    <label class="block text-xs font-bold text-gray-700 uppercase mb-1">Password</label>
                    <input type="password" name="password" id="password" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none" placeholder="••••••••" required />
                </div>
                <div class="mb-4">
                    <label class="block text-xs font-bold text-gray-700 uppercase mb-1">Confirm</label>
                    <input type="password" id="confirmPassword" class="w-full p-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none" placeholder="••••••••" required />
                </div>
            </div>

            <button type="submit" class="w-full bg-gray-900 hover:bg-black text-white font-bold py-4 rounded-2xl transition duration-200 shadow-xl mt-2">
                Create Account
            </button>
        </form>

        <div class="text-center mt-6 text-gray-500 text-sm">
            Already have an account? <a href="${pageContext.request.contextPath}/login" class="text-blue-600 font-semibold hover:underline">Log in</a>
        </div>
    </div>
</div>

<script>
    // Logic to toggle role specific fields
    const roleSelect = document.getElementById('roleSelect');
    const studentFields = document.getElementById('student-fields');
    const teacherFields = document.getElementById('teacher-fields');

    roleSelect.addEventListener('change', function() {
        if(this.value === 'student') {
            studentFields.classList.remove('hidden');
            teacherFields.classList.add('hidden');
        } else if(this.value === 'teacher') {
            teacherFields.classList.remove('hidden');
            studentFields.classList.add('hidden');
        } else {
            studentFields.classList.add('hidden');
            teacherFields.classList.add('hidden');
        }
    });
</script>

<jsp:include page="includes/footer.jsp" />

</body>
</html>