<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Include header (contains <head>, Tailwind setup, Navbar) --%>
<jsp:include page="includes/header.jsp" />

    <header class="bg-[linear-gradient(135deg,#4e73df,#1cc88a)] text-white py-20 text-center">
        <div class="container mx-auto px-4">
            <h1 class="text-4xl md:text-5xl font-extrabold mb-4">About EduPortal</h1>
            <p class="text-lg opacity-90 max-w-2xl mx-auto">Your online learning platform for coding, web development, and more.</p>
        </div>
    </header>

    <main class="container mx-auto px-4 py-12">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-16">
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 hover:shadow-md transition-shadow">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Our Mission</h3>
                <p class="text-gray-600 leading-relaxed">EduPortal aims to provide high-quality online courses that help learners develop new skills, enhance their knowledge, and advance their careers. We focus on practical learning with interactive content and real-world projects.</p>
            </div>
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 hover:shadow-md transition-shadow">
                <h3 class="text-2xl font-bold text-gray-900 mb-4">Our Vision</h3>
                <p class="text-gray-600 leading-relaxed">To be a leading e-learning platform that empowers students globally to learn at their own pace and succeed in the digital world through accessible, top-tier technology education.</p>
            </div>
        </div>

        <h3 class="text-3xl font-bold text-center text-gray-900 mb-10">Our Team</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="bg-white p-6 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 border border-gray-100 text-center">
                <div class="w-24 h-24 bg-gray-100 rounded-full mx-auto mb-4 flex items-center justify-center text-3xl">👨‍💻</div>
                <h5 class="text-lg font-semibold text-gray-900">Rahul Yadav</h5>
                <p class="text-blue-600 font-medium">Founder & CEO</p>
            </div>
            <div class="bg-white p-6 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 border border-gray-100 text-center">
                <div class="w-24 h-24 bg-gray-100 rounded-full mx-auto mb-4 flex items-center justify-center text-3xl">👨‍🏫</div>
                <h5 class="text-lg font-semibold text-gray-900">Raj Vardhan Singh</h5>
                <p class="text-blue-600 font-medium">Lead Instructor</p>
            </div>
            <div class="bg-white p-6 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 border border-gray-100 text-center">
                <div class="w-24 h-24 bg-gray-100 rounded-full mx-auto mb-4 flex items-center justify-center text-3xl">👨‍💻</div>
                <h5 class="text-lg font-semibold text-gray-900">Prince Yadav</h5>
                <p class="text-blue-600 font-medium">Web Developer</p>
            </div>
        </div>

        <div class="text-center mt-20">
            <h4 class="text-2xl font-bold text-gray-900">Ready to Start Learning?</h4>
            <a href="<c:url value='/course' />" class="inline-block mt-6 bg-gray-900 hover:bg-black text-white font-bold py-3 px-8 rounded-xl transition duration-200">View Courses</a>
        </div>
    </main>

<%-- Include footer (contains <footer> and all JS scripts) --%>
<jsp:include page="includes/footer.jsp" />