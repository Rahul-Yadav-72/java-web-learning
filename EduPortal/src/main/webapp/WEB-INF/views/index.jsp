<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Include Header --%>
<jsp:include page="includes/header.jsp" />

<%-- Hero Section --%>
<section class="bg-gradient-to-r from-blue-600 to-green-500 text-white py-24 text-center">
    <div class="container mx-auto px-4">
        <h1 class="text-5xl font-bold mb-4">Learn Anytime, Anywhere 🚀</h1>
        <p class="text-xl mb-8">Upgrade your skills with our professional online courses</p>
        <a href="<c:url value='/course' />" class="bg-white text-blue-600 px-8 py-3 rounded-full font-semibold hover:bg-gray-100 transition duration-300">Explore Courses</a>
    </div>
</section>

<%-- Popular Courses --%>
<div class="container mx-auto px-4 py-16">
    <h2 class="text-3xl font-bold text-center mb-12">Popular Courses</h2>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        
        <%-- Java Programming --%>
        <div class="bg-white p-8 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 text-center border border-gray-100">
            <i class="bi bi-cup-hot text-5xl text-blue-600"></i>
            <h5 class="text-xl font-semibold mt-4">Java Programming</h5>
            <p class="text-gray-600 mt-2 mb-6">Master Core Java, OOPs & Advanced Concepts.</p>
            <a href="<c:url value='/login' />" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition duration-300">Enroll Now</a>
        </div>
        
        <%-- Web Development --%>
        <div class="bg-white p-8 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 text-center border border-gray-100">
            <i class="bi bi-code-slash text-5xl text-green-600"></i>
            <h5 class="text-xl font-semibold mt-4">Web Development</h5>
            <p class="text-gray-600 mt-2 mb-6">HTML, CSS, JavaScript & Bootstrap complete guide.</p>
            <a href="<c:url value='/login' />" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition duration-300">Enroll Now</a>
        </div>
        
        <%-- Spring Framework --%>
        <div class="bg-white p-8 rounded-2xl shadow-lg hover:-translate-y-2 transition-transform duration-300 text-center border border-gray-100">
            <i class="bi bi-layers text-5xl text-red-500"></i>
            <h5 class="text-xl font-semibold mt-4">Spring Framework</h5>
            <p class="text-gray-600 mt-2 mb-6">Build powerful enterprise-level applications.</p>
            <a href="<c:url value='/login' />" class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition duration-300">Enroll Now</a>
        </div>
    </div>
</div>

<%-- About Section --%>
<section class="bg-white py-16">
    <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl font-bold mb-4">Why Choose Us?</h2>
        <p class="text-lg text-gray-700">We provide industry-level training with practical projects and certification.</p>
    </div>
</section>

<%-- Include Footer --%>
<jsp:include page="includes/footer.jsp" />