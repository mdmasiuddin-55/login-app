<!-- login.jsp placeholder -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Login</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 400px; margin: 100px auto; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], input[type="password"], input[type="email"] { 
            width: 100%; padding: 8px; border: 1px solid #ddd; border-radius: 4px; 
        }
        button { 
            background-color: #007bff; color: white; padding: 10px 20px; 
            border: none; border-radius: 4px; cursor: pointer; 
        }
        .error { color: red; margin-bottom: 15px; }
        .success { color: green; margin-bottom: 15px; }
    </style>
</head>
<body>
    <h2>Login</h2>
    
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    
    <c:if test="${not empty param.success}">
        <div class="success">${param.success}</div>
    </c:if>
    
    <form action="login" method="post">
        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>
        <button type="submit">Login</button>
    </form>
    
    <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
</body>
</html>