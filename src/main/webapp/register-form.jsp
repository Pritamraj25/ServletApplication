<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Register Form</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f4f4f4;
        }

        /* Top brown bar */
        .top-bar {
            height: 55px;
            background-color: #5a3928;
        }

        /* Page heading */
        .heading {
            text-align: center;
            margin-top: 25px;
        }

        .heading h1 {
            font-size: 30px;
            color: #111;
            margin: 0;
        }

        /* Form box */
        .form-container {
            width: 490px;
            margin: 65px auto 0 auto;
            padding: 40px;
            background-color: white;

            border-radius: 5px;

            box-shadow:
                0px 0px 8px rgba(0, 0, 0, 0.25);
        }

        /* Each row */
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 28px;
        }

        .form-row label {
            width: 180px;
            font-size: 20px;
            color: #111;
        }

        /* Text fields */
        .form-row input[type="text"],
        .form-row input[type="email"],
        .form-row input[type="password"],
        .form-row select {

            width: 250px;
            height: 42px;

            padding: 8px 10px;

            font-size: 16px;

            border: 1px solid #ccc;

            border-radius: 3px;

            outline: none;
        }

        .form-row input:focus,
        .form-row select:focus {
            border-color: #777;
        }

        /* Gender */
        .gender {
            display: flex;
            align-items: center;
            gap: 8px;

            font-size: 18px;
        }

        .gender input {
            width: 18px;
            height: 18px;
        }

        .gender label {
            width: auto;
            font-size: 18px;
            margin-right: 5px;
        }

        /* Register button */
        .register-btn {

            width: 100%;

            height: 45px;

            background-color: #4dc34d;

            color: white;

            border: none;

            border-radius: 3px;

            font-size: 18px;

            cursor: pointer;
        }

        .register-btn:hover {
            background-color: #3aaa3a;
        }

    </style>

</head>

<body>

    <!-- Top bar -->

    <div class="top-bar"></div>


    <!-- Heading -->

    <div class="heading">

        <h1>Register Form</h1>

    </div>


    <!-- Registration Form -->

    <div class="form-container">

        <form action="registration" method="post">

<p style='color: green'>${msg}</p>
            <!-- Name -->

            <div class="form-row">

                <label>Enter Name :</label>

                <input type="text"
                       name="username"
                       placeholder="Enter name"
                       required>

            </div>


            <!-- Email -->

            <div class="form-row">

                <label>Enter Email :</label>

                <input type="email"
                       name="email"
                       placeholder="Enter email"
                       required>

            </div>


            <!-- Password -->

            <div class="form-row">

                <label>Enter Password :</label>

                <input type="password"
                       name="password"
                       placeholder="Enter password"
                       required>

            </div>


            <!-- Gender -->

            <div class="form-row">

                <label>Choose Gender :</label>

                <div class="gender">

                    <input type="radio"
                           name="gender"
                           value="Male"
                           required>

                    <label>Male</label>


                    <input type="radio"
                           name="gender"
                           value="Female">

                    <label>Female</label>

                </div>

            </div>


            <!-- City -->

            <div class="form-row">

                <label>Enter City :</label>

                <select name="city" required>

                    <option value="">Select City</option>

                    <option value="Pune">Pune</option>

                    <option value="Bangalore">Bangalore</option>

                    <option value="Mumbai">Mumbai</option>

                    <option value="Hyderabad">Hyderabad</option>

                </select>

            </div>


            <!-- Register -->

            <button type="submit" class="register-btn">
                Register
            </button>


        </form>

    </div>

</body>

</html>