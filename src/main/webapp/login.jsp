<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Login</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .top-bar {
            height: 55px;
            background-color: #5a3928;
        }

        h1 {
            text-align: center;
            margin-top: 40px;
        }

        .login-box {
            width: 450px;
            margin: 60px auto;
            padding: 40px;

            background-color: white;

            box-shadow:
                0px 0px 10px rgba(0,0,0,0.3);

            border-radius: 5px;
        }

        .row {
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 18px;
        }

        input {
            width: 100%;
            height: 42px;

            padding: 10px;

            border: 1px solid #ccc;
            border-radius: 4px;

            font-size: 16px;
        }

        button {
            width: 100%;
            height: 45px;

            background-color: green;

            color: white;

            border: none;

            border-radius: 5px;

            font-size: 18px;

            cursor: pointer;
        }

        button:hover {
            background-color: darkgreen;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

    </style>

</head>


<body>

    <div class="top-bar"></div>

    <h1>Login Form</h1>


    <div class="login-box">

        <% 
            String msg = (String) request.getAttribute("msg");

            if (msg != null) {
        %>

            <div class="error">
                <%= msg %>
            </div>

        <%
            }
        %>


        <form action="login" method="post">

            <div class="row">

                <label>Enter Email :</label>

                <input type="email"
                       name="email"
                       placeholder="Enter email"
                       required>

            </div>


            <div class="row">

                <label>Enter Password :</label>

                <input type="password"
                       name="password"
                       placeholder="Enter password"
                       required>

            </div>


            <button type="submit">
                Login
            </button>

        </form>

    </div>

</body>

</html>