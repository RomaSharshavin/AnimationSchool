% rebase('layout.tpl', title='Home Page', year=year)
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Детская школа анимации</title>
    <link rel="stylesheet" href="static/content/StylesHomePagу.css">
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


        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .jumbotron {
            animation: fadeIn 1s ease-out;
        }
    }
    </style>
</head>
<body>
    <div class="jumbotron text-center" style="background-color: transparent;">
        <h1 class="animateanimated animatefadeIn">Детская школа анимации</h1>
        <p class="lead animateanimated animatefadeIn">Добро пожаловать на сайт детской школы анимации. Здесь вы найдете всю необходимую информацию о нашей школе и курсах.</p>
    </div>

<!-- Horizontal Carousel -->
<div class="gallery">
    <div class="gallery-cell"><img src="static/images/imageCarousel/a.jpg" alt="Photo 2"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/b.jpg" alt="Photo 3"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/c.jpg" alt="Photo 4"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/d.jpg" alt="Photo 5"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/e.jpg" alt="Photo 6"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/f.jpg" alt="Photo 7"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/g.jpg" alt="Photo 8"></div>
    <div class="gallery-cell"><img src="static/images/imageCarousel/h.jpg" alt="Photo 9"></div>
</div>

<button class="prev-btn" alt="<<"><<</button>
<button class="next-btn" alt=">>">>></button>


<div class="row">
    <div class="col-md-12 text-center">
        <h2></h2>
        <p>
            <b>Детская школа анимации</b> предоставляет Вам мощный инструмент для создания динамических веб-сайтов,
            обеспечивая чистое разделение ответственностей и полный контроль над разметкой для приятной и гибкой разработки.
        </p>
    </div>
</div>
 

<script>
    document.addEventListener('DOMContentLoaded', function() {
    document.querySelector('.prev-btn').addEventListener('click', function() {
        let gallery = document.querySelector('.gallery');
        if (gallery.scrollLeft === 0) {
            gallery.scrollLeft = gallery.scrollWidth - gallery.clientWidth;
        } else {
            gallery.scrollLeft -= 340;
        }
    });

    document.querySelector('.next-btn').addEventListener('click', function() {
        let gallery = document.querySelector('.gallery');
        if (gallery.scrollLeft >= (gallery.scrollWidth - gallery.clientWidth)) {
            gallery.scrollLeft = 0;
        } else {
            gallery.scrollLeft += 340;
        }
    });
});
</script>

</body>
</html>