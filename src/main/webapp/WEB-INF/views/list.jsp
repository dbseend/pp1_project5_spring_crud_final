<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>SS 에스에스</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="static/css/style.css" rel="stylesheet">

    <style type="text/css">
        .bgimg {
            background-image: url('static/img/poster3.jpg');
        }
    </style>

</head>
<body class="vsc-initialized">
<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold"><span
                        class="text-primary font-weight-bold border px-3 mr-1">SS</span><span
                        class="text-primary px-2 mr-1" style="font-size: 20px">에스에스</span></h1>
            </a>
        </div>
    </div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<div class="container-fluid">
    <div class="row border-top px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light"
                 id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link" data-toggle="dropdown">Dresses <i
                                class="fa fa-angle-down float-right mt-1"></i></a>
                        <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                            <a href="" class="dropdown-item">Men's Dresses</a>
                            <a href="" class="dropdown-item">Women's Dresses</a>
                            <a href="" class="dropdown-item">Baby's Dresses</a>
                        </div>
                    </div>
                    <a href="" class="nav-item nav-link">Shirts</a>
                    <a href="" class="nav-item nav-link">Jeans</a>
                    <a href="" class="nav-item nav-link">Swimwear</a>
                    <a href="" class="nav-item nav-link">Sleepwear</a>
                    <a href="" class="nav-item nav-link">Sportswear</a>
                    <a href="" class="nav-item nav-link">Jumpsuits</a>
                    <a href="" class="nav-item nav-link">Blazers</a>
                    <a href="" class="nav-item nav-link">Jackets</a>
                    <a href="" class="nav-item nav-link">Shoes</a>
                </div>
            </nav>
        </div>
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span
                            class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="index.html" class="nav-item nav-link">Home</a>
                        <a href="shop.html" class="nav-item nav-link active">Shop</a>
                    </div>
                    <div class="navbar-nav ml-auto py-0">
                        <a href="" class="nav-item nav-link">Login</a>
                        <a href="products/add" class="nav-item nav-link">Register</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- Navbar End -->


<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5 bgimg">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">SS</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Shop</p>
        </div>
    </div>
</div>
<!-- Page Header End -->


<!-- Shop Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Product Start -->
        <div class="col-lg-12 col-md-12">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <form action="/products">
                            <div class="input-group">
                                <input type="text" id="keyword" name="keyword" class="form-control"
                                       placeholder="제품명으로 검색하세요">
                                <input class="btn btn-outline-danger" type="submit" value="검색">
                            </div>
                        </form>
                    </div>
                </div>

                <c:forEach items="${list}" var="u">
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="static/img/${u.photo}" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">${u.itemName}</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>${u.itemPrice}</h6>
                                    <h6 class="text-muted ml-2">
                                        <del>${u.itemPrice}</del>
                                    </h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
<<<<<<< HEAD
                                <a href="products/${u.itemId}" class="btn btn-sm text-dark p-0"><i
=======
                                <a href="/products/${u.itemId}" class="btn btn-sm text-dark p-0"><i
>>>>>>> main
                                        class="fas fa-eye text-primary mr-1"></i>자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->

<!-- TODO https://technext.github.io/eshopper/shop.html -->

<!-- Footer Start -->
<div class="container-fluid bg-secondary text-dark mt-5 pt-5">
    <div class="row border-top border-light mx-xl-5 py-4">
        <div class="col-md-6 px-xl-0">
            <p class="mb-md-0 text-center text-md-left text-dark">
                © <a class="text-dark font-weight-semi-bold" href="#">SS</a>. All Rights Reserved. Designed
                by
                <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a><br>
                Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
            </p>
        </div>
        <div class="col-md-6 px-xl-0 text-center text-md-right">
            <img class="img-fluid" src="static/img/payments.png" alt="">
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top" style="display: inline;"><i class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="static/lib/easing/easing.min.js"></script>
<script src="static/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="static/mail/jqBootstrapValidation.min.js"></script>
<script src="static/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="static/js/main.js"></script>


</body>
</html>