<!-- signup.jsp placeholder -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sign Up</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 400px; margin: 100px auto; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="password"], input[type="email"] { 
            width: 100%; padding: 8px; border: 1px solid #ddd; border-radius: 4px; 
        }
        button { 
            background-color: #28a745; color: white; padding: 10px 20px; 
            border: none; border-radius: 4px; cursor: pointer; 
        }
        .error { color: red; margin-bottom: 15px; }
    </style>
</head>
<body>
    <h2>Sign Up</h2>
    
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    
    <form action="signup" method="post">
        <div class="form-group">
            <label>Username:</label>
            <input type="text" name="username" required>
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>
        <div class="form-group">
            <label>Confirm Password:</label>
            <input type="password" name="confirmPassword" required>
        </div>
        <button type="submit">Sign Up</button>
    </form>
    
    <p>Already have an account? <a href="login.jsp">Login here</a></p>
</body>
</html>