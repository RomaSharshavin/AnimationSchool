% rebase('layout.tpl', title=title, year=year, datausers=datausers)
<html lang="en">
<!-- Feedback -->
<h1></h1>
<h3>MY PROFILE</h3>
<link rel="stylesheet" href="static/content/StylesForms.css"/>
    <style>
        body {
            /* Style for background */
            background-image: url('static/images/background.jpg');
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
        <div class="form-at">
            <div class="validate-input-at w-50" data-validate="Required field">
                <input class="input-at" type="text" name="NAME" placeholder="Your name..." />
                <span class="focus-input-at"></span>
            </div>
            <div class="validate-input-at w-50" data-validate="Required field">
                <input class="input-at" type="text" name="EMAIL" placeholder="Your email address..." />
                <span class="focus-input-at"></span>
            </div>
            <div class="validate-input-at w-50" data-validate="Required field">
                <input class="input-at" type="tel" name="PHONE" placeholder="Your phone number..." />
                <span class="focus-input-at"></span>
            </div>
            <div class="validate-input-at" data-validate="Required field">
                <textarea class="input-at" name="MESSAGE" placeholder="Tell us about yourself..."></textarea>
                <span class="focus-input-at"></span>
            </div>
            <button id="submit-at" class="form-at-btn">Submit</button>
        </div>
        <div class="result-at"></div>
    </div>
    <div class="rectanglefinal"></div>
</form>
</body>