<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - IoT Person Counter</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            padding: 16px;
            width: 90%;
            max-width: 400px;
        }
        .btn-hover {
            transition: all 0.2s ease-in-out;
        }
        .btn-hover:hover {
            transform: translateY(-1px);
            box-shadow: 0 2px 8px rgba(0, 123, 255, 0.2);
        }
    </style>
</head>
<body class="bg-gray-100 text-[#333A56] flex items-center justify-center h-auto py-10">

    <div class="card text-center">
        <h1 class="text-xl font-bold text-[#007BFF] mb-3">📞 Contact Us</h1>
        <p class="text-gray-600 text-sm">Have questions or need support? Reach out to us!</p>
        
        <div class="text-left mt-3 text-sm">
            <p><strong>Email:</strong> support@mtietiotcounter.com</p>
            <p><strong>Phone:</strong> +91 8790820213</p>
            <p><strong>Address:</strong> 123, IoT Tech Hub Mtiet, Palamaner, India</p>
        </div>

        <!-- Feedback Form -->
        <form action="submit" method="post" class="mt-3 text-left">
            <label class="block text-xs font-semibold text-gray-700">Your Feedback:</label>
            <textarea name="feedback" rows="2" class="w-full mt-1 p-2 border border-gray-300 rounded text-sm focus:ring-2 focus:ring-blue-500"></textarea>
            
            <button type="submit" class="mt-3 px-4 py-2 bg-green-500 text-white text-sm rounded btn-hover w-full">Submit Feedback</button>
        </form>
    </div>

</body>
</html>
