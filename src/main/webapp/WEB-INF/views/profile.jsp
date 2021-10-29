<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/profile.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="/">IP-teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
<%--            <div class="collapse navbar-collapse" id="navbarResponsive">--%>
<%--                <ul class="navbar-nav ms-auto">--%>
<%--                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Profile</a></li>--%>
<%--                    <li class="nav-item mx-0 mx-lg-1"></li>--%>
<%--                    <li class="nav-item mx-0 mx-lg-1"></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <div class="container"><img class="img-fluid d-block mx-auto mb-5" src="${pageContext.request.contextPath}/resources/img/profile.png">
            <h1>${firstName} ${lastName}</h1>
            <h1 style="font-size: 20px;">${email}</h1>
            <hr class="star-light">
        </div><a class="btn btn-outline-light btn-xl" role="button" href="#"><i class="fa fa-refresh me-2"></i><span>Change password!</span></a>
    </header>
    <section id="portfolio" class="portfolio">
        <div class="container">
            <h2 class="text-uppercase text-center text-secondary"><strong>profile info</strong></h2>
            <hr class="star-dark mb-5">
            <div class="row">
                <div class="col">
                    <div class="dropdown"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="width: 180px;margin-left: 220px;">List of topics&nbsp;&nbsp;</button>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a><a class="dropdown-item" href="#">Second Item</a><a class="dropdown-item" href="#">Third Item</a></div>
                    </div>
                </div>
                <div class="col">
                    <div class="dropdown"><button class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button" style="width: 180px;margin-left: 60px;">Points&nbsp;</button>
                        <div class="dropdown-menu"><a class="dropdown-item" href="#">Topic #1</a><a class="dropdown-item" href="#">Topic #2</a><a class="dropdown-item" href="#">Topic #3</a></div>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <h1>Topic #</h1>
                    <p>Paragraph</p>
                </div>
                <div class="col">
                    <h1>Topic#</h1>
                    <p>Points...</p>
                </div>
            </div>
        </div>
    </section>
    <section class="text-white bg-primary mb-0" id="about" style="height: 350px;">
        <div class="container">
            <h2 class="text-uppercase text-center text-white">About</h2>
            <hr class="star-light mb-5">
            <div class="row">
                <div class="col">
                    <p class="lead">Freelancer is a free bootstrap theme. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
            </div>
            <div class="text-center mt-4"></div>
        </div>
    </section>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP-Teacher © 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/profile.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>