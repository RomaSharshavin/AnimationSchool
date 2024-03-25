<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="ru">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Услуги</title>
    <link rel="stylesheet" href="static/content/StyleServices.css">
    <style>
        body {
            /* Стиль для фона */
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
    % rebase('layout.tpl', title=title, year=year)
    <div class="container">
        <div class="row">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="/" class="navbar-brand">Детская школа анимации</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="/about">Услуги</a></li>
                            <li><a href="/contact">Контакты</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="service-container">
            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv1.png" alt="Услуга 1" class="service-image">
                        <h3 class="service-title">Анимация в After Effects</h3>
                        <p class="service-price">Цена: 16000 руб</p>
                        <p class="service-description">На курсе Вы узнаете, как из сценария сделать раскадровку, 
                        а из раскадровки аниматик, и как делать анимацию и компоузинг в программе After Effects.</p>
                        <p><a href="https://biganimationschool.ru/after2024" target="_blank">Подробнее</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv2.png" alt="Услуга 2" class="service-image">
                        <h3 class="service-title">Кукольная анимация</h3>
                        <p class="service-price">Цена: 10000 руб</p>
                        <p class="service-description">На данном курсе Вы освоите старейшую анимационную технику, с которой началась история кинематографа, а конкретно
                        работа с куклой, от разработки персонажа до съемки мультфильма.</p>
                        <p><a href="https://biganimationschool.ru/puppetoffline" target="_blank">Подробнее</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv3.png" alt="Услуга 3" class="service-image">
                        <h3 class="service-title">Основы анимации. Procreate</h3>
                        <p class="service-price">Цена: 16000 руб</p>
                        <p class="service-description">Познакомитесь с техниками рисованной анимацией, освоите интерфейс программы Procreate и получите начальные 
                        навыки работы со звуком и монтажом.</p>
                        <p><a href="https://biganimationschool.ru/procreate" target="_blank">Подробнее</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv4.png" alt="Услуга 4" class="service-image">
                        <h3 class="service-title">Живопись. Шедевры мастеров.</h3>
                        <p class="service-price">Цена: 22000 руб</p>
                        <p class="service-description">Получите профессиональное обучение под руководством опытных художников, 
                        разберитесь в секретах композиции, светотени и цвета.</p>
                        <p><a href="https://biganimationschool.ru/paintingoldmasters" target="_blank">Подробнее</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

