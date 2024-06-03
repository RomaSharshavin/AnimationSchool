% rebase('layout.tpl', title=title, year=year, datausers=datausers)

<!DOCTYPE html>
<html lang="en">

<!-- Форма "Моя анкета" -->
<h1 style="text-align: center; font-family: Arial, sans-serif; color: #ffffff; font-size: 40px; animation: glow 2s linear infinite;">My Profile</h1>
<link rel="stylesheet" href="static/content/StylesForms.css"/>
<style>
    body {
        /* Стили фона страницы */
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
</style>
<h1></h1>
<body>
    <form id="contact-form" action="/forms" method="post">
        <div class="form-at">
            <div class="form-at" style="text-align: center;">
                <!-- Поле для ввода имени -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="text" name="NAME" placeholder="Your name..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода фамилии -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="text" name="LAST_NAME" placeholder="Your last name..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода почты -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="text" name="EMAIL" placeholder="Your email address..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода телефона -->
                <div class="validate-input-at w-50" data-validate="Required field">
                    <input class="input-at" type="tel" name="PHONE" placeholder="Your phone number..." />
                    <span class="focus-input-at"></span>
                </div>
                <!-- Поле для ввода информации о себе -->
                <div class="validate-input-at" data-validate="Required field">
                    <textarea class="input-at" name="MESSAGE" placeholder="Tell us about yourself..."></textarea>
                    <span class="focus-input-at"></span>
                </div>
                <div id="error-popup" class="error-popup" style="display: none;">
                    <span id="error-message"></span>
                </div>
                <!-- Кнопка Отправить -->
                <button id="submit-at" class="form-at-btn">Submit</button>
            </div>
            <div class="result-at"></div>
        </div>
    </form>
</body>
</html>