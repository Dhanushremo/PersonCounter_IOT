<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live IoT Person Counter</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background: linear-gradient(90deg, #ff0000, #ff7f00, #ffff00, #00ff00, #0000ff, #4b0082, #8b00ff);
            background-size: 400% 400%;
            animation: rainbow 10s infinite linear;
            color: white;
            font-family: "Poppins", sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

        @keyframes rainbow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .header {
            position: absolute;
            top: 20px;
            width: 90%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .counter-value {
            font-size: 5rem;
            font-weight: bold;
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
        }

        .contact-btn {
            background: linear-gradient(45deg, #14b8a6, #06b6d4);
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s;
        }

        .contact-btn:hover {
            background: linear-gradient(45deg, #06b6d4, #14b8a6);
            transform: scale(1.1);
        }
    </style>
</head>
<body>

    <div class="header">
        <h1 class="text-2xl font-bold tracking-wide">Live IoT Person Counter</h1>
        <a href="contact" class="contact-btn">Contact Us</a>
    </div>

    <div class="counter-value">
        <span>${personCount}</span>
    </div>

</body>
</html>
