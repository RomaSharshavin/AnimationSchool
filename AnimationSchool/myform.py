from bottle import post, request, redirect
import re
def mail(email:str):
    regex = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+')
    if re.fullmatch(regex, email):
        return True
    else:
        return False   
@post('/forms', method="post")
def my_form():
     data = request.forms.get("NAME")#получаем данные из формы 'им¤'
     data11 = request.forms.get("EMAIL")#получаем данные из формы 'email'
     data12 = request.forms.get("MESSAGE")#получаем данные из формы 'сообщение'
     if not mail(data11):
         return "Электронный адрес невалидный!"#проверка на корректность введЄнного адреса эл.почты
     if(len(data)) <= 1:
         return "Слишком короткое им¤!" #проверка на корректность введЄнной информации в поле 'им¤'
     if(data12) == "":
         return "Ошибка! Пустое сообщение!"#проверка на корректность введЄнного сообщени¤
     file = open("newData.txt", "a")
     file.write("Имя: " + data + "\n")
     file.write("Почта: " + data11 + "\n")
     file.write("Сообщение: " + data12 + "\n")
     file.write("------------------------------------" + "\n")
     file.close()
     return "Отзыв отправлен! Спасибо!"#запись данных в файл

