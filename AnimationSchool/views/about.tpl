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
            /* Измененные стили */
            display: flex;
            flex-wrap: wrap;
            width: 100%;
            justify-content: space-start;
        }

        .service {
            background-color: #fff;
            border-radius: 5px;
            margin: 20px;
            padding: 50px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            width: 1000px; /* Изменение ширины контейнера услуги для двух столбцов */
            height: 160px;
        }

        .first-service {
            margin-top: 250px;
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
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 5px;
        }

        .service-price {
            font-size: 16px;
            margin-bottom: 5px;
            align-self: flex-end;
        }

        .service-description {
            font-size: 14px;
            text-align: center;
        }

        /* Новые стили для выделенного контейнера */
        .text-container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
                        <p class="service-description">Образовательный курс по одной из самых известных анимационных программ 
                        состоит из 8 видеоуроков и 8 вебинаров. На курсе вы узнаете, как из сценария сделать раскадровку, 
                        а из раскадровки аниматик, и как делать анимацию и компоузинг в программе After Effects.</p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv2.png" alt="Услуга 2" class="service-image">
                        <h3 class="service-title">Кукольная анимация</h3>
                        <p class="service-price">Цена: 10000 руб</p>
                        <p class="service-description">Занятия проводятся в студии кукольной анимации. 
                        За 1 год обучения слушатели курса получат профессию художника-мультипликатора, освоят технологию работы 
                        с куклой от разработки персонажа до съемки мультфильма, снимут свой персональный проект и получат 
                        диплом о профессиональной переподготовке.</p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv3.png" alt="Услуга 3" class="service-image">
                        <h3 class="service-title">Основы анимации. Procreate</h3>
                        <p class="service-price">Цена: 16000 руб</p>
                        <p class="service-description">На курсе вы узнаете основные 12 принципов создания анимации, 
                        познакомитесь с техниками рисованной анимацией, stop-motion и ротоскоп, основам для разработки персонажа 
                        и художественного решения мультфильма, освоите интерфейс программы Procreate и получите начальные 
                        навыки работы со звуком и монтажом.</p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv4.png" alt="Услуга 4" class="service-image">
                        <h3 class="service-title">Живопись. Шедевры мастеров.</h3>
                        <p class="service-price">Цена: 42000 руб</p>
                        <p class="service-description">Наш курс по живописи «Шедевры старых мастеров» предлагает уникальную 
                        возможность погрузиться в мир натюрморта и изучить техники создания копий живописи старых 
                        мастеров. Получите профессиональное обучение под руководством опытных художников, 
                        разберитесь в секретах композиции, светотени и цвета. Освоив этот курс, 
                        вы сможете создавать удивительные картины, которые будут радовать вас и ваших близких.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

