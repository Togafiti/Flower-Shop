<%-- 
    Document   : login
    Created on : Jun 25, 2023, 1:44:03 PM
    Author     : xuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                background: #3598dc;
                font-family: 'Roboto', sans-serif;
            }
            .login-form {
                width: 340px;
                margin: 50px auto;
                font-size: 15px;
            }
            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h2 {
                color: black;
                margin: 0 0 15px;
            }
            .form-control, .btn {
                min-height: 38px;
                border-radius: 2px;
            }
            .btn {
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="login-form">
            <form action="forgot" method="post">
                <h2 class="text-center" style="font-weight: bold">Forgot password</h2> 
                <h5 style="color: red ">${requestScope.error}</h5>
                <div class="form-group">
                    <h5>Enter your username</h5>
                    <input type="text" class="form-control" placeholder="Username" required="required" name="user">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Reset password</button>
                </div>      
            </form>
        </div>
    </body>
</html>
