<%-- 
    Document   : adminhome
    Created on : Jul 16, 2023, 6:28:30 PM
    Author     : xuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/admincss.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="adminhome.jsp">Home</a>
            <!-- Sidebar Toggle-->

            <!-- Navbar-->
            <ul class="navbar-nav me-auto mb-12 mb-lg-12 ms-lg-12">
                <li class="nav-item"><a class="nav-link" href="#">${sessionScope.account.name}</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Table</div>

                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="ptable">
                                Product                             
                            </a>
                            <a class="nav-link collapsed" href="utable">
                                User                             
                            </a>
                            <a class="nav-link collapsed" href="otable">
                                Order                             
                            </a>
                            <a class="nav-link" href="statistical">
                                Statistical
                            </a>
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Product Tables</h1>
                        <div class="card mb-4">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-table me-1"></i>
                                    Data Table
                                </div>
                                <div class="card-body">
                                    <table id="datatablesSimple">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Catalog_id</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Description</th>
                                                <th>Discount</th>
                                                <th>Image_link</th>
                                                <th>Created</th>
                                                <th>Sold</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.data}" var="p">
                                                <c:set var="id" value="${p.id}"/>
                                                <tr>
                                                    <th>${p.id}</th>
                                                    <th>${p.catalog_id}</th>
                                                    <th>${p.name}</th>
                                                    <th>${p.price}</th>
                                                    <th>${p.quantity}</th>
                                                    <th>${p.description}</th>
                                                    <th>${p.discount}</th>
                                                    <th>${p.image_link}</th>
                                                    <th>${p.created}</th>
                                                    <th>${p.sold}</th>
                                                    <th><a href="update&id=${id}">Update</a>
                                                        &nbsp; &nbsp; &nbsp;
                                                        <a href="#" onclick="doDelete('${id}')">Delete</a></th>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                </main>              
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts_1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
