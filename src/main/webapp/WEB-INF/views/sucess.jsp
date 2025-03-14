<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
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
            text-align: center;
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
            border: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .text-sm {
            font-size: 12px;
            color: #666;
        }
    </style>
</head>
<body class="bg-white text-[#333A56] flex items-center justify-center h-screen">

    <div class="card">
        <h2 class="text-lg font-bold text-[#007BFF]">Welcome, ${user.name}!</h2>
        <p class="text-sm mt-1">Registration Successful</p>

        <a href="signIn">
            <button class="btn btn-hover">Login</button>
        </a>
    </div>

</body>
</html>
