from bottle import post, request, response
import re

def is_valid_phone(phone):
    phone_regex = r'^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$'
    return bool(re.match(phone_regex, phone))

def is_valid_email(email):
    email_regex = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Za-z]{2,})+'
    return bool(re.fullmatch(email_regex, email))

def has_only_latin_chars(s):
    return all(ord(char) < 128 for char in s)

email_to_name = {}
phone_to_name = {}

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

    for field, value in fields.items():
        if not value.strip():
            errors.append(f"{field} is required!")
        elif field == "Name" and not value.isalpha():
            errors.append(f"{field} cannot consist of only digits!")
        elif field == "Last Name" and not value.isalpha():
            errors.append(f"{field} cannot consist of only digits!")
        elif field == "Email":
            if email_to_name.get(value) and email_to_name[value] != fields['Name'] != fields['Last Name']:
                errors.append("Email address is already associated with a different name!")
            elif not is_valid_email(value):
                errors.append("Invalid email format!")
            else:
                email_to_name[value] = fields['Name']
        elif field == "Phone":
            if phone_to_name.get(value) and phone_to_name[value] != fields['Name'] != fields['Last Name']:
                errors.append("Phone number is already associated with a different name!")
            elif not is_valid_phone(value):
                errors.append("Invalid phone number format!")
            else:
                phone_to_name[value] = fields['Name']
        elif field == "Message" and not has_only_latin_chars(value):
            errors.append("Only Latin characters, numbers, and symbols are allowed in the Message field!")

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