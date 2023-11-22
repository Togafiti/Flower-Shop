<%-- 
    Document   : home
    Created on : Jul 14, 2023, 4:00:40 PM
    Author     : xuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:useBean id="t" class="dal.ProductDAO" scope="request"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet"/>
        <style>
            .catalog{
                font-size: 50px;
                color: red;
            }
            .see{
                margin-top: -30px;
                margin-bottom: 30px;
            }

        </style>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Khanh Hanh Flower Shop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="account">Account</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="listproduct">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="flower.jsp">Flowers</a></li>
                                <li><a class="dropdown-item" href="bouquet.jsp">Bouquets</a></li>
                                <li><a class="dropdown-item" href="basket.jsp">Baskets</a></li>
                                <li><a class="dropdown-item" href="wedding.jsp">Wedding flowers</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="topnav">
                        <form action="search" method="get">
                            <input type="text" placeholder="Search" name="key"/>
                            <button onclick="this.form.submit()"><img src="images/search_icon_1.png" width="20px" height="20px"></button>
                        </form>
                    </div>
                    <c:set var="k" value="${requestScope.key}"/>
                    <form class="d-flex">
                        <c:if test="${sessionScope.account == null}">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                                <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                                <li class="nav-item"><a class="nav-link" href="signup">Signup</a></li>
                            </ul>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                                <li class="nav-item"><a class="nav-link" href="#">${sessionScope.account.name}</a></li>
                                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                            </ul>
                        </c:if>
                        <p class="btn btn-outline-dark">
                            <i class="bi-cart-fill me-1"></i>
                            <a href="show">Cart</a>
                            <span class="badge bg-dark text-white ms-1 rounded-pill">${requestScope.size}</span>
                        </p>
                    </form>
                </div>
            </div>
        </nav>


        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div>
                    <div class="text-center catalog"> Bouquets </div>
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                        <c:forEach items="${t.allBouquet}" var="i">
                            <div class="col mb-5">
                                <div class="card h-100">
                                    <!-- Sale badge-->

                                    <!-- Product image-->
                                    <img class="card-img-top" src="images/${i.image_link}"/>
                                    <!-- Product details-->
                                    <div class="card-body p-4">
                                        <div class="text-center">
                                            <!-- Product name-->
                                            <h5 class="fw-bolder">${i.name}</h5>
                                            ${i.price} VND
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>               

            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
