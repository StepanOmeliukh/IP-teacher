<%--<!DOCTYPE html>--%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Modal-Login-form.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top">Brand</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${pageContext.request.contextPath}/profile">Profile</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <div id="myModal">
            <div class="modal-dialog modal-login">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="h4 modal-title">Member Login</h4><button class="btn btn-primary close" type="button" aria-hidden="true" data-bs-dismiss="modal">x</button>
                    </div>
                    <div class="modal-body">
                        <form action="confirmation" method="post">
                            <div class="form-group"><i class="fa fa-star fa-user"></i>
                                <input class="form-control" type="text" placeholder="Username" required="required">
                            </div>
                            <div class="form-group"><i class="fa fa-star fa-lock"></i>
                                <input class="form-control" type="password" placeholder="Password" required="required" style="margin-top: 5px;">
                            </div>
                            <div class="form-group"><button class="btn btn-primary btn-block btn-lg" type="submit" value="Login" style="margin-top: 20px;">Sign In</button></div>
                            <div class="form-group"><button class="btn btn-primary btn-block btn-lg" type="button" href="/registration/register" style="margin-top: 20px;">Sign In</button></div>
                        </form>
                    </div>
                    <div class="modal-footer"><a href="#">Forgot Password?</a></div>
                </div>
            </div>
        </div>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>Copyright ©&nbsp;Brand 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>