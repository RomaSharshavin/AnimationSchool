% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/content/StyleContact.css">
    <title>Contact</title>
    <style>
        /* Styles for the main container */
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
    </style>
</head>
<body>
    <div class="content">
        <div class="text-info">
            <h2>CONTACTS</h2>
            <p>+7 (911) 123-45-67</p>
            <p><a href="mailto:animationschool@yandex.ru">animationschool@yandex.ru</a></p>
            <p>Saint Petersburg, Ligovsky pr. 56A, office 502</p>
            <p>Call, write, or come over, we are always happy to meet new people!</p>
        </div>
        <div class="map-container">
            <iframe src="https://maps.google.com/maps?q=59.923861,30.360167&z=15&output=embed"
            width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>        
        </div>
    </div>
</body>
</html>