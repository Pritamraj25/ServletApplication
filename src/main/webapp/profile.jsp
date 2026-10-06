<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Profile Page</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f8;
            color: #222;
        }

        /* Top line */
        .top-line {
            height: 5px;
            background: #5a3928;
        }

        /* Navbar */
        .navbar {
            height: 75px;
            background: #111;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 10%;
        }

        .logo {
            color: white;
            font-size: 28px;
            font-weight: bold;
        }

        .logout {
            background: #e53935;
            color: white;

            text-decoration: none;

            padding: 10px 20px;

            border-radius: 6px;

            font-size: 15px;
        }

        .logout:hover {
            background: #c62828;
        }

        /* Title */
        .page-title {
            text-align: center;
            margin-top: 45px;
        }

        .page-title h1 {
            font-size: 32px;
            margin-bottom: 8px;
        }

        .page-title p {
            color: #777;
            font-size: 16px;
        }

        /* Profile Card */
        .profile-card {
            width: 500px;

            margin: 40px auto;

            background: white;

            border-radius: 12px;

            box-shadow: 0 5px 20px rgba(0,0,0,0.15);

            overflow: hidden;
        }

        /* Profile Header */
        .profile-header {
            background: #4caf50;

            padding: 30px;

            text-align: center;

            color: white;
        }

        .profile-icon {
            width: 85px;
            height: 85px;

            margin: auto;

            background: white;

            color: #4caf50;

            border-radius: 50%;

            display: flex;

            justify-content: center;

            align-items: center;

            font-size: 40px;

            font-weight: bold;
        }

        .profile-header h2 {
            margin-top: 15px;
        }

        .profile-header p {
            margin-top: 5px;
            opacity: 0.9;
        }

        /* Details */
        .profile-details {
            padding: 30px 40px;
        }

        .detail-row {
            display: flex;

            justify-content: space-between;

            padding: 15px 0;

            border-bottom: 1px solid #eee;
        }

        .detail-row:last-child {
            border-bottom: none;
        }

        .label {
            color: #777;
            font-weight: bold;
        }

        .value {
            color: #222;
        }

        /* Home button */
        .home-section {
            padding: 0 40px 30px;
        }

        .home {
            display: block;

            text-align: center;

            padding: 12px;

            background: #2196f3;

            color: white;

            text-decoration: none;

            border-radius: 6px;
        }

        .home:hover {
            background: #1976d2;
        }

    </style>

</head>


<body>

    <!-- Top line -->
    <div class="top-line"></div>


    <!-- Navbar -->
    <div class="navbar">

        <div class="logo">
            MyPortFolio
        </div>

        <a href="index.jsp" class="logout">
            Logout
        </a>

    </div>


    <!-- Page Title -->
    <div class="page-title">

        <h1>My Profile</h1>

        <p>Welcome to your profile dashboard</p>

    </div>


    <!-- Profile Card -->
    <div class="profile-card">


        <!-- Profile Header -->

        <div class="profile-header">

            <div class="profile-icon">
                ${name.substring(0,1)}
            </div>

            <h2>
                Welcome, ${name}
            </h2>

            <p>
                Registered User
            </p>

        </div>


        <!-- User Details -->

        <div class="profile-details">

            <div class="detail-row">

                <span class="label">
                    Name
                </span>

                <span class="value">
                    ${name}
                </span>

            </div>


            <div class="detail-row">

                <span class="label">
                    Email
                </span>

                <span class="value">
                    ${email}
                </span>

            </div>


            <div class="detail-row">

                <span class="label">
                    Gender
                </span>

                <span class="value">
                    ${gender}
                </span>

            </div>


            <div class="detail-row">

                <span class="label">
                    City
                </span>

                <span class="value">
                    ${city}
                </span>

            </div>

        </div>


        <!-- Home -->

        <div class="home-section">

            <a href="index.jsp" class="home">
                Go To Home
            </a>

        </div>


    </div>

</body>

</html>