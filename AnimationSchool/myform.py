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
     data = request.forms.get("NAME")#получаем данные из формы 'им€'
     data11 = request.forms.get("EMAIL")#получаем данные из формы 'email'
     data12 = request.forms.get("MESSAGE")#получаем данные из формы 'сообщение'
     if not mail(data11):
         return "Ёлектронный адрес невалидный!"#проверка на корректность введЄнного адреса эл.почты
     if(len(data)) <= 1:
         return "—лишком короткое им€!" #проверка на корректность введЄнной информации в поле 'им€'
     if(data12) == "":
         return "ќшибка, пустое сообщение!"#проверка на корректность введЄнного сообщени€
     file = open("newData.txt", "a")
     file.write("Name: " + data + "\n")
     file.write("Email: " + data11 + "\n")
     file.write("Message: " + data12 + "\n")
     file.write("------------------------------------" + "\n")
     file.close()
     return "ќтзыв отправлен!"#запись данных в файл
     
     
     
     
     
     
     




