<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login | EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>body { font-family: 'Inter', sans-serif; }</style>
</head>
<body class="bg-gray-50">

    <div class="min-h-screen flex items-center justify-center p-4 bg-slate-100">
        
        <div class="bg-white p-10 rounded-3xl shadow-2xl w-full max-w-md border border-gray-100">
            
            <div class="text-center mb-8">
                <div class="text-5xl mb-4">🎓</div>
                <h3 class="text-3xl font-bold text-gray-900 tracking-tight">Welcome Back</h3>
                <p class="text-gray-500 mt-2">Please enter your details to sign in.</p>
            </div>

            <c:if test="${not empty error}">
                <div class="bg-red-50 text-red-600 px-4 py-3 rounded-xl mb-6 text-sm border border-red-100 text-center font-medium">
                    ${error}
                </div>
            </c:if>
            <c:if test="${not empty success}">
                <div class="bg-green-50 text-green-600 px-4 py-3 rounded-xl mb-6 text-sm border border-green-100 text-center font-medium">
                    ${success}
                </div>
            </c:if>

            <form action="<c:url value='/login' />" method="post" class="space-y-5">

                <div>
                    <label class="block text-sm font-semibold text-gray-700 mb-2">Select Role</label> 
                    <select name="role" class="w-full px-4 py-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none transition" required>
                        <option value="">-- Select Role --</option>
                        <option value="student">Student</option>
                        <option value="teacher">Teacher</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>

                <div>
                    <label class="block text-sm font-semibold text-gray-700 mb-2">Email Address</label> 
                    <input type="email" name="email" class="w-full px-4 py-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none transition" placeholder="name@eduportal.com" required />
                </div>
                
                <div>
                    <div class="flex justify-between mb-2">
                        <label class="block text-sm font-semibold text-gray-700">Password</label>
                        <a href="<c:url value='/forget' />" class="text-sm text-blue-600 hover:text-blue-700 font-medium">Forgot?</a>
                    </div>
                    <input type="password" name="password" class="w-full px-4 py-3 bg-gray-50 border border-gray-200 rounded-xl focus:ring-2 focus:ring-blue-500 outline-none transition" placeholder="••••••••" required />
                </div>

                <button type="submit" class="w-full bg-slate-900 hover:bg-black text-white font-bold py-4 rounded-xl transition duration-200 shadow-lg shadow-gray-200">
                    Sign In
                </button>
            </form>

            <div class="text-center mt-8 text-gray-600 text-sm">
                Don't have an account? <a href="<c:url value='/register' />" class="text-blue-600 font-semibold hover:underline">Register Here</a>
            </div>
        </div>
    </div>

    <jsp:include page="includes/footer.jsp" />

</body>
</html>