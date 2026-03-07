<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="includes/header.jsp" />

<div class="min-h-screen bg-slate-50 py-8">
    <div class="container mx-auto px-4">

        <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 mb-8">
            <h2 class="text-3xl font-extrabold text-gray-900 mb-2">Java Programming</h2>
            <p class="text-gray-600">Learn core Java concepts including OOP, Collections, Exception Handling, and Multithreading.</p>
            
            <div class="mt-6">
                <div class="flex justify-between text-sm font-semibold text-gray-700 mb-2">
                    <span>Progress</span>
                    <span>70% Completed</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-4 overflow-hidden">
                    <div class="bg-green-500 h-full w-[70%]"></div>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">

            <div class="lg:col-span-2">
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                    <h5 class="text-xl font-bold mb-4 flex items-center">
                        <span class="mr-2">📺</span> Course Preview
                    </h5>
                    <div class="aspect-video w-full overflow-hidden rounded-xl bg-gray-900">
                        <iframe class="w-full h-full" src="https://www.youtube.com/embed/eIrMbAQSU34" 
                                title="Java Tutorial" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>

            <div class="lg:col-span-1">
                <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 mb-6">
                    <h5 class="text-xl font-bold mb-4">📚 Course Modules</h5>
                    <ul class="space-y-3">
                        <li class="flex items-center text-gray-700 p-2 border-b border-gray-100">✔ Introduction to Java</li>
                        <li class="flex items-center text-gray-700 p-2 border-b border-gray-100">✔ Variables & Data Types</li>
                        <li class="flex items-center text-gray-700 p-2 border-b border-gray-100">✔ OOP Concepts</li>
                        <li class="flex items-center text-gray-700 p-2 border-b border-gray-100">✔ Exception Handling</li>
                        <li class="flex items-center text-gray-700 p-2 border-b border-gray-100">✔ Collections Framework</li>
                        <li class="flex items-center text-gray-700 p-2">✔ Multithreading</li>
                    </ul>
                </div>

                <div class="bg-[linear-gradient(135deg,#4e73df,#1cc88a)] text-white p-6 rounded-2xl text-center shadow-lg">
                    <h5 class="text-xl font-bold mb-2">Want Full Access?</h5>
                    <p class="text-sm opacity-90 mb-4">Login or Register to access assignments & quizzes.</p>
                    <a href="<c:url value='/login' />" class="block w-full bg-white text-blue-600 font-bold py-2 rounded-lg mb-2 hover:bg-gray-100 transition">Login</a>
                    <a href="<c:url value='/register' />" class="block w-full bg-gray-900 text-white font-bold py-2 rounded-lg hover:bg-black transition">Register</a>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
            <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 text-center">
                <h5 class="text-lg font-bold mb-2">📝 Assignment</h5>
                <p class="text-gray-500 text-sm mb-4">Login required to download assignment.</p>
                <a href="<c:url value='/login' />" class="inline-block bg-blue-600 text-white font-bold py-2 px-6 rounded-lg hover:bg-blue-700 transition">Login to Download</a>
            </div>

            <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 text-center">
                <h5 class="text-lg font-bold mb-2">🧠 Take Quiz</h5>
                <p class="text-gray-500 text-sm mb-4">Login required to attempt quiz.</p>
                <a href="<c:url value='/login' />" class="inline-block bg-green-500 text-white font-bold py-2 px-6 rounded-lg hover:bg-green-600 transition">Login to Start Quiz</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="includes/footer.jsp" />