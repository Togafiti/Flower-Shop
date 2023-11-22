<%-- 
    Document   : account
    Created on : Jul 14, 2023, 5:12:56 PM
    Author     : xuanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="t" class="dal.UserDAO" scope="request"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Page</title>
        <link href="css/accountcss.css" rel="stylesheet"/>
        <link href="css/styles.css" rel="stylesheet"/>
        <style>
            .profile-edit-btn{
                margin-left: 100px;
            }
            .btn-outline-dark {

            }
        </style>
    </head>
    <body>
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
                                <li class="nav-item"><a class="nav-link" href="logins">Login</a></li>
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

        <div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>                       
                    </div>
                    <div class="col-md-6">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        ${sessionScope.account.name}
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        ${sessionScope.account.email}
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Phone</label>
                                    </div>
                                    <div class="col-md-6">
                                        ${sessionScope.account.phone}
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Created</label>
                                    </div>
                                    <div class="col-md-6">
                                        ${sessionScope.account.created}
                                    </div>
                                </div>                                                           
                            </div>                            
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#profile-modal">
                            Edit Profile
                        </button>
                    </div>                                    
                </div>                
            </form>
            
            <div style="margin-top: 50px" class="col-md-4">
                <a style="color: green">${requestScope.error}</a> 
                <form action="changepass">
                    <div class="row"> 
                        <input type="password" name="opass" placeholder="Enter old password" >
                        <input type="password" name="npass" placeholder="Enter new password">
                        <input type="password" name="cnpass" placeholder="Enter new password again" >
                        <button type="submit" class="btn btn-primary">
                            Change Password
                        </button>
                    </div>
                </form>>
            </div>
        </div>

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h3 class="mt-2" style="text-align: center">Edit your profile</h3>
                        <form action="changename" method="post" enctype="multipart/form-data">
                            <table class="table">
                                <tr>
                                    <td>ID</th>
                                    <td>${sessionScope.account.id}</th>
                                </tr>
                                <tr>
                                    <td>Name</th>
                                    <td><input type="text" name="nname" class="form-control" value="${sessionScope.account.name}"></th>
                                </tr>
                                <tr>
                                    <td>Email</th>
                                    <td><input type="email" name="nemail" class="form-control" value="${sessionScope.account.email}"></th>
                                </tr>
                                <tr>
                                    <td>Phone</th>
                                    <td><input type="text" name="nphone" class="form-control" value="${sessionScope.account.phone}"></th>
                                </tr>
                            </table>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary">Save</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript">
    function changepass() {
        window.location = "http://localhost:9999/ProjectFinal/newpass";
    }
</script>