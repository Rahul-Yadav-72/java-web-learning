<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduPortal - E Learning Platform</title>

    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-gray-50 text-gray-900">

<nav class="bg-gray-900 text-white shadow-lg p-4">
    <div class="container mx-auto flex justify-between items-center">
        <a href="#" class="text-2xl font-bold tracking-tight">EduPortal</a>
        
        <div class="hidden md:flex space-x-6">
            <a href="<c:url value='/' />" class="hover:text-blue-400 transition">Home</a>
            <a href="<c:url value='/course' />" class="hover:text-blue-400 transition">Courses</a>
            <a href="<c:url value='/about' />" class="hover:text-blue-400 transition">About</a>
            <a href="<c:url value='/login' />" class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded-lg transition">Login</a>
        </div>
    </div>
</nav>