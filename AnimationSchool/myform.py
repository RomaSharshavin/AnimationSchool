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
    last_name = request.forms.get("LAST_NAME")
    email = request.forms.get("EMAIL")
    phone = request.forms.get("PHONE")
    message = request.forms.get("MESSAGE")

    if not name:
        return """   
            <script>
                alert("Name is required!");
                window.location.href = "/forms"; 
            </script>
            """
    if not last_name:
        errors.append("Last Name is required!")
    if not email:
        errors.append("Email is required!")
    if not phone:
        errors.append("Phone is required!")
    if not message:
        errors.append("Message is required!")

    if not name.isalpha():
        errors.append("Name cannot consist of only digits!")
        
    if not last_name.isalpha():
        errors.append("Last name cannot consist of only digits!")

    if email and not is_valid_email(email):
        errors.append("Invalid email format!")
    if phone and not is_valid_phone(phone):
        errors.append("Invalid phone number format!")

    if errors:
        response.content_type = 'text/plain'
        return '\n'.join(errors)
    else:
        with open("newData.txt", "a", encoding="utf-8") as file:
            file.write("Name: " + name + "\n")
            file.write("Last Name: " + last_name + "\n")
            file.write("Email: " + email + "\n")
            file.write("Phone: " + phone + "\n")
            file.write("About Myself: " + message + "\n")
            file.write("------------------------------------\n")
        return "Thanks!"