% rebase('layout.tpl',  title=title, year=year, datausers = datausers)
<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Lora&display=swap" rel="stylesheet">

<!--Считывание данных из файла в заголовок -->
<div class = "rectanglefinal">
%for i in datausers:
    <h4 class ="fonts"> {{i}} </h4>
%end

<!--Стилизация для вывода текста из файла -->
</div>
<style>
.fonts{
    font-family: 'Pacifico';
    font-style: normal;
    font-weight: 400;
    font-size: 32px;
    line-height: 56px;
    color: #0000000;
}
</style>
