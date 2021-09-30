<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>user profile bio graph and total sales - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<style type="text/css">
    body {
        color: #797979;
        background: #202020;
        font-family: 'Open Sans', sans-serif;
        padding: 0px !important;
        margin: 0px !important;
        font-size: 13px;
        text-rendering: optimizeLegibility;
        -webkit-font-smoothing: antialiased;
        -moz-font-smoothing: antialiased;
    }

    .profile-nav, .profile-info{
        margin-top:30px;
    }

    .profile-nav .user-heading {
        background: #4a6274;
        color: #fff;
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 4px 4px 0 0;
        padding: 30px;
        text-align: center;
    }

    .profile-nav .user-heading.round a  {
        border-radius: 50%;
        -webkit-border-radius: 50%;
        border: 10px solid rgba(255,255,255,0.3);
        display: inline-block;
    }

    .profile-nav .user-heading a img {
        width: 112px;
        height: 112px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
    }

    .profile-nav .user-heading h1 {
        font-size: 22px;
        font-weight: 300;
        margin-bottom: 5px;
    }

    .profile-nav .user-heading p {
        font-size: 12px;
    }

    .profile-nav ul {
        margin-top: 1px;
    }

    .profile-nav ul > li {
        border-bottom: 1px solid #ebeae6;
        margin-top: 0;
        line-height: 30px;
    }

    .profile-nav ul > li:last-child {
        border-bottom: none;
    }

    .profile-nav ul > li > a {
        border-radius: 0;
        -webkit-border-radius: 0;
        color: #89817f;
        border-left: 5px solid #fff;
    }

    .profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
        background: #f8f7f5 !important;
        border-left: 5px solid #4a6274;
        color: #89817f !important;
    }

    .profile-nav ul > li:last-child > a:last-child {
        border-radius: 0 0 4px 4px;
        -webkit-border-radius: 0 0 4px 4px;
    }

    .profile-nav ul > li > a > i{
        font-size: 16px;
        padding-right: 10px;
        color: #bcb3aa;
    }

    .r-activity {
        margin: 6px 0 0;
        font-size: 12px;
    }


    .p-text-area, .p-text-area:focus {
        border: none;
        font-weight: 300;
        box-shadow: none;
        color: #c3c3c3;
        font-size: 16px;
    }

    .profile-info .panel-footer {
        background-color:#f8f7f5 ;
        border-top: 1px solid #e7ebee;
    }

    .profile-info .panel-footer ul li a {
        color: #7a7a7a;
    }

    .bio-graph-heading {
        background: #f8d0c1;
        color: #4a6274;
        text-align: center;
        font-style: italic;
        padding: 40px 110px;
        border-radius: 4px 4px 0 0;
        -webkit-border-radius: 8px 8px 0 0;
        font-size: 16px;
        font-weight: 300;
    }

    .bio-graph-info {
        color: #89817e;
    }

    .bio-graph-info h1 {
        font-size: 22px;
        font-weight: 300;
        margin: 0 0 20px;
    }

    .bio-row {
        width: 50%;
        float: left;
        margin-bottom: 10px;
        padding:0 15px;
    }

    .bio-row p span {
        width: 100px;
        display: inline-block;
    }

    .bio-chart, .bio-desk {
        float: left;
    }

    .bio-chart {
        width: 40%;
    }

    .bio-desk {
        width: 60%;
    }

    .bio-desk h4 {
        font-size: 15px;
        font-weight:400;
    }

    .bio-desk h4.terques {
        color: #4CC5CD;
    }

    .bio-desk h4.red {
        color: #e26b7f;
    }

    .bio-desk h4.green {
        color: #97be4b;
    }

    .bio-desk h4.purple {
        color: #caa3da;
    }

    .file-pos {
        margin: 6px 0 10px 0;
    }

    .profile-activity h5 {
        font-weight: 300;
        margin-top: 0;
        color: #c3c3c3;
    }

    .summary-head {
        background: #ee7272;
        color: #fff;
        text-align: center;
        border-bottom: 1px solid #ee7272;
    }

    .summary-head h4 {
        font-weight: 300;
        text-transform: uppercase;
        margin-bottom: 5px;
    }

    .summary-head p {
        color: rgba(255,255,255,0.6);
    }

    ul.summary-list {
        display: inline-block;
        padding-left:0 ;
        width: 100%;
        margin-bottom: 0;
    }

    ul.summary-list > li {
        display: inline-block;
        width: 19.5%;
        text-align: center;
    }

    ul.summary-list > li > a > i {
        display:block;
        font-size: 18px;
        padding-bottom: 5px;
    }

    ul.summary-list > li > a {
        padding: 10px 0;
        display: inline-block;
        color: #818181;
    }

    ul.summary-list > li  {
        border-right: 1px solid #eaeaea;
    }

    ul.summary-list > li:last-child  {
        border-right: none;
    }

    .activity {
        width: 100%;
        float: left;
        margin-bottom: 10px;
    }

    .activity.alt {
        width: 100%;
        float: right;
        margin-bottom: 10px;
    }

    .activity span {
        float: left;
    }

    .activity.alt span {
        float: right;
    }
    .activity span, .activity.alt span {
        width: 45px;
        height: 45px;
        line-height: 45px;
        border-radius: 50%;
        -webkit-border-radius: 50%;
        background: #eee;
        text-align: center;
        color: #fff;
        font-size: 16px;
    }

    .activity.terques span {
        background: #8dd7d6;
    }

    .activity.terques h4 {
        color: #8dd7d6;
    }
    .activity.purple span {
        background: #b984dc;
    }

    .activity.purple h4 {
        color: #b984dc;
    }
    .activity.blue span {
        background: #90b4e6;
    }

    .activity.blue h4 {
        color: #90b4e6;
    }
    .activity.green span {
        background: #aec785;
    }

    .activity.green h4 {
        color: #aec785;
    }

    .activity h4 {
        margin-top:0 ;
        font-size: 16px;
    }

    .activity p {
        margin-bottom: 0;
        font-size: 13px;
    }

    .activity .activity-desk i, .activity.alt .activity-desk i {
        float: left;
        font-size: 18px;
        margin-right: 10px;
        color: #bebebe;
    }

    .activity .activity-desk {
        margin-left: 70px;
        position: relative;
    }

    .activity.alt .activity-desk {
        margin-right: 70px;
        position: relative;
    }

    .activity.alt .activity-desk .panel {
        float: right;
        position: relative;
    }

    .activity-desk .panel {
        background: #F4F4F4 ;
        display: inline-block;
    }


    .activity .activity-desk .arrow {
        border-right: 8px solid #F4F4F4 !important;
    }
    .activity .activity-desk .arrow {
        border-bottom: 8px solid transparent;
        border-top: 8px solid transparent;
        display: block;
        height: 0;
        left: -7px;
        position: absolute;
        top: 13px;
        width: 0;
    }

    .activity-desk .arrow-alt {
        border-left: 8px solid #F4F4F4 !important;
    }

    .activity-desk .arrow-alt {
        border-bottom: 8px solid transparent;
        border-top: 8px solid transparent;
        display: block;
        height: 0;
        right: -7px;
        position: absolute;
        top: 13px;
        width: 0;
    }

    .activity-desk .album {
        display: inline-block;
        margin-top: 10px;
    }

    .activity-desk .album a{
        margin-right: 10px;
    }

    .activity-desk .album a:last-child{
        margin-right: 0px;
    }




    /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */ /*Header */

    .logo {
        padding-left: 50px;
        font-size: 25px;
        display: flex;
        justify-content: flex-end;
        align-items: center;

        text-decoration: none;
    }
    .logo a {
        color: #666;
    }
    .logo a:hover {
        color: white;
        transition: 0.5s;
    }

    .header {
        font-size: 15px;
        text-decoration: none;
    }
    .header_container {
        width: auto;
        height: 52px;
        background-color: black;
        display: grid;
        grid-template-columns: 30% 15% 55%;
    }
    @media (max-width: 1100px) {
        .header_container_empty {
            display: none;
        }
        .header_container {
            display: grid;
            grid-template-columns: 25% 75%;
        }
    }
    .header_container > div.header_logo {
    }
    .header_logo_image {
        width: 186px;
        height: 62px;
        padding-left: 35%;
    }

    .header_container > div.header_container_empty {
    }
    .header_container > div.header_nav {
        padding-top: 15px;
        text-align: center;
        vertical-align: middle;
    }
    .header_inner_ul {
        vertical-align: middle;

        margin: 0; /* Обнуляем значение отступов */
        padding: 4px; /* Значение полей */
    }

    .header_inner_ul a {
        color: #666;
        text-decoration: none;
    }
    .header_inner_ul a:hover {
        color: white;
        transition: 0.5s;
    }

    .header_inner_ul li {
        vertical-align: middle;
        display: inline; /* Отображать как строчный элемент */
        margin-right: 20px; /* Отступ слева */
        color: #666;
        padding: 3px; /* Поля вокруг текста */

    }


</style>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<nav class="header">
    <div class="header_container">
        <div class="logo">
            <img src="views/img/logo_v2.jpg" alt="logo+Hinterland" onclick="location.href='/index'" srcset="">
            <span ><a onclick="location.href='/index'" class="HINTERLAND">HINTERLAND</a></span>
        </div>
        <div class="header_container_empty">

        </div>
        <div class="header_nav">
            <ul class="header_inner_ul">
                <li >
                    <a onclick="location.href='/moviesUa'">
                        <%


                            ResourceBundle resourceBundleMovie =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print(" "+ resourceBundleMovie.getString("movie") +"   " );




                        %>
                    </a>

                </li>



                <li>
                    <a href="https://www.facebook.com/"  target="_blank" >



                    </a>
                </li>
                <li>

                    <%


                        ResourceBundle resourceBundleShopShop =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleShopShop.getString("shop") +"   </a>" );




                    %>

                </li>


                <li>
                    <a href="views/contact.jsp" target="_blank"  >
                        <%


                            ResourceBundle  resourceBundleSupport =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print(" "+ resourceBundleSupport.getString("support") +"  " );




                        %>
                    </a>
                </li>

                <%--                    <fmt:message key="admin" />--%>




                <%


                    String name_user  = (String)session.getAttribute("name");
                    String role  = (String)session.getAttribute("role");






                    if(role != null ){

                        if(role.equals("2")){

                            out.print(
                                    "<li>\n" );
                            ResourceBundle  resourceBundleHello =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleHello.getString("hello") +"   </a>" );
                            out.print( name_user+" Your <a onclick=\"location.href='/adminUa'\"  >Admin Page</a>" +
                                    " </li>\n"+

                                    "<li>\n" +
                                    "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                    " </li>\n"

                            );

                        }
                        if(role.equals("1")){

                            out.print(
                                    "<li>\n" +
                                            "  Hello, "+name_user+" <a onclick=\"location.href='/userProfileUa'\"  >");
                            ResourceBundle  resourceBundleProfile =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print(" "+ resourceBundleProfile.getString("profile") +"   " );

                            out.print( "</a>\n" +
                                    " </li>\n"+

                                    "<li>\n" +
                                    "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logoutUa'\">");

                            ResourceBundle resourceBundleSLogout =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print("   "+ resourceBundleSLogout.getString("logout") +"   " );



                            out.print("</button>" +
                                    " </li>\n"

                            );

                        }



                        //                                      out.print("Hello, "+name_user+" Welcome to Profile");


                    }
                    if(name_user == null ) {

                        out.print(
                                "<li>\n" +
                                        "  <a onclick=\"location.href='/loginUa'\">");

                        ResourceBundle resourceBundleSLogin =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSLogin.getString("login") +"   " );

                        out.print( "</a>\n" +
                                " </li>\n" +

                                " <li>\n" +
                                "     <a onclick=\"location.href='/registrationUa'\">");
                        ResourceBundle resourceBundleSRegister =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSRegister.getString("register") +"   " );

                        out.print( "</a>\n" +
                                "</li>"
                        );


                    }





                %>
            </ul>
        </div>


    </div>

</nav>
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                    </a>
                    <h1>Camila Smith</h1>
                    <p>deydey@theEmail.com</p>
                </div>

                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li>
                    <li><a onclick="location.href='/movieBuy'"> <i class="fa fa-edit"></i> Buy Page</a></li>
                </ul>
            </div>
        </div>
        <div class="profile-info col-md-9">

            <div class="panel">
                <div class="bio-graph-heading">
                    Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
                </div>
                <div class="panel-body bio-graph-info">
                    <h1>Bio Graph</h1>
                    <div class="row">
                        <div class="bio-row">
                            <p><span>First Name </span>: Camila</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Last Name </span>: Smith</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Country </span>: Australia</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Birthday</span>: 13 July 1983</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Occupation </span>: UI Designer</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Email </span>: jsmith@flatlab.com</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Mobile </span>: (12) 03 4567890</p>
                        </div>
                        <div class="bio-row">
                            <p><span>Phone </span>: 88 (02) 123456</p>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="bio-chart">
                                    <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="35" data-fgcolor="#e06b7d" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;"></div>
                                </div>
                                <div class="bio-desk">
                                    <h4 class="red">Envato Website</h4>
                                    <p>Started : 15 July</p>
                                    <p>Deadline : 15 August</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="bio-chart">
                                    <div style="display:inline;width:100px;height:100px;">
                                        <canvas width="100" height="100px">
                                        </canvas>
                                        <input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="63" data-fgcolor="#4CC5CD" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(76, 197, 205); padding: 0px; -webkit-appearance: none; background: none;"></div>
                                </div>
                                <div class="bio-desk">
                                    <h4 class="terques">ThemeForest CMS </h4>
                                    <p>Started : 15 July</p>
                                    <p>Deadline : 15 August</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

</script>
</body>
</html>