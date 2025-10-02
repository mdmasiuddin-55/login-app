<!-- welcome.jsp placeholder -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 600px; margin: 100px auto; text-align: center; }
    </style>
</head>
<body>
    <h2>Welcome, ${user.username}!</h2>
    <p>Email: ${user.email}</p>
    <p>You have successfully logged in.</p>
    <a href="login.jsp">Logout</a>
</body>
</html>