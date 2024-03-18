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

        .scroll {
            overflow-y: auto; /* Добавляет вертикальную прокрутку */
            height: 100vh; /* Задает фиксированную высоту контейнера */
            flex-grow: 1;
        }

        .service {
            background-color: #fff;
            border-radius: 5px;
            margin: 30px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            max-width: 600px;
        }

        .service-image {
            width: 100%;
            max-width: 200px;
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

        .first-service {
            margin-top: 150px;
        }

        .service:not(:first-child) {
            margin-top: 30px;
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
                        <a href="/" class="navbar-brand">Application name</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="/home">Домашняя</a></li>
                            <li><a href="/about">Услуги</a></li>
                            <li><a href="/contact">Контакты</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="slide-in-from-top">
            <div class="service first-service" style="max-width: 400px;">
                <img src="static/images/service1.jpg" alt="Услуга 1" class="service-image">
                <div class="service-content">
                    <h3 class="service-title">Название услуги 1</h3>
                    <p class="service-price">Цена: $50</p>
                    <p class="service-description">Описание услуги 1.</p>
                </div>
            </div>

            <div class="service" style="max-width: 400px;">
                <img src="static/images/service2.jpg" alt="Услуга 2" class="service-image">
                <div class="service-content">
                    <h3 class="service-title">Название услуги 2</h3>
                    <p class="service-price">Цена: $75</p>
                    <p class="service-description">Описание услуги 2.</p>
                </div>
            </div>

            <div class="service" style="max-width: 400px;">
                <img src="static/images/service3.jpg" alt="Услуга 3" class="service-image">
                <div class="service-content">
                    <h3 class="service-title">Название услуги 3</h3>
                    <p class="service-price">Цена: $100</p>
                    <p class="service-description">Описание услуги 3.</p>
                </div>
            </div>
        </div>

    </div>
</body>
</html>

