<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Courses | EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 text-gray-900">

    <div class="flex min-h-screen">
        <aside class="w-64 bg-slate-900 text-white flex-shrink-0">
            <div class="p-6">
                <h4 class="text-xl font-bold text-center">🎓 EduPortal</h4>
            </div>
            <nav class="mt-4 px-4 space-y-2">
                <a href="${pageContext.request.contextPath}/student" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">🏠 Dashboard</a>
                <a href="${pageContext.request.contextPath}/student/courses" class="block py-2.5 px-4 rounded-lg bg-blue-600">📚 My Courses</a>
                <a href="${pageContext.request.contextPath}/student/allcourses" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">📚 All Courses</a>
                <a href="${pageContext.request.contextPath}/student/assignments" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">📝 Assignments</a>
                <a href="${pageContext.request.contextPath}/student/quiz" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">🧠 Quiz</a>
                <a href="${pageContext.request.contextPath}/student/progress" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">📊 Progress</a>
                <a href="${pageContext.request.contextPath}/student/profile" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">👤 Profile</a>
                <div class="pt-10">
                    <a href="${pageContext.request.contextPath}/login" class="block py-2.5 px-4 rounded-lg bg-red-900/30 text-red-400 hover:bg-red-900 hover:text-white transition">🚪 Logout</a>
                </div>
            </nav>
        </aside>

        <main class="flex-1 p-8">
            
            <header class="bg-white shadow-sm p-4 rounded-2xl mb-8 flex justify-between items-center border border-gray-100">
                <h1 class="text-xl font-bold">📚 My Courses</h1>
            </header>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 border-l-4 border-l-blue-600">
                    <p class="text-sm text-gray-500">Total Courses</p>
                    <h3 class="text-2xl font-bold mt-1">3</h3>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 border-l-4 border-l-green-500">
                    <p class="text-sm text-gray-500">Completed</p>
                    <h3 class="text-2xl font-bold mt-1">1</h3>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 border-l-4 border-l-yellow-500">
                    <p class="text-sm text-gray-500">In Progress</p>
                    <h3 class="text-2xl font-bold mt-1">2</h3>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                
                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 hover:shadow-lg transition-all">
                    <h5 class="font-bold text-lg mb-1">Java Programming</h5>
                    <p class="text-xs text-gray-400 mb-4">Duration: 8 Weeks</p>
                    <div class="w-full bg-gray-100 rounded-full h-2 mb-4">
                        <div class="bg-green-500 h-2 rounded-full" style="width: 70%"></div>
                    </div>
                    <a href="course-details.jsp" class="block text-center bg-blue-600 text-white font-bold py-2 rounded-lg hover:bg-blue-700 transition">Continue</a>
                </div>

                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 hover:shadow-lg transition-all">
                    <h5 class="font-bold text-lg mb-1">Web Development</h5>
                    <p class="text-xs text-gray-400 mb-4">Duration: 6 Weeks</p>
                    <div class="w-full bg-gray-100 rounded-full h-2 mb-4">
                        <div class="bg-yellow-500 h-2 rounded-full" style="width: 40%"></div>
                    </div>
                    <a href="course-details.jsp" class="block text-center bg-blue-600 text-white font-bold py-2 rounded-lg hover:bg-blue-700 transition">Continue</a>
                </div>

                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 hover:shadow-lg transition-all">
                    <h5 class="font-bold text-lg mb-1">Spring Framework</h5>
                    <p class="text-xs text-gray-400 mb-4">Duration: 5 Weeks</p>
                    <div class="w-full bg-gray-100 rounded-full h-2 mb-4">
                        <div class="bg-red-500 h-2 rounded-full" style="width: 20%"></div>
                    </div>
                    <a href="course-details.jsp" class="block text-center bg-blue-600 text-white font-bold py-2 rounded-lg hover:bg-blue-700 transition">Continue</a>
                </div>

            </div>
        </main>
    </div>

</body>
</html>