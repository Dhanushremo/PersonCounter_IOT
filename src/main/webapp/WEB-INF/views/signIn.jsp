<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In | Person Counter</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .btn-hover {
            transition: all 0.2s ease-in-out;
        }
        .btn-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px rgba(0, 123, 255, 0.2);
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            padding: 15px;
            width: 250px; /* Compact Size */
        }
        .input-field {
            width: 100%;
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 12px;
            margin-top: 6px;
        }
        .btn {
            width: 100%;
            background-color: #007BFF;
            color: white;
            padding: 6px;
            border-radius: 5px;
            font-size: 13px;
            margin-top: 8px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .text-xs {
            font-size: 10px;
            color: #666;
        }
    </style>
</head>
<body class="bg-white text-[#333A56] flex items-center justify-center h-screen">

    <div class="card text-center">
        <h2 class="text-lg font-bold text-[#007BFF]">Sign In</h2>
        <p class="text-xs mt-1">Access your account</p>

        <form class="mt-2" action="sign" method="post">
            <input type="text" name="email" placeholder="Email or PhoneNumber" class="input-field">
            <input type="password" name="pwd" placeholder="Password" class="input-field">
            <button type="submit" class="btn btn-hover">Sign In</button>
        </form>

        <p class="text-xs mt-2">Don't have an account? <a href="signUp" class="text-[#007BFF]">Sign Up</a></p>
    </div>

</body>
</html>
