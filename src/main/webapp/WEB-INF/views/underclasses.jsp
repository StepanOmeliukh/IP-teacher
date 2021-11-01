<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/underclasses.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="/">ip-teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/profile">profile</a></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <button class="btn btn-primary" type="button" style="width: 200px;height: 50px;font-size: 26px;" onclick="window.location.href ='/nets/underclasses/${class}/generate'">Generate!</button>
        <form action="">
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 1</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task1}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Number of \IP subnets</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Number of IP nodes</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 2</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task2}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Mask</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes in 1 network</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes of everything</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 3</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task3}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Mask</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Subnets</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes in one network</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes of everything</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 4</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task4}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">CIDR Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Mask</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Subnets</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes in one network</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Nodes of everything</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 5</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task5}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">IP address</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Minimum IP address</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Maximum IP address</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Broadcast</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Mask</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 6</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task6}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Mask</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 7</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">${task7}</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Bits for subnets</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Bits for nodes</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">CIDR Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Prefix</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr class="star-light">
            </div>
            <div class="col" style="margin-left: 50px;">
                <h1 class="text-start">Task 8</h1>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">For a given set of subnet IP addresses, calculate the total (aggregate) network address.</p>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">a</p>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">b</p>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">c</p>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">d</p>
                <p style="text-align: left;font-size: 28px;margin-left: 20px;">e</p>
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="row" style="width: 600px;">
                            <div class="col-auto align-self-center mx-auto">
                                <p class="d-xxl-flex justify-content-xxl-center align-items-xxl-start" style="font-size: 25px;">Total network address</p>
                            </div>
                            <div class="col-auto align-self-center" style="width: 300px;">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-pencil" style="font-size: 24px;"></i></span></div><input class="form-control" type="text">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row text-center justify-content-center align-items-center">
                    <div class="col-md-6 text-end align-self-center mx-auto"><button class="btn btn-primary" type="button" style="width: 200px;height: 65px;border-radius: 10px;">Check result</button></div>
                    <div class="col-auto col-md-6 text-start align-self-center mx-auto">
                        <p class="text-start" style="font-size: 29px;">Result:&nbsp;</p>
                    </div>
                </div>
            </div>
        </form>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP-Teacher© 2021</small></div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/underclasses.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>