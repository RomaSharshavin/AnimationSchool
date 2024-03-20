% rebase('layout.tpl', title='Home Page', year=year)
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Детская школа анимации</title>
    <style>
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

</body>
</html>

<!-- Horizontal Carousel -->
<div class="gallery">
    <div class="gallery-cell"><img src="static/images/walpaper/a.jpg" alt="Photo 2"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/b.jpg" alt="Photo 3"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/c.jpg" alt="Photo 4"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/d.jpg" alt="Photo 5"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/e.jpg" alt="Photo 6"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/f.jpg" alt="Photo 7"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/g.jpg" alt="Photo 8"></div>
    <div class="gallery-cell"><img src="static/images/walpaper/h.jpg" alt="Photo 9"></div>
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

    .jumbotron {
        animation: fadeInAnimation 2s;
        position: relative;
        z-index: 1;
        margin-top: 300px; 
    }
    .col-md-4 {
    text-align: center;
    }



    @keyframes fadeInAnimation {
        from {
            opacity: 0;
        }

        to {
            opacity: 1;
        }
    }

    /* Gallery CSS */
    * {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    .gallery {
        background: #EEE;
        display: flex;
        align-items: center;
        overflow: hidden;
        position: relative;
    }

    .gallery-cell {
        width: 30%;
        height: 300px;
        margin-right: 10px;
        background: #8C8;
        counter-increment: gallery-cell;
        flex-shrink: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
    }

    .gallery-cell img {
        display: block;
    }

    /* cell number */
    .gallery-cell:before {
        display: block;
        text-align: center;
        content: counter(gallery-cell);
        line-height: 200px;
        font-size: 80px;
        color: white;
    }

    .prev-btn,
    .next-btn {
        position: absolute;
        top: 90%;
        transform: translateY(-150%);
        background-color:  transparent;
        color: black;
        padding: 5px 10px;
        border: none;
        cursor: pointer;
        z-index: 5; 
    }

    .prev-btn {
        left: 10px;
    }

    .next-btn {
        right: 10px;
    }
</style>

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