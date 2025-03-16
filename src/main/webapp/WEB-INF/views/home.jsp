<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoT Person Counter - Working</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        .btn-hover {
            transition: all 0.2s ease-in-out;
        }
        .btn-hover:hover {
            transform: translateY(-1px);
            box-shadow: 0 2px 8px rgba(0, 123, 255, 0.2);
        }
        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            padding: 15px;
            flex: 1;
            min-width: 250px;
        }
    </style>
</head>
<body class="bg-gray-100 text-[#333A56] flex flex-col min-h-screen">

    <!-- Navigation Bar -->
    <nav class="fixed top-0 left-0 w-full flex items-center justify-between px-6 py-3 bg-white shadow-md">
        <h1 class="text-xl font-bold text-[#007BFF]">IoT Person Counter</h1>
        <div class="flex items-center space-x-4">
            <span align="right" class="text-gray-700 text-sm">Welcome, ${u.name}</span>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex flex-wrap items-center justify-center flex-grow px-4 mt-16 gap-4 max-w-6xl mx-auto">
        
        <!-- IoT Person Counter Objective -->
        <div class="card text-center">
            <h2 class="text-xl font-bold text-[#333A56]">🎯 Objective</h2>
            <p class="text-gray-600 text-sm mt-2">The IoT Person Counter aims to track and monitor real-time foot traffic in auditoriums, offices, and other spaces using smart sensors and cloud-based dashboards.</p>
        </div>

        <!-- Working of IoT Person Counter -->
        <div class="card text-center">
            <h2 class="text-xl font-bold text-[#333A56]">⚙ How It Works</h2>
            <p class="text-gray-600 text-sm mt-2">Infrared or PIR sensors detect movement at entry and exit points. The microcontroller processes the data and updates the cloud-based dashboard in real time.</p>
            <a href="working" class="inline-block mt-4 px-4 py-2 bg-blue-500 text-white rounded btn-hover">See Working</a>
        </div>

        <!-- System Components -->
        <div class="card text-center">
            <h2 class="text-xl font-bold text-[#333A56]">🔧 System Components</h2>
            <ul class="text-gray-700 text-sm list-disc pl-6 text-left">
                <li>Infrared / PIR Sensors - Detects movement</li>
                <li>ESP8266 / Arduino - Processes data</li>
                <li>WiFi Module - Sends data to the cloud</li>
                <li>Web Dashboard - Displays real-time stats</li>
                <li>Power Supply & Casing - Protects hardware</li>
            </ul>
        </div>

        <!-- Real-Time Applications -->
        <div class="card text-center">
            <h2 class="text-xl font-bold text-[#333A56]">🌍 Real-Time Applications</h2>
            <ul class="text-gray-700 text-sm list-disc pl-6 text-left">
                <li>Smart Auditoriums</li>
                <li>Retail Stores</li>
                <li>Public Transport Stations</li>
                <li>Workspaces and Offices</li>
                <li>Libraries and Public Buildings</li>
            </ul>
        </div>

        <!-- Advantages -->
        <div class="card text-center">
            <h2 class="text-xl font-bold text-[#333A56]">✅ Advantages</h2>
            <ul class="text-gray-700 text-sm list-disc pl-6 text-left">
                <li>Automated real-time tracking</li>
                <li>Improved security & monitoring</li>
                <li>Data-driven decision making</li>
                <li>Efficient crowd management</li>
                <li>Remote access via web dashboard</li>
            </ul>
        </div>
    </main>

    <!-- Footer -->
    <footer class="w-full text-center py-2 bg-gray-100 text-gray-600 text-xs">
        <p>&copy; 2025 IoT Person Counter. All rights reserved.</p>
    </footer>

</body>
</html>
