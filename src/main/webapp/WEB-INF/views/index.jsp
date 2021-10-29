<%--<%@ taglib prefix="c" uri="https://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - IP-Teacher</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav" style="background: rgb(44, 62, 80);">
        <div class="container"><a class="navbar-brand" href="/">IP-Teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/profile">Profile</a></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <h1 style="font-size: 50px;color: rgb(44,62,80);text-shadow: 2px 5px 14px rgb(47,66,84);">Choose the type of IP</h1>
        <div class="row" style="margin-top: 30px;">
            <div class="col">
                <div class="dropdown" style="color: rgb(44,62,80);"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="height: 80px;width: 250px;margin-left: 10px;color: rgb(44,62,80);font-size: 25px;background: rgb(229,231,230);border-radius: 10px;box-shadow: 2px 2px 10px 1px;"><strong>Classes</strong>&nbsp;</button>
                    <div class="dropdown-menu"><a class="dropdown-item" href="/nets/classes/theory">Theory</a><a class="dropdown-item" href="/nets/classes/trainy">Trainy</a><a class="dropdown-item" href="/nets/classes/control">Controll</a></div>
                </div>
            </div>
            <div class="col">
                <div class="dropdown" style="color: rgb(44,62,80);"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="height: 80px;width: 250px;margin-left: 10px;color: rgb(44,62,80);font-size: 25px;background: rgb(229,231,230);border-radius: 10px;box-shadow: 2px 2px 10px 1px;"><strong>No Classes</strong>&nbsp;</button>
                    <div class="dropdown-menu"><a class="dropdown-item" href="#">Theory</a><a class="dropdown-item" href="#">Trainy</a><a class="dropdown-item" href="#">Controll</a></div>
                </div>
            </div>
            <div class="col">
                <div class="dropdown" style="color: rgb(44,62,80);"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="height: 80px;width: 250px;margin-left: 10px;color: rgb(44,62,80);font-size: 25px;background: rgb(229,231,230);border-radius: 10px;box-shadow: 2px 2px 10px 1px;"><strong>Under Nets</strong>&nbsp;</button>
                    <div class="dropdown-menu"><a class="dropdown-item" href="#">Theory</a><a class="dropdown-item" href="#">Trainy</a><a class="dropdown-item" href="#">Controll</a></div>
                </div>
            </div>
        </div>
    </header>
    <section id="contact">
        <div class="container">
            <h2 class="text-uppercase text-center text-secondary mb-0">Contact Me</h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <form id="contactForm" name="sentMessage" novalidate="novalidate" method="post" action="index.jsp">
                        <div class="control-group">
                            <div class="mb-0 form-floating controls pb-2"><input class="form-control" type="text" id="name" required="" placeholder="Name"><label class="form-label">Name</label><small class="form-text text-danger help-block"></small></div>
                        </div>
                        <div class="control-group">
                            <div class="mb-0 form-floating controls pb-2"><input class="form-control" type="email" id="email" required="" placeholder="Email Address"><label class="form-label">Email Address</label><small class="form-text text-danger help-block"></small></div>
                        </div>
                        <div class="control-group">
                            <div class="mb-0 form-floating controls pb-2"><input class="form-control" type="tel" id="phone" required="" placeholder="Phone Number"><label class="form-label">Phone Number</label><small class="form-text text-danger help-block"></small></div>
                        </div>
                        <div class="control-group">
                            <div class="mb-5 form-floating controls pb-2"><textarea class="form-control" id="message" required="" placeholder="Message" style="height: 150px;"></textarea><label class="form-label">Message</label><small class="form-text text-danger help-block"></small></div>
                        </div>
                        <div id="success"></div>
                        <div><button class="btn btn-primary btn-xl" id="sendMessageButton" type="submit">Send</button></div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP-Teacher © 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>