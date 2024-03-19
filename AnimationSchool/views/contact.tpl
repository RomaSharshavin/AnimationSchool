% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Контакты</title>
    <style>
        /* Стили для основного контейнера */
        body {
            background-image: url('static/images/fon.jpg');
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        /* Стили для контента */
        .content {
            display: flex;
            align-items: center;
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
        }
        /* Анимация появления контента */
        .text-info {
            flex: 1;
            padding: 30px;
            text-align: center;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        /* Стили для текста */
        .text-info h2 {
            color: #333;
            font-size: 2em;
            font-weight: bold;
        }
        .text-info p {
            color: #666;
            font-size: 1.2em;
            margin-top: 10px;
        }
        .text-info p:last-child {
            color: black;
        }
        /* Стили для контейнера карты */
        .map-container {
            flex: 1;
            height: 500px;
            width: 600px;
            border: 1px solid #ccc;
            margin-left: 20px;
            border-radius: 10px;
            overflow: hidden;
        }
        iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }
    </style>
</head>
<body>
    <div class="content">
        <div class="text-info">
            <h2>КОНТАКТЫ</h2>
            <p>+7 (911) 123-45-67</p>
            <p><a href="mailto:animationschool@yandex.ru">animationschool@yandex.ru</a></p>
            <p>Санкт-Петербург, Лиговский пр. 56А, офис 502</p>
            <p>Звоните, пишите или приезжайте, мы всегда рады новым знакомствам!</p>
        </div>
        <div class="map-container">
            <iframe src="https://maps.google.com/maps?q=59.923861,30.360167&z=15&output=embed"
            width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>        
        </div>
    </div>
</body>
</html>

