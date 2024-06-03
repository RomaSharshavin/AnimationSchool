% rebase('layout.tpl', title=title, year=year)
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="ru">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
    <link rel="stylesheet" href="static/content/StyleServices.css">
    <style>
        body {
            /* Background style */
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
</head>

<body>
    % rebase('layout.tpl', title=title, year=year)
    <div class="container">
        <div class="row">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="/" class="navbar-brand">Children's Animation School</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="/about">Services</a></li>
                            <li><a href="/contact">Contacts</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="service-container">
            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv1.png" alt="Service 1" class="service-image">
                        <h3 class="service-title">Animation in After Effects</h3>
                        <p class="service-price">Price: 16000 rub</p>
                        <p class="service-description">On the course, you will learn how to turn a script into a storyboard, and a storyboard into an animatic, 
                        as well as how to do animation and compositing in After Effects.</p>
                        <p><a href="https://biganimationschool.ru/after2024" target="_blank">Learn more</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv2.png" alt="Service 2" class="service-image">
                        <h3 class="service-title">Puppet Animation</h3>
                        <p class="service-price">Price: 10000 rub</p>
                        <p class="service-description">On this course, you will master the oldest animation technique, which marks the beginning of the history of cinema, 
                        namely working with puppets, from character development to shooting a cartoon.</p>
                        <p><a href="https://biganimationschool.ru/puppetoffline" target="_blank">Learn more</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv3.png" alt="Service 3" class="service-image">
                        <h3 class="service-title">Animation Basics. Procreate</h3>
                        <p class="service-price">Price: 16000 rub</p>
                        <p class="service-description">You will learn the techniques of drawn animation, master the interface of the Procreate program, and gain initial skills 
                        in working with sound and editing.</p>
                        <p><a href="https://biganimationschool.ru/procreate" target="_blank">Learn more</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv4.png" alt="Service 4" class="service-image">
                        <h3 class="service-title">Painting. Masterpieces of Masters.</h3>
                        <p class="service-price">Price: 22000 rub</p>
                        <p class="service-description">Receive professional education under the guidance of experienced artists, 
                        understand the secrets of composition, light and shade, and color.</p>
                        <p><a href="https://biganimationschool.ru/paintingoldmasters" target="_blank">Learn more</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>