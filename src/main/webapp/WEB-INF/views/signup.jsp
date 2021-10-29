<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="#page-top">Brand</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <div class="container"><img class="img-fluid d-block mx-auto mb-5" src="${pageContext.request.contextPath}/resources/img/profile.png">
            <form:form method="post" action="/registration/register/send" modelAttribute="user">
                <div class="row">
                    <div class="col-auto mx-auto">
                        <form:input class="form-control" type="text" path="email" style="width: 400px;height: 50px;border-radius: 10px;border-style: none;border-color: rgb(255,255,255);font-size: 30px;text-align: center;margin-top: 10px;" placeholder="Input your email"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-auto mx-auto">
                        <form:input class="form-control" type="password" path="password" style="width: 400px;height: 50px;border-radius: 10px;border-style: none;border-color: rgb(255,255,255);font-size: 30px;text-align: center;margin-top: 10px;" placeholder="Input your password"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-auto mx-auto">
                        <form:input class="form-control" type="text" path="firstName" style="width: 400px;height: 50px;border-radius: 10px;border-style: none;border-color: rgb(255,255,255);font-size: 30px;text-align: center;margin-top: 10px;" placeholder="Input your firstname"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-auto mx-auto">
                        <form:input class="form-control" type="text" path="lastName" style="width: 400px;height: 50px;border-radius: 10px;border-style: none;border-color: rgb(255,255,255);font-size: 30px;text-align: center;margin-top: 10px;" placeholder="Input your lastname"/>
                    </div>
                </div>
                <hr class="star-light">
                <div class="row">
                    <div class="col"><button class="btn btn-primary" type="submit" style="width: 250px;height: 60px;background: rgb(17,164,136);border-radius: 10px;font-size: 25px;">Sign Up</button></div>
                </div>
            </form:form>
        </div>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP_Teacher © 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>