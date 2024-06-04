from bottle import post, request, response  
import re  

def is_valid_phone(phone):
    phone_regex = r'^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'  # Регулярное выражение для проверки формата телефонного номера
    return bool(re.match(phone_regex, phone)) 

def is_valid_email(email):
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'  # Регулярное выражение для проверки формата электронной почты
    return bool(re.fullmatch(email_regex, email))  

def has_only_latin_chars(s):
    return all(ord(char) < 128 for char in s)  # Проверка, что строка содержит только символы латинского алфавита

email_to_name = {}  
phone_to_name = {}  

@post('/forms', method="post")
def my_form():
    errors = []  # Список для хранения ошибок
    fields = {  # Словарь для хранения полей формы и соответствующих значений
        "Name": request.forms.get("NAME"),
        "Last Name": request.forms.get("LAST_NAME"),
        "Email": request.forms.get("EMAIL"),
        "Phone": request.forms.get("PHONE"),
        "Message": request.forms.get("MESSAGE")
    }

    for field, value in fields.items():
        if not value.strip():  # Проверка на пустое значение
            errors.append(f"{field} is required!")  # Добавление сообщения об ошибке
        elif field == "Name" and not value.isalpha():  # Проверка имени на наличие только букв
            errors.append(f"{field} cannot consist of only digits!")  # Добавление сообщения об ошибке
        elif field == "Last Name" and not value.isalpha():  # Проверка фамилии на наличие только букв
            errors.append(f"{field} cannot consist of only digits!")  # Добавление сообщения об ошибке
        elif field == "Email":
            if email_to_name.get(value) and email_to_name[value] != fields['Name'] != fields['Last Name']:
                errors.append("Email address is already associated with a different name!")  # Добавление сообщения об ошибке
            elif not is_valid_email(value):  # Проверка формата электронной почты
                errors.append("Invalid email format!")  # Добавление сообщения об ошибке
            else:
                email_to_name[value] = fields['Name']  # Запись соответствия электронной почты и имени
        elif field == "Phone":
            if phone_to_name.get(value) and phone_to_name[value] != fields['Name'] != fields['Last Name']:
                errors.append("Phone number is already associated with a different name!")  # Добавление сообщения об ошибке
            elif not is_valid_phone(value):  # Проверка формата телефонного номера
                errors.append("Invalid phone number format!")  # Добавление сообщения об ошибке
            else:
                phone_to_name[value] = fields['Name']  # Запись соответствия телефонного номера и имени
        elif field == "Message" and not has_only_latin_chars(value):
            errors.append("Only Latin characters, numbers, and symbols are allowed in the Message field!")  # Добавление сообщения об ошибке

    if errors:
        return f"""
            <script>
                alert("{errors[0]}");
                window.history.back();
                // Restore form values
            </script>
            """
    else:
        with open("newData.txt", "a", encoding="utf-8") as file:
            for field, value in fields.items():
                file.write(f"{field}: {value}\n")
            file.write("------------------------------------\n")

        return f"""
            <script>
                alert("Your profile has been added. Thanks! Check chapter 'Active Users'");
                window.location.href = "/forms";
            </script>
            """