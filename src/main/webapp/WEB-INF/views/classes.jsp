<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classes.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-secondary text-uppercase" id="mainNav">
        <div class="container"><a class="navbar-brand" href="/">ip-teacher</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler text-white bg-primary navbar-toggler-right text-uppercase rounded" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Profile</a></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                    <li class="nav-item mx-0 mx-lg-1"></li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="text-center text-white bg-primary masthead">
        <div class="container">
            <form style="border-radius: 15px;border: 2px solid rgb(0,0,0) ;">
            <h1 style="font-size: 40px;text-align: left;margin-left: 15px;">Classes Test</h1>
            <div class="row" style="border-style: none;border-color: rgb(0,0,0);">
                <div class="col-md-6">
                    <p style="text-align: center;" class="ip">${ip}</p>
                </div>
                <div class="col-md-6">
                    <p hidden id="check"></p>
                    <button class="btn btn-primary" onclick="
                        let check = document.querySelector('#checking').is(':checked');
                        alert(check);
                        console.log('check output ' + check);
                        // if (check[Symbol.iterator])

                      ">Generate IP</button>
                </div>
            </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 1</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox1" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 2</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox2" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 3</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox3" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 4</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox4" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" id="checking" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 5</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox5" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 6</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col" style="margin-right: 0px;"><input class="float-none" type="checkbox" name="checkbox6" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;"checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 7</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox7" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 8</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox8" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 9</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col"><input class="float-none" type="checkbox" name="checkbox9" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="margin-top: 10px;width: 200px;transform: translate(0px);margin-left: 80px;">Task 10</p>
                    </div>
                    <div class="col"><input class="form-control" type="text" style="width: 250px;margin: 5px;transform: translate(47px);"></div>
                    <div class="col" style="margin-right: 0px;"><input class="float-none" type="checkbox" name="checkbox10" style="margin-top: 15px;transform: translate(0px);margin-right: 150px;" checked></div>
                </div>
                <div class="row">
                    <div class="col-md-6" style="width: 500px;"><button class="btn btn-primary" type="button" style="margin-right: 0;margin-left: 330px;transform: translate(0px);">Check result</button></div>
                    <div class="col-md-6" style="width: 450px;">
                        <p style="width: 150px;margin-top: 10px;transform: translate(0px);">Paragraph</p>
                    </div>
                </div>
            </form>
        </div>
    </header>
    <div class="text-center text-white copyright py-4">
        <div class="container"><small>IP-Teacher © 2021</small></div>
    </div>
    <div class="d-lg-none scroll-to-top position-fixed rounded"><a class="text-center d-block rounded text-white" href="#page-top"><i class="fa fa-chevron-up"></i></a></div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-2">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-3">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-4">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-5">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <div class="modal text-center" role="dialog" tabindex="-1" id="portfolio-modal-6">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header"><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button></div>
                <div class="modal-body">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col-lg-8 mx-auto">
                                <h2 class="text-uppercase text-secondary mb-0">Project Name</h2>
                                <hr class="star-dark mb-5">
                                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer pb-5"><a class="btn btn-primary btn-lg mx-auto rounded-pill portfolio-modal-dismiss" role="button" data-bs-dismiss="modal"><i class="fa fa-close"></i>&nbsp;Close Project</a></div>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/classes.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/freelancer.js"></script>
</body>

</html>