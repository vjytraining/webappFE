<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1; width=device-width; initial-scale=1">
	<title>Flights Tracker</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
    <script src="./js/jquery.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/login.js"></script>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #F7F7F7;
            
        }

        .header {
            overflow: hidden;
        color: white;
        width: 100%;
        background-color: #4515F0;
        }

        #userName {
            border-radius: 10px;
            border: 2px solid #FFFFFF;
            padding: 3px;
            width: 350px;
        }
        
        #passwordVal {
            border-radius: 10px;
            border: 2px solid #FFFFFF;
            padding: 3px;
            width: 350px;
        }

        .login_btn {
            border-radius: 10px;
            border: 2px solid #FFFFFF;
            padding: 8px;
            background-color: #4515F0;
            color: white;
            margin-top: 15px;
            margin-left: 0;
            margin-right: 0;
            padding-left: 0;
            padding-right: 0;
            display: block;
            width: 66%;
            text-align: center;
        }

        .a {
            fill: #e6eaf8;
        }

        .b {
            fill: url(#a);
        }

        .c {
            clip-path: url(#b);
        }

        .d {
            fill: url(#c);
        }

        .e {
            clip-path: url(#e);
        }

        .f {
            fill: none;
            stroke: #fff;
            stroke-miterlimit: 10;
            stroke-width: 2px;
            opacity: 0.299;
        }

        .g {
            fill: url(#f);
        }

        .h {
            fill: url(#g);
        }

        .i {
            fill: #01e1bf;
            background-size: 20px 40px;
        }

        /* svg{
            width: 100%!important;
        } */
    </style>
</head>
<body>
	<div class="header">
        <h2>Flight Information</h2>
    </div>
<form action="./jsp/searchFlights.jsp" id="loginForm" name="loginForm" method="post">
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-6" style="margin-top: 125px">
                <h4>Sign In</h4>
                <label>Email Address</label>
                <div class="input-group form-group">
                    <input type="text" id="userName" name="userName" placeholder="eg.yourname@email.com">
                    <div id="userNameDiv"></div>
                </div>
                <label>Password</label>
                <div class="input-group form-group">
                    <input type="password" id="passwordVal" name="passwordVal" placeholder="Choose something secure">
                </div>
                <div class="form-group">
                    <a href="#" class="login_btn" onclick="login()">Login</a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>