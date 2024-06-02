from bottle import post, request
import re

def is_english(text):
    return bool(re.match('^[\\w !\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~]*$', text))

def mail(email):
    regex = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+')
    return bool(re.fullmatch(regex, email))

@post('/forms', method="post")
def my_form():
    data = request.forms.get("NAME")
    data11 = request.forms.get("EMAIL")
    data12 = request.forms.get("MESSAGE")

    if not mail(data11):
        return "Некорректный ввод почты!"

    if len(data) <= 1 or not is_english(data):
        return "Некорректное имя! Пожалуйста введите на английском."

    if not is_english(data12):
        return "Некорректное сообщение! Пожалуйста введите на английском."

    if data12 == "":
        return "Ошибка! Сообщение пустое."

    file = open("newData.txt", "a")
    file.write("Имя: " + data + "\n")
    file.write("Почта: " + data11 + "\n")
    file.write("Сообщение: " + data12 + "\n")
    file.write("------------------------------------" + "\n")
    file.close()

    return "Отзыв отправлен! Спасибо!"