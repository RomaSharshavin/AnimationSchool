% rebase('layout.tpl',datausers=datausers)

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lora&display=swap" rel="stylesheet">

<!-- Считывание данных из файла в заголовок -->
<div class="rectanglefinal">
    % for i in datausers:
        <h4 class="fonts">{{ i }}</h4>
    % end
</div>

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
    .rectanglefinal {
        position: absolute;
        width: 875px;
        height: 100%;
        left: 209px;
        top: 150px;
    }
    .fonts {
        font-family: 'Cambria', serif;
        font-style: normal;
        font-weight: 300;
        font-size: 25px;
        line-height: 55px;
        color: #000000;
    }
</style>