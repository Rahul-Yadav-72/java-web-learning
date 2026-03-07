<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard | EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>body { font-family: 'Inter', sans-serif; }</style>
</head>
<body class="bg-gray-50 text-gray-900">

    <div class="flex min-h-screen">
        <aside class="w-64 bg-slate-900 text-white flex-shrink-0 fixed h-full">
            <div class="p-6">
                <h4 class="text-2xl font-bold text-white flex items-center gap-2">🎓 EduPortal</h4>
            </div>
            <nav class="mt-4 px-4 space-y-2">
                <a href="#" class="block py-3 px-4 rounded-xl bg-blue-600 text-white font-medium shadow-lg shadow-blue-900/20">🏠 Dashboard</a>
                <a href="student-courses" class="block py-3 px-4 rounded-xl text-gray-400 hover:bg-slate-800 hover:text-white transition">📚 My Courses</a>
                <a href="#" class="block py-3 px-4 rounded-xl text-gray-400 hover:bg-slate-800 hover:text-white transition">📝 Assignments</a>
                <a href="#" class="block py-3 px-4 rounded-xl text-gray-400 hover:bg-slate-800 hover:text-white transition">🧠 Quiz</a>
            </nav>
        </aside>

        <main class="flex-1 ml-64 p-8">
            
            <header class="flex justify-between items-center mb-10">
                <div>
                    <h1 class="text-3xl font-bold">Welcome back, Rahul!</h1>
                    <p class="text-gray-500">Here's what's happening with your learning today.</p>
                </div>
                <div class="flex items-center gap-4">
                    <button class="p-2 bg-white rounded-full shadow-sm text-gray-600 hover:text-blue-600">🔔</button>
                    <a href="${pageContext.request.contextPath}/student/profile" 
   class="w-10 h-10 rounded-full bg-blue-600 flex items-center justify-center text-white font-bold hover:bg-blue-700 transition cursor-pointer shadow-lg hover:scale-105">
    R
</a>
                </div>
            </header>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-10">
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                    <p class="text-sm text-gray-400 uppercase tracking-wide font-semibold">Total Courses</p>
                    <p class="text-3xl font-bold mt-2">3</p>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                    <p class="text-sm text-gray-400 uppercase tracking-wide font-semibold">Pending Tasks</p>
                    <p class="text-3xl font-bold mt-2 text-amber-500">2</p>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                    <p class="text-sm text-gray-400 uppercase tracking-wide font-semibold">Progress</p>
                    <p class="text-3xl font-bold mt-2 text-green-500">45%</p>
                </div>
            </div>

            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
                
                <div class="lg:col-span-2">
                    <div class="flex justify-between items-center mb-6">
                        <h2 class="text-xl font-bold">Currently Learning</h2>
                        <a href="student-courses" class="text-blue-600 font-semibold hover:underline text-sm">View All</a>
                    </div>
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="bg-white p-5 rounded-2xl shadow-sm border border-gray-100 hover:shadow-xl transition-all duration-300">
                            <div class="flex items-center gap-4 mb-4">
                                <div class="w-14 h-14 bg-blue-50 text-blue-600 rounded-xl flex items-center justify-center text-xl">☕</div>
                                <div>
                                    <h3 class="font-bold text-lg">Java Programming</h3>
                                    <p class="text-xs text-gray-400">Advanced OOPs Concept</p>
                                </div>
                            </div>
                            <div class="w-full bg-gray-100 rounded-full h-2 mb-4">
                                <div class="bg-blue-600 h-2 rounded-full" style="width: 70%"></div>
                            </div>
                            <a href="#" class="block w-full text-center bg-gray-900 text-white py-2.5 rounded-xl font-medium hover:bg-black transition">Resume Course</a>
                        </div>

                        <div class="bg-white p-5 rounded-2xl shadow-sm border border-gray-100 hover:shadow-xl transition-all duration-300">
                            <div class="flex items-center gap-4 mb-4">
                                <div class="w-14 h-14 bg-purple-50 text-purple-600 rounded-xl flex items-center justify-center text-xl">🌐</div>
                                <div>
                                    <h3 class="font-bold text-lg">Web Development</h3>
                                    <p class="text-xs text-gray-400">Frontend Mastery</p>
                                </div>
                            </div>
                            <div class="w-full bg-gray-100 rounded-full h-2 mb-4">
                                <div class="bg-purple-600 h-2 rounded-full" style="width: 40%"></div>
                            </div>
                            <a href="#" class="block w-full text-center bg-gray-900 text-white py-2.5 rounded-xl font-medium hover:bg-black transition">Resume Course</a>
                        </div>
                    </div>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                    <h2 class="text-lg font-bold mb-6">Upcoming Deadlines</h2>
                    <div class="space-y-6">
                        <div class="flex gap-4">
                            <div class="bg-red-50 text-red-600 w-16 h-16 rounded-2xl flex flex-col items-center justify-center font-bold text-sm">
                                <span>MAR</span>
                                <span class="text-xl">10</span>
                            </div>
                            <div>
                                <p class="font-bold">Java Assignment 4</p>
                                <p class="text-xs text-gray-400 mt-1">Due by 11:59 PM</p>
                            </div>
                        </div>
                        <div class="flex gap-4">
                            <div class="bg-amber-50 text-amber-600 w-16 h-16 rounded-2xl flex flex-col items-center justify-center font-bold text-sm">
                                <span>MAR</span>
                                <span class="text-xl">15</span>
                            </div>
                            <div>
                                <p class="font-bold">Quiz: Spring MVC</p>
                                <p class="text-xs text-gray-400 mt-1">Total 20 Questions</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>