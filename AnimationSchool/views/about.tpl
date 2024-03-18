<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="ru">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Услуги</title>
    <style>
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
        @keyframes slideInFromTop {
          0% {
            transform: translateY(-100%);
            opacity: 0;
          }
          100% {
            transform: translateY(0);
            opacity: 1;
          }
        }

        .slide-in-from-top {
        animation: slideInFromTop 1s ease-in-out;
        font-size: 45px;
        position: absolute;
        top: 10%;
        left: 43%;
        color: black;
        }

        .container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            width: 80%;
            max-width: 1200px;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .image {
            flex: 1;
            margin-right: 20px;
        }

        .image img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .content {
            flex: 2;
        }

        .content h2 {
            font-size: 24px;
            color: #333;
        }

        .content p {
            font-size: 16px;
            color: #666;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

    </style>
</head>

<body>
    % rebase('layout.tpl', title=title, year=year)
    <div class="scroll">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="/" class="navbar-brand">Application name</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/home">Home</a></li>
                        <li><a href="/about">Услуги</a></li>
                        <li><a href="/contact">Контакты</a></li>
                    </ul>   
                </div>
            </div>
        </div>

        <div class="slide-in-from-top">
          <h2> Услуги Школы </h2>
        </div>>

    </div>>

    <div class="container">
        <div class="image">
            <img src="path/to/image.jpg" alt="Изображение услуги">
        </div>
        <div class="content">
            <h2>Название услуги</h2>
            <p>Описание услуги здесь. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <a href="#" class="button">Заказать</a>
        </div>
    </div>
</body>
</html>
