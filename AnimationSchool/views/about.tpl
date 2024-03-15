% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
          font-size: 45px; /* Размер шрифта */
          position: fixed; /* Фиксированное позиционирование */
          top: 0; /* Расположение в верхней части */
          transform: translateX(-50%); /* Центрирование по горизонтали */
        }

    </style>
</head>
    <div class="slide-in-from-top">
      Услуги Школы
    </div>
</html>
