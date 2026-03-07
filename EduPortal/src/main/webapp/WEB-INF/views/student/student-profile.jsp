<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile | EduPortal</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <style>body { font-family: 'Inter', sans-serif; }</style>
</head>
<body class="bg-gray-50 text-gray-900">

    <div class="flex min-h-screen">
        <aside class="w-64 bg-slate-900 text-white flex-shrink-0">
            <div class="p-6">
                <h4 class="text-xl font-bold flex items-center gap-2">🎓 EduPortal</h4>
            </div>
            <nav class="mt-4 px-4 space-y-2">
                <a href="${pageContext.request.contextPath}/student" class="block py-3 px-4 rounded-xl text-gray-400 hover:bg-slate-800 hover:text-white transition">🏠 Dashboard</a>
                <a href="${pageContext.request.contextPath}/student/courses" class="block py-3 px-4 rounded-xl text-gray-400 hover:bg-slate-800 hover:text-white transition">📚 My Courses</a>
                <a href="#" class="block py-3 px-4 rounded-xl bg-blue-600 text-white shadow-lg shadow-blue-900/20">👤 Profile</a>
                <div class="pt-10">
                    <a href="${pageContext.request.contextPath}/login" class="block py-3 px-4 rounded-xl text-red-400 hover:bg-red-900/30 hover:text-red-400 transition">🚪 Logout</a>
                </div>
            </nav>
        </aside>

        <main class="flex-1 p-10">
            <div class="max-w-4xl mx-auto">
                <header class="mb-8">
                    <h1 class="text-3xl font-bold">Profile Settings</h1>
                    <p class="text-gray-500">Update your personal details and keep your account secure.</p>
                </header>

                <div class="bg-white rounded-3xl shadow-sm border border-gray-100 overflow-hidden">
                    
                    <div class="h-32 bg-gradient-to-r from-blue-600 to-indigo-600"></div>
                    
                    <div class="px-8 pb-8 -mt-16">
                        <div class="flex flex-col md:flex-row gap-8">
                            
                            <div class="flex-shrink-0">
                                <div class="w-32 h-32 rounded-2xl border-4 border-white bg-gray-200 flex items-center justify-center text-4xl shadow-md">
                                    👤
                                </div>
                                <div class="mt-4">
                                    <h5 class="text-xl font-bold">Rahul Kumar</h5>
                                    <p class="text-sm text-gray-500">Student ID: #ST-2026</p>
                                </div>
                            </div>

                            <div class="flex-1 pt-4">
                                <form action="update-profile" method="post" class="space-y-6">
                                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                        <div>
                                            <label class="block text-sm font-medium text-gray-700 mb-2">Full Name</label>
                                            <input type="text" name="name" value="Rahul Kumar" 
                                                class="w-full px-4 py-3 rounded-xl border border-gray-200 focus:ring-2 focus:ring-blue-500 outline-none transition">
                                        </div>
                                        <div>
                                            <label class="block text-sm font-medium text-gray-700 mb-2">Email Address</label>
                                            <input type="email" name="email" value="rahul@email.com" 
                                                class="w-full px-4 py-3 rounded-xl border border-gray-200 bg-gray-50 text-gray-500 cursor-not-allowed" readonly>
                                        </div>
                                    </div>

                                    <div>
                                        <label class="block text-sm font-medium text-gray-700 mb-2">Mobile Number</label>
                                        <div class="flex gap-2">
                                            <span class="flex items-center px-4 bg-gray-100 border border-gray-200 rounded-xl text-gray-500">+91</span>
                                            <input type="tel" name="mobile" pattern="[0-9]{10}" maxlength="10" 
                                                class="w-full px-4 py-3 rounded-xl border border-gray-200 focus:ring-2 focus:ring-blue-500 outline-none transition">
                                        </div>
                                    </div>

                                    <div class="pt-4 flex justify-end">
                                        <button type="submit" 
                                            class="px-8 py-3 bg-slate-900 text-white font-semibold rounded-xl hover:bg-black transition shadow-lg shadow-gray-300">
                                            Save Changes
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>