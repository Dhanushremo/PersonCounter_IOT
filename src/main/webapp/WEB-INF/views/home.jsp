<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IoT Person Counter - Dashboard</title>
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
            padding: 20px;
        }
    </style>
</head>
<body class="bg-gray-100 text-[#333A56] flex flex-col min-h-screen">

    <!-- Navigation Bar -->
    <nav class="fixed top-0 left-0 w-full flex items-center justify-between px-6 py-3 bg-white shadow-md">
        <h1 class="text-xl font-bold text-[#007BFF]">IoT Person Counter</h1>
        <div class="flex items-center space-x-4">
            <span class="text-gray-700 text-sm">Welcome, ${u.name}</span>
            <a href="logout.jsp" class="px-3 py-1 bg-red-500 text-white rounded-full text-xs">Logout</a>
        </div>
    </nav>

    <!-- Main Content (Full-Screen Flexbox Layout) -->
    <main class="flex flex-col items-center justify-center flex-grow px-4 mt-16">
        <div class="w-full max-w-5xl grid grid-cols-1 md:grid-cols-2 gap-6">
            
            <!-- Sensor Data -->
            <div class="card flex flex-col items-center text-center w-full">
                <h2 class="text-2xl font-bold text-[#333A56]">📊 Live Sensor Data</h2>
                <p class="text-gray-600 text-xs mt-1">Real-time updates on auditorium occupancy.</p>
                <p class="text-gray-700 text-sm mt-2">Total People Counted: <span class="font-semibold">23</span></p>
                <p class="text-gray-700 text-sm">Last Entry Time: <span class="font-semibold">10:45 AM</span></p>
                <p class="text-gray-700 text-sm">Last Exit Time: <span class="font-semibold">10:50 AM</span></p>
                <img src="${pageContext.request.contextPath}/images/iot.jpg"  alt="IoT Person Counter Dashboard" class="w-full rounded-lg shadow-md mt-2">
            </div>

            <!-- System Components -->
            <div class="card flex flex-col items-center text-center w-full">
                <h2 class="text-2xl font-bold text-[#333A56]">🔧 System Components</h2>
                <p class="text-gray-600 text-xs mt-1">Devices used in the IoT Person Counter.</p>
                <ul class="text-gray-700 text-xs list-disc pl-4 text-left">
                    <li>🔹 <b>Infrared / PIR Sensors</b> - Detects movement</li>
                    <li>🔹 <b>ESP8266 / Arduino</b> - Processes data</li>
                    <li>🔹 <b>WiFi Module</b> - Sends data to the cloud</li>
                    <li>🔹 <b>Web Dashboard</b> - Displays real-time stats</li>
                    <li>🔹 <b>Power Supply & Casing</b> - Protects hardware</li>
                </ul>
                <img src="${pageContext.request.contextPath}/images/iot.jpg" alt="Live Sensor Data" class="w-full rounded-lg shadow-md mt-2">
            </div>

            <!-- User Dashboard -->
            <div class="card flex flex-col items-center text-center w-full">
                <h2 class="text-2xl font-bold text-[#333A56]">📈 User Dashboard</h2>
                <p class="text-gray-600 text-xs mt-1">Monitor foot traffic and manage settings.</p>
                <a href="dashboard.jsp" class="bg-[#007BFF] text-white px-4 py-1.5 rounded-full btn-hover transition text-xs mt-2 inline-block">Go to Dashboard</a>
            </div>

            <!-- Settings -->
            <div class="card flex flex-col items-center text-center w-full">
                <h2 class="text-2xl font-bold text-[#333A56]">⚙ Settings</h2>
                <p class="text-gray-600 text-xs mt-1">Configure devices and set alerts.</p>
                <a href="settings.jsp" class="bg-gray-200 text-gray-800 px-4 py-1.5 rounded-full hover:bg-gray-300 transition text-xs mt-2 inline-block">Manage Settings</a>
            </div>
	
        </div>
    </main>

    <!-- Footer -->
    <footer class="w-full text-center py-2 bg-gray-100 text-gray-600 text-xs">
        <p>&copy; 2025 IoT Person Counter. All rights reserved.</p>
    </footer>

</body>
</html>
