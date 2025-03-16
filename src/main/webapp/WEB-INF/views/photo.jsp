<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Teammates</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            padding: 8px;
            text-align: center;
            width: 120px;
        }
        .photo {
            width: 100%;
            height: 100px;
            object-fit: cover;
            border-radius: 6px;
        }
        .btn-hover {
            transition: all 0.2s ease-in-out;
        }
        .btn-hover:hover {
            transform: translateY(-1px);
            box-shadow: 0 2px 8px rgba(0, 123, 255, 0.2);
        }
        .logout-btn {
            background-color: #ff4d4d;
            color: white;
            padding: 6px 12px;
            font-size: 12px;
            border-radius: 5px;
            transition: all 0.2s ease-in-out;
        }
        .logout-btn:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body class="bg-gray-100 text-[#333A56] flex flex-col items-center justify-center min-h-screen p-4">

    <h1 class="text-3xl font-bold text-[#007BFF] mb-6">🚀 Project Teammates</h1>

    <div class="grid grid-cols-3 gap-4 w-full max-w-3xl">
        <% 
            String[][] teammates = {
                {"/images/photo1.jpg", "M.Bhanu", "CSE", "https://instagram.com/rowdy_solo_king"},
                {"/images/photo02.jpg", "R.Dhanush", "CSE", "https://instagram.com/remo_gdn"},
                {"/images/photo3.jpg", "P.Uday", "CSE", "https://instagram.com/michaellee"},
                {"/images/photo04.jpg", "S.Sameer", "CSE", "https://instagram.com/__sameer_x"},
                {"/images/photo005.jpg", "A.Manoj", "CSE", "https://instagram.com/_manojmano_09"},
                {"/images/photo06.jpg", "N.Devi", "CSE", "https://instagram.com/emilydavis"},
                {"/images/photo7.jpg", "P.Yeswanth", "CSE", "https://instagram.com/danielwhite"},
                {"/images/photo8.jpg", "S.Reddy", "CSE", "https://instagram.com/oliviamartin"},
                {"/images/photo009.jpg", "S.Santhosh", "CSE", "https://instagram.com/williamclark"}
            };
            for(int i = 0; i < teammates.length; i++) { 
        %>
        <div class="card">
            <img src="<%= request.getContextPath() + teammates[i][0] %>" alt="<%= teammates[i][1] %>" class="photo">
            <h2 class="text-sm font-semibold mt-1"><%= teammates[i][1] %></h2>
            <p class="text-xs text-gray-600"><%= teammates[i][2] %></p>
            <a href="<%= teammates[i][3] %>" target="_blank" class="text-blue-500 hover:underline text-xs">Instagram</a>
        </div>
        <% } %>
    </div>

    <!-- Logout Button -->
    <div class="mt-6">
        <a href="logout" class="logout-btn btn-hover">Logout</a>
    </div>

</body>
</html>
