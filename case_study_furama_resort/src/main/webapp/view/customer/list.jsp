<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/4/2022
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FURAMA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>

        .row {
            box-sizing: border-box;
        }

        .sticky {
            display: block;
        }

        .bg-success {
            background-color: #046056 !important;
        }

        .nav-link {
            color: white; !important;
        }


    </style>

</head>
<body>
<div class="header-topline">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-auto col-lg-4 col-xl-3 d-none d-lg-flex">
                <div class="header-info"><i class="icon-sun"></i><span class="">Thời tiết:</span> 29 °C / 84 °F</div>
            </div>
            <div class="col-auto col-lg-4 col-xl-3 d-none d-lg-flex">

            </div>

            <div class="col-auto ml-auto d-none d-lg-flex">
                <div class="header-lang">
                    <div id="icl_lang_sel_widget-2" class="widget_icl_lang_sel_widget">
                        <div class="lang_sel_list_horizontal wpml-ls-sidebars-language_sevices wpml-ls wpml-ls-legacy-list-horizontal"
                             id="lang_sel_list">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="header-content">
    <div class="container">
        <div class="row">
            <div class="col-auto col-sm-5 col-lg-3 d-flex align-items-center bestel-logo">
                <a href="https://furamavietnam.com/vi/" class="header-logo"><img
                        src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="logo "
                        class="img-fluid" width="63" height="100"></a>
            </div>
            <div class="col col-md-auto col-lg-3 d-flex">
                <div class="catalog-widget d-none d-sm-block">

                    <div class="catalog-widget-inside" style="visibility: visible;">
                        <a href="https://www.tripadvisor.com/Hotel_Review-g298085-d302750-Reviews-Furama_Resort_Danang-Da_Nang_Quang_Nam_Province.html"
                           target="_blank">
                            <div class="widget-tripadvisor">
                                <div class="inside">
                                    <div class="widget-tripadvisor-logo"><img
                                            src="https://smartdata.tonytemplates.com/bestel/wp-content/uploads/2018/05/widget-tripadvisor-logo.png"
                                            alt=""></div>
                                    <div class="widget-tripadvisor-rating"><img
                                            src="https://furamavietnam.com/wp-content/uploads/2018/08/widget-tripadvisor-rating.png"
                                            alt=""></div>
                                    <div class="widget-tripadvisor-text">2,746 Reviews</div>
                                </div>
                            </div>
                        </a>
                        <span class="catalog-widget-toggle js-catalog-widget-toggle"></span></div>
                </div>
                <div class="catalog-widget-mobile d-flex d-sm-none align-items-center mx-auto">
                </div>
            </div>

            <div class="col-sm-3 d-none d-lg-block">
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"><i class="icon-placeholder"></i></div>
                    <div class="header-contact-txt">
                        <p>
                            103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt
                            Nam </p>
                        <p class="txt-sm">
                            <span>7.0 km</span> từ Sân bay Quốc tế Đà Nẵng </p>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 d-none d-lg-block">
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"><i class="icon-telephone"></i></div>
                    <div class="header-contact-txt">
                        <p class="txt-lg">
                            84-236-3847 333/888
                        </p>
                    </div>
                </div>
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"><i class="icon-closed-envelope"></i></div>
                    <div class="header-contact-txt">
                        <a href="mailto:reservation@furamavietnam.com">
                            reservation@furamavietnam.com
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-success " style="position: sticky;top: 0;z-index: 1"   >
    <div class="container-fluid ">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">Home</a>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Customer
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li>
                            <a class="dropdown-item" href="customer/list.jsp">Customer</a>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">Customer_Type</a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Employee</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Contract</a>
                </li>
            </ul>

            <div class="d-flex pdt-3">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary" type="submit">Search</button>
            </div>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 border border">
            <h3 style="text-align: center"> DANH SÁCH KHÁCH HÀNG </h3>

            <table class="table text-center table-striped" id="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Loại Khách Hàng</th>
                    <th>Tên KH</th>
                    <th>Ngày Sinh</th>
                    <th>Giới tính</th>
                    <th>Mã KH</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Địa chỉ</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>

                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <a class="btn btn-outline-info"href="#">Edit</a>
                        </td>
                        <td>
                            <a class="btn btn-outline-danger" href="#">Delete</a>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>


<%--Phần FOOTER--%>

<div class="container-fluid border text-center">
    <div class="b-example-divider"></div>
    <div class="container">
        <footer class="py-5">
            <div class="row">
                <div class="col-2">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                    </ul>
                </div>

                <div class="col-2">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                    </ul>
                </div>

                <div class="col-2">
                    <h5>Section</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
                    </ul>
                </div>

                <div class="col-4 offset-1">
                    <form>
                        <h5>Subscribe to our newsletter</h5>
                        <p>Monthly digest of whats new and exciting from us.</p>
                        <div class="d-flex w-100 gap-2">
                            <label for="newsletter1" class="visually-hidden">Email address</label>
                            <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
                            <button class="btn btn-primary" type="button">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="d-flex justify-content-between py-4 my-4 border-top">
                <p>© 2021 Company, Inc. All rights reserved.</p>
                <ul class="list-unstyled d-flex">
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"></use></svg></a></li>
                    <li class="ms-3"><a class="link-dark" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg></a></li>
                </ul>
            </div>
        </footer>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>
