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


    </style>
</head>

<body>
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
          <h1> Услуги Школы </h1>
        </div>>

        <div>
            <p>
                <b>Детская школа анимации</b> предоставляет вам мощный инструмент для создания динамических веб-сайтов,
            обеспечивая чистое разделение ответственностей и полный контроль над разметкой для приятной и гибкой разработки.
            </p>
        </div>

    </div>>

    % rebase('layout.tpl', title=title, year=year)
</body>
</html>
