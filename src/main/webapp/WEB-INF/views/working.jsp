<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
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
            padding: 20px;
        }
        body {
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
        }
        .img-small {
            width: 100%;
            max-width: 300px;
            height: auto;
        }
    </style>
</head>
<body class="bg-gray-100 text-[#333A56] min-h-screen">

    <!-- Navigation Bar -->
    <nav class="fixed top-0 left-0 w-full flex items-center justify-between px-6 py-3 bg-white shadow-md">
        <h1 class="text-xl font-bold text-[#007BFF]">IoT Person Counter</h1>
        <div class="flex items-center space-x-4">
            <span class="text-gray-700 text-sm"></span>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="grid place-items-center mt-20 px-4">
        <div class="grid gap-6 w-full max-w-5xl">
            
            <!-- Step 1: Components Needed -->
            <div class="card">
                <h2 class="text-2xl font-bold text-[#333A56]">⿡ Components Required</h2>
                <ul class="text-gray-700 text-sm list-disc pl-6 mt-2">
                    <li>Infrared / PIR Sensors</li>
                    <li>ESP8266 or Arduino</li>
                    <li>WiFi Module</li>
                    <li>Jumper Wires & Breadboard</li>
                    <li>Power Supply (5V)</li>
                </ul>
            </div>

            <!-- Step 2: Circuit Diagram -->
            <div class="card">
                <h2 class="text-2xl font-bold text-[#333A56]">⿢ Circuit Diagram</h2>
                <p class="text-gray-600 text-sm mt-2">Connect the PIR sensor to ESP8266/Arduino and ensure the WiFi module is powered correctly.</p>
                <img src="<%= request.getContextPath() %>/images/esp32.jpg" alt="Circuit Diagram" class="img-small">
            </div>

            <!-- Step 3: Coding the Microcontroller -->
            <div class="card">
                <h2 class="text-2xl font-bold text-[#333A56]">⿣ Programming the ESP8266/Arduino</h2>
                <p class="text-gray-600 text-sm mt-2">Use Arduino IDE to upload the following code:</p>
                <a href="code" class="bg-[#007BFF] text-white px-4 py-1.5 rounded-full btn-hover text-xs mt-3 inline-block">View Code</a>
                <img src="<%= request.getContextPath() %>/images/code1.png" alt="Arduino Code" class="img-small">
            </div>

            <!-- Step 4: Sending Data to Cloud & Receiving in Java -->
            <div class="card">
                <h2 class="text-2xl font-bold text-[#333A56]">⿤ Sending Data to Cloud & Receiving in Java</h2>
                <p class="text-gray-600 text-sm mt-2">
                    The IoT device publishes the person count to the cloud (e.g., Google Cloud Pub/Sub or MQTT).
                    Our Java-based web application retrieves this data in real-time and updates the dashboard dynamically.
                </p>
                <img src="<%= request.getContextPath() %>/images/code2.png" alt="Cloud Data Flow" class="img-small">
                <img src="<%= request.getContextPath() %>/images/code3.png" alt="Java Data Flow" class="img-small">
            </div>

            <!-- Step 5: Viewing Data on Dashboard -->
            <div class="card">
                <h2 class="text-2xl font-bold text-[#333A56]">⿥ View Data on Dashboard</h2>
                <p class="text-gray-600 text-sm mt-2">Monitor foot traffic in real-time using our web application.</p>
                <a href="dashboard" class="bg-[#007BFF] text-white px-4 py-1.5 rounded-full btn-hover text-xs mt-3 inline-block">Go to Dashboard</a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="w-full text-center py-2 bg-gray-100 text-gray-600 text-xs mt-6">
        <p>&copy; 2025 IoT Person Counter. All rights reserved.</p>
    </footer>

</body>
</html>
