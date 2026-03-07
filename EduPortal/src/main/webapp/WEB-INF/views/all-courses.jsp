<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Courses | EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-900">

    <div class="flex min-h-screen">
        <aside class="w-64 bg-slate-900 text-white flex-shrink-0">
            <div class="p-6"><h4 class="text-xl font-bold flex items-center gap-2">🎓 EduPortal</h4></div>
            <nav class="mt-4 px-4 space-y-2">
                <a href="student" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">🏠 Dashboard</a>
                <a href="student-courses" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">📚 My Courses</a>
                <a href="#" class="block py-2.5 px-4 rounded-lg bg-blue-600">📚 All Courses</a>
                <a href="#" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">📝 Assignments</a>
                <a href="#" class="block py-2.5 px-4 rounded-lg hover:bg-slate-800 transition">👤 Profile</a>
            </nav>
        </aside>

        <main class="flex-1 p-8">
            <h1 class="text-2xl font-bold mb-6">Explore Courses</h1>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                
                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 flex flex-col justify-between">
                    <div>
                        <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center text-blue-600 mb-4">🐍</div>
                        <h3 class="font-bold text-lg">Python for Data Science</h3>
                        <p class="text-sm text-gray-500 mt-2 mb-4">Learn basics to advanced Python for analytics.</p>
                    </div>
                    <form action="enroll" method="post">
                        <input type="hidden" name="courseId" value="101">
                        <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-lg font-bold hover:bg-blue-700 transition">Enroll Now</button>
                    </form>
                </div>

                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 flex flex-col justify-between">
                    <div>
                        <div class="w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center text-green-600 mb-4">💾</div>
                        <h3 class="font-bold text-lg">Database Management</h3>
                        <p class="text-sm text-gray-500 mt-2 mb-4">Master SQL, MongoDB, and NoSQL basics.</p>
                    </div>
                    <form action="enroll" method="post">
                        <input type="hidden" name="courseId" value="102">
                        <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-lg font-bold hover:bg-blue-700 transition">Enroll Now</button>
                    </form>
                </div>

                <div class="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 flex flex-col justify-between">
                    <div>
                        <div class="w-12 h-12 bg-amber-100 rounded-lg flex items-center justify-center text-amber-600 mb-4">☁️</div>
                        <h3 class="font-bold text-lg">Cloud Computing</h3>
                        <p class="text-sm text-gray-500 mt-2 mb-4">AWS Essentials and deployment strategies.</p>
                    </div>
                    <form action="enroll" method="post">
                        <input type="hidden" name="courseId" value="103">
                        <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded-lg font-bold hover:bg-blue-700 transition">Enroll Now</button>
                    </form>
                </div>

            </div>
        </main>
    </div>
</body>
</html>