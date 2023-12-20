
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>FRICA</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <!-- header section start -->
        <div class="header_section haeder_main">
            <jsp:include page="Menu.jsp"></jsp:include>
        </div>
        <!-- header section end -->

        <!-- catagary section start -->
        <div class="catagary_section layout_padding">
            <div class="container">
                <div class="catagary_main">
                    <div class="catagary_left">
                        <h2  class="categary_text">Category</h2>
                    </div>
                    <div class="catagary_right">
                        <div class="catagary_menu">
                            <ul >
                                <c:forEach items="${listC}" var="o">
                                    <li><a style="padding: 0px 0px;" href="category?cateID=${o.cateID}">${o.cateName}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="computers_section layout_padding">
            <div class="container">
                <h1 class="computers_taital">product in frica</h1>
            </div>
        </div>

        <div class="catagary_section_2">
            <div class="container-fluid">
                <div class="row">
                    <c:forEach items="${listP}" var="o">
                        <div style="height: 500px;" class="col-md-4">
                            <div class="box_man">
                                <h3 class="mobile_text">${o.name}</h3>
                                <div class="mobile_img"><img style="width: 250px; height: 250px; " src="${o.image}"></div>
                                <div class="cart_main">
                                    <div class="cart_bt"><a style="width: 110px; height: 40px" href="#">Add To Cart</a></div>
                                    <h4 class="samsung_text"><a href="detail?ProductID=${o.id}">View Product</a></h4>
                                    <h6 class="rate_text"><a href="#">$${o.price}</a></h6>
<!--                                    <h6 class="rate_text_1">$1000</h6>-->
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- footer section start -->
            <jsp:include page="Footer.jsp"></jsp:include>
        <!-- footer section end -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript --> 
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>  
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <script>
                        function openNav() {
                            document.getElementById("mySidenav").style.width = "100%";
                        }

                        function closeNav() {
                            document.getElementById("mySidenav").style.width = "0";
                        }
        </script> 
    </body>
</html>