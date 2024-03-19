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

        .service-container {
            display: flex;
            flex-wrap: wrap;
            width: 90%;
            justify-content: space-around; /* Равномерно распределяем контейнеры по ширине */
            align-items: center;
            margin-top: 50px;
            padding: 10px;
            margin: 0 auto; /* Центрируем контейнеры по горизонтали */
        }

        .service {
            background-color: #fff;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: calc(50% - 20px); /* Ширина контейнера, учитывая отступы */
            padding: 20px;
            margin: 0 10px; /* Отступ между контейнерами */
            flex-basis: calc(50% - 20px); /* Устанавливаем базовый размер для контейнера */
            flex-grow: 1; /* Разрешаем контейнеру увеличиваться в размере */
        }

        .first-service {
            margin-top: 200px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 1fr;
            grid-gap: 10px;
        }

        .service:not(:first-child) {
            margin-top: 20px;
        }

        .service-image {
            width: 100%;
            max-width: 80px;
            height: auto;
            margin-right: 10px;
        }

        .service-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .service-title {
            font-family Arial, sans-serif;
            font-size: 16px;
            font-weight: bold;
        }

        .service-price {
            font-size: 16px;
            margin-bottom: 5px;
            align-self: flex-end;
            text-decoration: underline;
        }

        .service-description {
            font-size: 14px;
            text-align: center;
        }

        /* Новые стили для выделенного контейнера */
        .text-container {
            max-width: 800px; /* Ширина контейнера текста */
            margin: 10px; /* Внешний отступ контейнера */
            padding: 20px; /* Внутренний отступ контейнера */
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .service {
            margin-bottom: 20px; /* Добавляем отступ между блоками услуг */
        }

        .service-content {
            overflow: hidden; /* Добавляем скрытие избыточного содержимого */
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
        
        <div class="service-container first-service">
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
                        <p class="service-description">Слушатели курса получат профессию художника-мультипликатора, освоят технологию работы 
                        с куклой от разработки персонажа до съемки мультфильма.</p>
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

