<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>My Application</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Georgia, "Times New Roman", serif;
            background-color: white;
        }

        /* Top Header */
        .header {
            height: 180px;
            background-color: black;
            border-top: 20px solid #5b3929;
            border-bottom: 2px solid #ddd;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        .header h1 {
            color: white;
            font-size: 30px;
            margin-top: -20px;
        }

        /* Main Box */
        .main-box {
            width: 375px;
            height: 170px;

            margin: 60px auto;

            background-color: white;

            border: 1px solid #ccc;

            box-shadow:
                0px 0px 8px rgba(0, 0, 0, 0.5);

            display: flex;
            justify-content: center;
            align-items: center;
            gap: 12px;
        }

        /* Buttons */
        .btn {
            display: inline-block;

            padding: 12px 20px;

            color: white;

            text-decoration: none;

            font-size: 18px;

            border-radius: 10px;
        }

        .register {
            background-color: #e60000;
        }

        .login {
            background-color: #009900;
        }

        .register:hover {
            background-color: #b30000;
        }

        .login:hover {
            background-color: #006600;
        }

    </style>

</head>


<body>

    <!-- Header -->

    <div class="header">

        <h1>Welcome to My Application</h1>

    </div>


    <!-- Main -->

    <div class="main-box">

        <a href="register" class="btn register">
            Register
        </a>

        <a href="login" class="btn login">
            Login
        </a>

    </div>


</body>

</html>