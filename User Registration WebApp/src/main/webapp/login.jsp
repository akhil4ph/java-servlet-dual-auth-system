<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Account Access</title>
	<link rel="stylesheet" href="login.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

    <div class="login-card">
        <h2>Welcome back</h2>
        <p class="subtitle">Enter your details to sign in to your account.</p>

       
        <form action="Login" method="POST">
            
            <div class="form-group">
                <label for="username">Username or Email</label>
                <div class="input-wrapper">
                    <i class="fa-regular fa-envelope input-icon"></i>
                    <input type="text" id="username" name="username" placeholder="name@example.com" required autocomplete="username">
                </div>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <div class="input-wrapper">
                    <i class="fa-solid fa-lock input-icon"></i>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required autocomplete="current-password">
                    <i class="fa-regular fa-eye toggle-password" id="togglePassword"></i>
                </div>
            </div>

            <div class="form-options">
                <label class="remember-me">
                    <input type="checkbox" name="remember">
                    <span>Remember me</span>
                </label>
                <a href="forgot-password.jsp" class="forgot-link">Forgot password?</a>
            </div>

            <button type="submit" class="btn-submit">Sign In</button>

            <div class="signup-redirect">
                Don't have an account? <a href="index.html">Sign Up</a>
            </div>

        </form>
    </div>


</body>
</html>