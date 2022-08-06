<%--
  Created by IntelliJ IDEA.
  User: Trung
  Date: 8/5/2022
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<div class="container-fluid">
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

<nav class="navbar navbar-expand-lg navbar-light bg-success " style="position: sticky; top: 0; z-index: 1">
    <div class="container-fluid">
        <a class="navbar-brand text-light" href="/view/home.jsp">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Customer
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item " href="/customer" >List</a></li>
                        <li><a class="dropdown-item" href="/customerType">Customer Type</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-light"  href="/view/employee/list.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light"  href="/view/facility/list.jsp">Facility</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light"  href="/view/contract/list.jsp">Contract</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link disabled text-light" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>

            </ul>
            <form class="d-flex mt-3">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</div>
</body>
</html>
