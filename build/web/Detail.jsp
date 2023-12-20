
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
        <title>PRODUCT IN FRICA</title>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <!-- header section start -->
        <div class="header_section haeder_main">
            <jsp:include page="Menu.jsp"></jsp:include>
            </div>
            <!-- header section end -->
            <!-- computers section start -->
            <div class="computers_section layout_padding">
                <div class="container">
                    <h1 class="computers_taital">Product Detail</h1>
                </div>
            </div>
            <div class="computers_section_2">
                <div class="container-fluid">
                    <div class="computer_main">


                        <div class="box_man">
                            <h3 class="mobile_text">${detail.name}</h3>
                        <div class="detail_product" style="display:flex;">
                            <div class="mobile_img"><img style="width: 450px; height: 450px;" src="${detail.image}"></div>
                            <div class="cart_main">
                                <h4 class="samsung_text" style="text-align: justify;">${detail.description}</h4>
                                <div style="display:flex;">
                                    <!--                                    <h6 class="rate_text_1">$1000</h6>-->
                                    <h6 class="rate_text" style="margin-left: 20px; margin-bottom: 30px"><a >$${detail.price}</a></h6>
                                </div>
                                <div class="want_order">
                                    <div class="cart_bt" style="margin-left: 20px;"><a style="width: 110px; height: 40px" href="#">Buy Now</a></div>
                                    <div class="cart_bt" style="margin-left: 20px"><a style="width: 110px; height: 40px" href="#">Add to cart</a></div>                                
                                </div>
                            </div>
                        </div>
                    </div>

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