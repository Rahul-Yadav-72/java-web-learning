<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Email Service</title>
</head>
<body>

<h2>Email With File Upload</h2>

<form:form 
        action="${pageContext.request.contextPath}/register"
        method="post"
        modelAttribute="user"
        enctype="multipart/form-data">

    <form:input path="name" placeholder="Enter name" />
    <br/><br/>

    <form:input path="email" type="email" placeholder="Enter email" />
    <br/><br/>

    <!-- File Upload -->
    <input type="file" name="file" />
    <br/><br/>

    <input type="submit" value="Send Email"/>

</form:form>

</body>
</html>