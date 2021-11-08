<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - IP-Teacher</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theory.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top">IP-Teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/profile">ProFil</a></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead" style="height: 600px;">
        <div class="container">
            <h1>${class}</h1>
            <hr class="star-light">
            <h2 class="text-start font-weight-light mb-0">${content}</h2>
        </div><button class="btn btn-primary" type="button" style="width: 250px;height: 50px;font-size: 29px;text-align: center;background: rgb(21,181,150);" onclick="window.location.href ='/nets/${classorig}/trainy'">Try regime</button>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>Copyright ©&nbsp;IP-Teacher 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/theory.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>