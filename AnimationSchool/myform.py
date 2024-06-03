from bottle import post, request, response
import re

def is_valid_phone(phone):
    # Phone number format check
    phone_regex = r'^\+?\d{1,2}?[-\s]?\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$'
    return bool(re.match(phone_regex, phone))

def is_valid_email(email):
    # Email format check
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'
    return bool(re.fullmatch(email_regex, email))

@post('/forms', method="post")
def my_form():
    errors = []
    name = request.forms.get("NAME")
    email = request.forms.get("EMAIL")
    phone = request.forms.get("PHONE")
    message = request.forms.get("MESSAGE")

    if not name:
        errors.append("Name is required!")
    elif not re.match("^[A-Za-z ]+$", name):
        errors.append("Name should contain only English alphabets and spaces!")
    
    if not email:
        errors.append("Email is required!")
    if not phone:
        errors.append("Phone is required!")
    if not message:
        errors.append("Message is required!")
    elif not re.match("^[A-Za-z0-9 !?.,]+$", message):
        errors.append("Message should contain only English alphabets, numbers, spaces, and common punctuation marks!")

    if not is_valid_email(email) and email:
        errors.append("Invalid email format!")
    if not is_valid_phone(phone) and phone:
        errors.append("Invalid phone number format!")

    if errors:
        response.content_type = 'text/plain'
        return '\n'.join(errors)
    else:
        with open("newData.txt", "+a", encoding="utf-16") as file:
            file.write("Name: " + name + "\n")
            file.write("Email: " + email + "\n")
            file.write("Phone: " + phone + "\n")
            file.write("About myself: " + message + "\n")
            file.write("------------------------------------\n")
        return "Thanks!"