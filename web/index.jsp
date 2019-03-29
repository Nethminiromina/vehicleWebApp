<%-- 
    Document   : index.jsp
    Created on : Feb 28, 2019, 8:26:57 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Vehicle</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <style>
            #sectionimg {
                width: 100%;
                height: 100vh;
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
                background-attachment: fixed;
                /*filter: blur(1px);*/
            }

            #section {
                width: 100%;
                height: 100vh;
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
                /*background-attachment: fixed;*/
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div id="sectionimg">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" style="height: 100vh;">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="img/audi-automobile-car-lights-1149831.jpg" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Hi</h1>
                            <p>hi</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/automobiles-automotives-black-and-white-70912.jpg" alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>THis is a caption</h5>
                            <p>...</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <div id="section" style="background-color: #0c5460"></div>
    <div id="sectionimg" style="background-image: url('img/action-asphalt-auto-racing-274974.jpg')"></div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <script>
        $('.carousel').carousel({
            interval: 3000
        })
    </script>
    <script>

    </script>

</body>
</html>