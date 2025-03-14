<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Person Counter</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Smooth Hover Effect */
        .btn-hover {
            transition: all 0.3s ease-in-out;
        }
        .btn-hover:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.2);
        }
        /* Shadow Effect */
        .card {
            background: white;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body class="bg-white text-[#333A56] flex flex-col h-screen">

    <!-- Navigation Bar -->
    <nav class="absolute top-0 w-full flex justify-between px-8 py-4 bg-white shadow">
        <h1 class="text-2xl font-extrabold text-[#007BFF]">Person Counter</h1>
        <div>
            <a href="signIn" class="px-3 py-1 border border-[#007BFF] text-[#007BFF] rounded-full hover:bg-[#007BFF] hover:text-white transition duration-300 text-xs">Sign In</a>
            <a href="signUp" class="bg-[#007BFF] text-white px-4 py-1 rounded-full ml-2 btn-hover text-xs">Sign Up</a>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex flex-col items-center justify-center flex-grow text-center px-6">
        <div class="card p-8 rounded-lg max-w-md text-center">
            <h2 class="text-4xl font-extrabold text-[#333A56]">Smart IoT-Based Counter</h2>
            <p class="text-gray-600 text-sm mt-2">Track the number of people entering and exiting in real-time.</p>

            <!-- Buttons -->
            <div class="mt-4 space-x-3">
                <a href="signup.html" class="bg-[#007BFF] text-white px-5 py-2 rounded-full btn-hover transition text-sm">Get Started</a>
                <a href="learnMore.html" class="bg-gray-200 text-gray-800 px-5 py-2 rounded-full hover:bg-gray-300 transition text-sm">Learn More</a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="absolute bottom-0 w-full text-center py-3 bg-gray-100 text-gray-600 text-xs">
        <p>&copy; 2025 Person Counter. All rights reserved.</p>
    </footer>

</body>
</html>
