<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
    <link rel="stylesheet" href="static/content/StyleServices.css">
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
                            <li><a href="/contact">Contact</a></li>
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
                        <p class="service-price">Price: 16000 RUB</p>
                        <p class="service-description">In this course, you will learn how to create storyboards from scripts, 
                        how to create animatics from storyboards, and how to animate and composite in After Effects.</p>
                        <p><a href="https://biganimationschool.ru/after2024" target="_blank">Learn More</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv2.png" alt="Service 2" class="service-image">
                        <h3 class="service-title">Puppet Animation</h3>
                        <p class="service-price">Price: 10000 RUB</p>
                        <p class="service-description">In this course, you will master one of the oldest animation techniques, 
                        puppetry, covering everything from character development to filming a stop-motion film.</p>
                        <p><a href="https://biganimationschool.ru/puppetoffline" target="_blank">Learn More</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv3.png" alt="Service 3" class="service-image">
                        <h3 class="service-title">Animation Basics. Procreate</h3>
                        <p class="service-price">Price: 16000 RUB</p>
                        <p class="service-description">Explore techniques of hand-drawn animation, master the Procreate software interface, 
                        and gain basic skills in sound and editing.</p>
                        <p><a href="https://biganimationschool.ru/procreate" target="_blank">Learn More</a></p>
                    </div>
                </div>
            </div>

            <div class="service">
                <div class="service-content">
                    <div class="grid-container">
                        <img src="static/images/services/serv4.png" alt="Service 4" class="service-image">
                        <h3 class="service-title">Painting. Masterpieces of Masters.</h3>
                        <p class="service-price">Price: 22000 RUB</p>
                        <p class="service-description">Receive professional training under the guidance of experienced artists, 
                        delve into the secrets of composition, light and shadow, and color.</p>
                        <p><a href="https://biganimationschool.ru/paintingoldmasters" target="_blank">Learn More</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>