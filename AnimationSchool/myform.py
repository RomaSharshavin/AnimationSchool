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
    fields = {
        "Name": request.forms.get("NAME"),
        "Last Name": request.forms.get("LAST_NAME"),
        "Email": request.forms.get("EMAIL"),
        "Phone": request.forms.get("PHONE"),
        "Message": request.forms.get("MESSAGE")
    }

    # Check for missing or invalid input fields
    for field, value in fields.items():
        if not value:
            errors.append(f"{field} is required!")
        elif field == "Name" and not value.isalpha():
            errors.append(f"{field} cannot consist of only digits!")
        elif field == "Last Name" and not value.isalpha():
            errors.append(f"{field} cannot consist of only digits!")
        elif field == "Email" and not is_valid_email(value):
            errors.append("Invalid email format!")
        elif field == "Phone" and not is_valid_phone(value):
            errors.append("Invalid phone number format!")

    if errors:
        return f"""   
            <script>
                alert("{errors[0]}");
                window.location.href = "/forms"; 
            </script>
            """

    # Save valid form data to a file
    with open("newData.txt", "a", encoding="utf-8") as file:
        for field, value in fields.items():
            file.write(f"{field}: {value}\n")
        file.write("------------------------------------\n")

    return "Thanks!"