<%-- 
    Document   : notiInsertProduct
    Created on : 23-Aug-2018, 10:16:19 PM
    Author     : CaoThu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <script type="text/javascript" src="./js/jquery.js"></script>
        <script type="text/javascript" src="./js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="./js/tt_slideshow.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./js/Customjs.js"></script>
        <script type="text/javascript" src="./js/contactform.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Control Panel</title>
        <link rel="stylesheet"  href="./css/bootstrap.css" type="text/css" media="screen"/>
        <link rel="stylesheet"  href="./css/style.css" type="text/css" media="screen"/>
        <script type="text/javascript" src="./js/totop.js"></script>
        <script>
            $(document).ready(function () {
                $('form').off('submit');
            });
        </script>
    </head>
    <body class="Home Projects Contact-Us">
        <div class="totopshow">
            <a href="#" class="back-to-top"><img alt="Back to Top" src="images/gototop0.png"/></a>
        </div>
        <div id="ttr_page" class="container">
            <nav id="ttr_menu" class="navbar-default navbar">
                <div id="ttr_menu_inner_in">
                    <div class="menuforeground">
                    </div>
                    <div id="navigationmenu">
                        <div class="navbar-header">
                            <button id="nav-expander" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                <span class="sr-only">
                                </span>
                                <span class="icon-bar">
                                </span>
                                <span class="icon-bar">
                                </span>
                                <span class="icon-bar">
                                </span>
                            </button>
                            <a href="#" target="_self">
                                <img class="ttr_menu_logo" src="images/menulogo.png" alt="">
                            </a>
                        </div>
                        <div class="menu-center collapse navbar-collapse">
                            <c:set var="login" value="${sessionScope.NAME_ACCOUNT}" />
                            <c:if test="${not empty login}">
                                <div style="
                                     float: right;
                                     color: white;
                                     display: flex;
                                     align-items: center;
                                     height: 80px;
                                     font-size: 15px;
                                     position: relative;
                                     right: -40px;
                                     "><span>Welcome, <a href="#" style="
                                                    font-size: 17px;
                                                    font-weight: bold;
                                                    color: #3498db;
                                                    ">${sessionScope.NAME_ACCOUNT}</a> (<a href="logout" method="POST" style="
                                                    font-size: 14px;
                                                    ">Logout</a>)</span></div>
                                    </c:if>
                            <ul class="ttr_menu_items nav navbar-nav navbar-right">
                                <li class="ttr_menu_items_parent dropdown active"><a href="manageProduct" class="ttr_menu_items_parent_link_active"><span class="menuchildicon"></span>Manage Product</a>
                                    <hr class ="horiz_separator"/>
                                </li>
                                <li class="ttr_menu_items_parent dropdown"><a href="manageAccount" class="ttr_menu_items_parent_link"><span class="menuchildicon">Manage Account</span></a>
                                    <hr class ="horiz_separator"/>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <!--header-->

            <header id="ttr_header" class="content">
                <div id="ttr_header_inner">
                    <div class="ttr_headershape02" style="width: calc(100% - 100px)">
                        <div class="html_content"><p style="margin:0.36em 0em 0.36em 0em;"><span style="font-family:'Titillium Web','Arial';font-weight:600;font-size:2.286em;color:rgba(52,152,219,1);">Your product is added to server successful!</span></p></div>
                    </div>
                </div>
            </header>

            <!--search fields-->

            <div class="container" style="display: flex; margin-bottom: 80px">
                <div class="row" style="display: flex;flex: 1;justify-content: center; padding: 20px 0 10px; flex-wrap: wrap">
                    <h3 style="text-align: center; color: #343434; margin-top: 50px">
                        <a href="manageInsertProduct.GOTOJSP" style="color: #3498db">Insert more</a> product to server.
                    </h3>
                </div>
            </div>

            <!--footer-->

            <footer id="ttr_footer">
                <div class="ttr_footerHome_html_row0 row">
                    <div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="ttr_footerHome_html_column00">
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                            <div class="html_content"><p style="margin:0em 0em 0em 4.29em;">&nbsp;</p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);">COMPANY</span></p><p style="margin:1.43em 0em 0em 4.29em;"><a HREF="About-Us.html" class="tt_link" target="_self"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">ABOUT US</span></a></p><p style="margin:0.71em 0em 0em 4.29em;"><a HREF="Services.html" class="tt_link" target="_self"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">SERVICES</span></a></p><p style="margin:0.71em 0em 0em 4.29em;"><a HREF="Projects.html" class="tt_link" target="_self"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">PROJECTS</span></a></p><p style="margin:0.71em 0em 0em 4.29em;"><a HREF="Contact-Us.html" class="tt_link" target="_self"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">CONTACT US</span></a></p></div>
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        </div>
                    </div>
                    <div class="clearfix visible-xs-block">
                    </div>
                    <div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="ttr_footerHome_html_column01">
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                            <div class="html_content"><p style="margin:0em 0em 0em 4.29em;">&nbsp;</p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);">PROJECTS</span></p><p style="margin:1.43em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">VESTIBULUM PLACERAT</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">FRINGILLA TRISTIQUE</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">QUAMLIGULA NUNCMUST</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">PHASELLUS MUSTACITI</span></p></div>
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block visible-md-block visible-xs-block">
                    </div>
                    <div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="ttr_footerHome_html_column02">
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                            <div class="html_content"><p style="margin:0em 0em 0em 4.29em;">&nbsp;</p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);">ARCHIVE</span></p><p style="margin:1.43em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">MARCH 2015</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">FEBRUARY 2015</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">JANUARY 2015</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">DECEMBER 2014</span></p></div>
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        </div>
                    </div>
                    <div class="clearfix visible-xs-block">
                    </div>
                    <div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="ttr_footerHome_html_column03">
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                            <div class="html_content"><p style="margin:0em 0em 0em 4.29em;">&nbsp;</p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Titillium Web','Arial';font-weight:600;font-size:1.429em;color:rgba(52,152,219,1);">GET IN TOUCH WITH US</span></p><p style="margin:1.43em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">FREE PHONE :- +44 1387 255794</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">TELEPHONE :- +44 1387 896597</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">FAX :- +44 1387 8596356</span></p><p style="margin:0.71em 0em 0em 4.29em;"><span style="font-family:'Verdana';color:rgba(255,255,255,1);">EMAIL :- MAIL@CONSTRUCTIVE.COM</span></p></div>
                            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        </div>
                    </div>
                    <div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
                    </div>
                </div>
                <div class="ttr_footer_bottom_footer">
                    <div class="ttr_footer_bottom_footer_inner">
                        <div id="ttr_copyright">
                            <a href="#">
                                2015 copyright by TemplateToaster.Privacy policy
                            </a>
                        </div>
                    </div>
                </div>
            </footer>
            <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-bottom-collapse: separate;"></div>
        </div>
        <script type="text/javascript">
            WebFontConfig = {
                google: {families: ['Titillium+Web:600', 'Titillium+Web']}
            };
            (function () {
                var wf = document.createElement('script');
                wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
                wf.type = 'text/javascript';
                wf.async = 'true';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(wf, s);
            })();
        </script>
    </body>
</html>