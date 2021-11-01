<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classes.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/countdown-timer.css">;
c</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72" onload="func()">

    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="/">ip-teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/profile">Profile</a></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="class" hidden>classes</div>
    <header class="text-center text-white bg-primary masthead">
        <div class="container">
            <h1 style="font-size: 40px;text-align: left;margin-left: 15px;">No Classes Test</h1>
            <div class="row" style="border-style: none;border-color: rgb(0,0,0);">
                <div class="col-md-6">
                    <p style="text-align: center;" class="ip" id="ip">${ip}</p>
                </div>
                <div class="col-md-6">
                    <button class="btn btn-primary" onclick="window.location.href ='/nets/noclasses/${class}/generate'">Generate IP!</button>
                </div>
            </div>
            <form style="border-radius: 15px;border: 2px solid rgb(0,0,0) ;" method="post" action="/nets/noclasses/${class}/check" id="tasks" name="form1">
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 2</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task2"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 3</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task3"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 5</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task5"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 6</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task6"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 7</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task7"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 8</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task8"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 9</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task9"></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 10</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);" name="task10"></div>
                </div>
                <div class="row">
                    <input type="text" name="time" id="time" hidden>

                    <div class="container">
                        <div id="clockdiv">
                            <div class="row justify-content-center border rounded-pill" id="countdown"></div>
                        </div>
                    </div>

                    <div class="col-md-6" style="width: 500px;">
                        <input class="btn btn-primary" type="submit" style="margin-right: 0;margin-left: 330px;transform: translate(0px);" value="Check result" onclick="formSend()">
                    </div>
                    <div class="col-md-6" style="width: 450px;">
                        <p style="width: 150px;margin-top: 10px;transform: translate(0px);">Your result: ${result}</p>
                    </div>
                </div>
            </form>
        </div>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP-Teacher © 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/countdown-timer.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/classes.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>