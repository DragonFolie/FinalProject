<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.io.IOException" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<fmt:setBundle basename="messages"/>



<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Атрибут accesskey</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
</head>


<style>
    /* General */

    *{
        padding: 0;
        margin: 0;
        list-style:none;
        text-decoration: none;


    }
    .responsive {
        width: 100%;
        height: auto;
    }


    /*  HEADER  PC */ /*  HEADER  PC */ /*  HEADER  PC */ /*  HEADER  PC */ /*  HEADER  PC */ /*  HEADER  PC */
    .header{
        width: 100%;
        height: 80px;
        display: inline-block;
        background-color: black;
        color: #666666;




    }


    .inner_header{
        text-align:center;
        vertical-align: middle;
        display: grid;
        grid-template-columns: 33% 2% 65%;


    }
    .inner_header > div.logo{
        padding-left: 50px;
        font-size: 32px;
        display: flex;
        justify-content: flex-end;
        align-items: center;



    }
    .inner_header > div.logo a{
        color: #666;
    }
    .inner_header > div.logo a:hover{
        color: white;
        transition: 0.5s;
    }

    .inner_header > div.empty{
        display: inline-block;

    }
    .inner_header > div.navigation{
        color: #666666;

        font-size: 16px;
        display: flex;
        justify-content: center;
        align-items: center;


    }
    .inner_header > div.navigation li{
        display: inline;
        padding: 10px;

    }
    .inner_header > div.navigation li:hover{
        color:white;
        transition: 0.5s;
    }
    .inner_header > div.navigation a{
        color: #666;
    }
    .inner_header > div.navigation a:hover{
        color: white;
        transition: 0.5s;
    }




    .logo_container_mobile_menu{
        display: none;
    }















    /* Content */ /* Content */ /* Content */ /* Content */ /* Content */

    .content{


    }
    .content_inner{
        width: 100%;




        text-align: center;




        display: grid;
        grid-template-columns: 100%;




    }
    .content_inner > div.company{
        background-image: url(views/img/red+bg1.png);
        vertical-align: middle;
        padding-top:100px ;
        padding-bottom:100px ;

    }
    .content_inner > div.company h1{
        font-family: 'Noto Sans JP', sans-serif;
        font-weight: 400;
        font-style: normal;
        font-size: 55px;
        letter-spacing: 0em;
        line-height: 2.1em;
        text-transform: uppercase;
        text-align: center;
        color: white;
    }
    .content_inner >div.content_foto_logo_big{

        text-align: center;
        width:550px;
        height:254px;
    }

    .content_inner > div.about{
        background-image: url(views/img/game+bg3.png);

        vertical-align: middle;
        padding-top:200px ;
        padding-bottom:200px ;
        height: 300px;
    }


    .content_inner > div.about h1{
        font-family: 'Noto Sans JP', sans-serif;

        text-align: center;
        color: #666666;

        font-weight: 400;
        font-style: normal;
        font-size: 36;
        letter-spacing: 0em;
        line-height: 1.2em;
        text-transform: uppercase;

    }
    .content_inner > div.content_foto_hinterland_big{
        text-align: center;
        width:550px;
        height:138px;
    }


    @media  (min-width:870px){
        .down_menu_inner > div.down_menu_inner_second_text span{

            font-size: 60px;
            text-transform: uppercase;



        }
    }




    /* MEDIA */ /* MEDIA *//* MEDIA *//* MEDIA *//* MEDIA *//* MEDIA */
    @media  (max-width:870px){

        /* Header *//* Header *//* Header *//* Header *//* Header *//* Header */
        .inner_header{
            display: none;

        }


        /*.logo_container_mobile_menu{
            display: visibility;

        }*/

        .inner_header{
            text-align: center;
            vertical-align: middle;
            display: grid;
            grid-template-columns: 35% 0% 65%;


        }
        .inner_header > div.logo{
            color: #666666;
            padding-left: 30px;
            font-size: 20px;
            display: flex;
            justify-content: center;
            align-items: center;


        }
        .inner_header > div.empty{
            display: inline-block;

        }
        .inner_header > div.navigation{
            color: #666666;

            font-size: 16px;
            display: flex;
            justify-content: center;
            align-items: center;


        }
        .inner_header > div.navigation li{
            display: inline;
            padding: 10px;

        }
        .logo_container_mobile_menu{
            display: none;
        }



        /*Footer *//*Footer *//*Footer *//*Footer *//*Footer *//*Footer */
        .down_menu{


        }
        .down_menu_inner{
            display: grid;

            grid-template-columns: 100%;
            height: auto;
            background-color:#171717;
            text-align: center;


        }
        .down_menu_inner > div.down_menu_inner_first_empty{
            height: 200px;

            padding: 0   auto;


        }
        .down_menu_inner > div.down_menu_inner_second_text{
            height: 130px;
            color: #AE1E2C;
            width: auto;
            margin: 0 auto;





            line-height: 1.1em;
            text-transform: uppercase;
            font-family: 'Noto Sans JP', sans-serif;
            display: flex;
            justify-content: center;



        }
        .down_menu_inner > div.down_menu_inner_second_text span{

            font-size: 48px;
            text-transform: uppercase;



        }
        .down_menu_inner > div.down_menu_inner_third_text{
            height: 400px;


            color: #AE1E2C;
            font-size: 14px;



            text-transform: uppercase;
            font-family: 'Noto Sans JP', sans-serif;


        }
        .down_menu_inner > div.down_menu_inner_fourth_foto{

        }
        .down_menu_inner > div.down_menu_inner_fifth_list{
            text-align: center;
            width: 650px;
            margin: 40px auto;




        }
        .down_menu_inner > div.down_menu_inner_fifth_list ul{

            display: flex;
            justify-content:space-evenly;  /* or  */
            align-items: center;
        }

        .down_menu_inner > div.down_menu_inner_fifth_list li{
            display: inline;
            color: #AE1E2C;
            text-align:center;
            vertical-align: middle;






        }
        .down_menu_inner > div.down_menu_inner_sixth_list{
            text-align: center;
            width: 230px;
            margin: 40px auto;

            padding-left: 5px;
            margin: 0 auto;


            /*

            <svg id="twitter-icon" style=" height: 72px; width: 57px; fill: #af1e2d !important;" viewBox="0 0 64 64">
                                            <path d="M48,22.1c-1.2,0.5-2.4,0.9-3.8,1c1.4-0.8,2.4-2.1,2.9-3.6c-1.3,0.8-2.7,1.3-4.2,1.6 C41.7,19.8,40,19,38.2,19c-3.6,0-6.6,2.9-6.6,6.6c0,0.5,0.1,1,0.2,1.5c-5.5-0.3-10.3-2.9-13.5-6.9c-0.6,1-0.9,2.1-0.9,3.3 c0,2.3,1.2,4.3,2.9,5.5c-1.1,0-2.1-0.3-3-0.8c0,0,0,0.1,0,0.1c0,3.2,2.3,5.8,5.3,6.4c-0.6,0.1-1.1,0.2-1.7,0.2c-0.4,0-0.8,0-1.2-0.1 c0.8,2.6,3.3,4.5,6.1,4.6c-2.2,1.8-5.1,2.8-8.2,2.8c-0.5,0-1.1,0-1.6-0.1c2.9,1.9,6.4,2.9,10.1,2.9c12.1,0,18.7-10,18.7-18.7 c0-0.3,0-0.6,0-0.8C46,24.5,47.1,23.4,48,22.1z">
                                            </path></svg>

                                            */





        }
        .down_menu_inner > div.down_menu_inner_sixth_list ul{

            display: flex;
            justify-content:space-evenly;  /* or  */
            align-items: center;
        }
        .down_menu_inner > div.down_menu_inner_sixth_list li{

            color: #AE1E2C;
            display: inline;

            text-align:center;
            vertical-align: middle;






        }

        .down_menu_inner > div.down_menu_inner_seventh_police{

            color: #AE1E2C;
            font-size: 12px;

        }




    }

    /* End Of Media */  /* End Of Media */  /* End Of Media */  /* End Of Media */









    /*Footer *//*Footer *//*Footer *//*Footer *//*Footer *//*Footer */
    .down_menu{


    }
    .down_menu_inner{
        display: grid;

        grid-template-columns: 100%;
        height: auto;
        background-color:#171717;
        text-align: center;


    }
    .down_menu_inner > div.down_menu_inner_first_empty{
        height: 200px;

        padding: 0   auto;


    }
    .down_menu_inner > div.down_menu_inner_second_text{
        height: 130px;
        color: #AE1E2C;
        width: auto;
        margin: 0 auto;





        line-height: 1.1em;
        text-transform: uppercase;
        font-family: 'Noto Sans JP', sans-serif;
        display: flex;
        justify-content: center;



    }
    .down_menu_inner > div.down_menu_inner_second_text_span{

        font-size: 60px;
        text-transform: uppercase;



    }
    .down_menu_inner > div.down_menu_inner_third_text{
        width: 750px;
        height: 280px;
        margin-left: auto;
        margin-right: auto;
        color: #AE1E2C;
        color: #AE1E2C;
        font-size: 18px;

        text-align: center;
        line-height: 1.1em;
        text-transform: uppercase;
        font-family: 'Noto Sans JP', sans-serif;



    }

    .down_menu_inner > div.down_menu_inner_fourth_foto{

    }
    .down_menu_inner > div.down_menu_inner_fifth_list{
        text-align: center;
        width: 650px;
        margin: 40px auto;




    }
    .down_menu_inner > div.down_menu_inner_fifth_list ul{

        display: flex;
        justify-content:space-evenly;  /* or  */
        align-items: center;
    }

    .down_menu_inner > div.down_menu_inner_fifth_list li{
        display: inline;
        color: #AE1E2C;
        text-align:center;
        vertical-align: middle;






    }
    .down_menu_inner > div.down_menu_inner_fifth_list a{
        color: #AE1E2C;

    }
    .down_menu_inner > div.down_menu_inner_fifth_list a:hover{
        color: #75121c;
        transition: .5s;

    }
    .down_menu_inner > div.down_menu_inner_sixth_list{
        text-align: center;
        width: 230px;
        margin: 40px auto;

        padding-left: 5px;
        margin: 0 auto;


        /*

        <svg id="twitter-icon" style=" height: 72px; width: 57px; fill: #af1e2d !important;" viewBox="0 0 64 64">
                                        <path d="M48,22.1c-1.2,0.5-2.4,0.9-3.8,1c1.4-0.8,2.4-2.1,2.9-3.6c-1.3,0.8-2.7,1.3-4.2,1.6 C41.7,19.8,40,19,38.2,19c-3.6,0-6.6,2.9-6.6,6.6c0,0.5,0.1,1,0.2,1.5c-5.5-0.3-10.3-2.9-13.5-6.9c-0.6,1-0.9,2.1-0.9,3.3 c0,2.3,1.2,4.3,2.9,5.5c-1.1,0-2.1-0.3-3-0.8c0,0,0,0.1,0,0.1c0,3.2,2.3,5.8,5.3,6.4c-0.6,0.1-1.1,0.2-1.7,0.2c-0.4,0-0.8,0-1.2-0.1 c0.8,2.6,3.3,4.5,6.1,4.6c-2.2,1.8-5.1,2.8-8.2,2.8c-0.5,0-1.1,0-1.6-0.1c2.9,1.9,6.4,2.9,10.1,2.9c12.1,0,18.7-10,18.7-18.7 c0-0.3,0-0.6,0-0.8C46,24.5,47.1,23.4,48,22.1z">
                                        </path></svg>

                                        */





    }
    .down_menu_inner > div.down_menu_inner_sixth_list ul{

        display: flex;
        justify-content:space-evenly;  /* or  */
        align-items: center;
    }
    .down_menu_inner > div.down_menu_inner_sixth_list li{

        color: #AE1E2C;
        display: inline;

        text-align:center;
        vertical-align: middle;






    }
    .down_menu_inner > div.down_menu_inner_sixth_list_fb_white a{
        background: url(views/img/twitter.png);
        height: 24px; width: 25px;

    }
    .down_menu_inner > div.down_menu_inner_sixth_list_fb_white{
        background: url(views/img/twitter.png);
        height: 24px; width: 25px;

    }
    .down_menu_inner > div.down_menu_inner_seventh_police{

        color: #AE1E2C;
        text-align:center;
        white-space:pre-wrap;
    }

    /* Button Join Us *//* Button Join Us *//* Button Join Us *//* Button Join Us *//* Button Join Us *//* Button Join Us */
    @import 'https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300';

    .content_inner >div.content_foto_logo_button {
        width: 100%;
        height: 100%;
        overflow: hidden;
        margin: 0;
        display: flex;
        flex-direction: column;
        flex-wrap: wrap;
        font-family: 'Open Sans Condensed', sans-serif;
    }

    div[class*=box] {
        height: 33.33%;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .box-1 {  }


    .btn {
        line-height: 50px;
        height: 50px;
        text-align: center;
        width: 250px;
        cursor: pointer;

    }


    .btn-one {
        color: #FFF;
        transition: all 0.3s;
        position: relative;
    }
    .btn-one span {
        transition: all 0.3s;
        font-size: 22px;
    }
    .btn-one span a{
        color: white;
    }
    .btn-one::before {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        opacity: 0;
        transition: all 0.3s;
        border-top-width: 1px;
        border-bottom-width: 1px;
        border-top-style: solid;
        border-bottom-style: solid;
        border-top-color: rgba(255,255,255,0.5);
        border-bottom-color: rgba(255,255,255,0.5);
        transform: scale(0.1, 1);
    }
    .btn-one:hover span {
        letter-spacing: 2px;
        font-size: 20px;
    }
    .btn-one:hover::before {
        opacity: 1;
        transform: scale(1, 1);
    }
    .btn-one::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        transition: all 0.3s;
        background-color: rgba(255, 255, 255, 0.1);
    }
    .btn-one:hover::after {
        opacity: 0;
        transform: scale(0.1, 1);
    }

    /* Button Game Site*//* Button Game Site*//* Button Game Site*//* Button Game Site*//* Button Game Site*//* Button Game Site*//* Button Game Site*/




    .button_game_site{


        position: relative;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);




    }

    .button_game_site a{
        display: inline-block;
        width: 200px;
        height: 40px;
        line-height: 40px;
        font-size: 18px;
        font-family: sans-serif;
        text-decoration: none;
        color: #333;
        border: 2px solid #333;
        letter-spacing: 2px;
        text-align: center;
        position: relative;
        transition: all .35s;
    }

    .button_game_site a span{
        position: relative;
        z-index: 2;
    }

    .button_game_site a:after{
        position: absolute;
        content: "";
        top: 0;
        left: 0;
        width: 0;
        height: 100%;
        background: #666;
        transition: all .35s;
    }

    .button_game_site a:hover{
        color: #fff;
    }

    .button_game_site a:hover:after{
        width: 100%;
    }


    /* Button Game Site *//* Button Game Site *//* Button Game Site *//* Button Game Site *//* Button Game Site *//* Button Game Site */

    @import 'https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300';

    .content_inner >div.content_foto_logo_game_site_button {
        width: 100%;
        height: 100%;
        overflow: hidden;
        margin: 0;
        display: flex;
        flex-direction: column;
        flex-wrap: wrap;
        font-family: 'Open Sans Condensed', sans-serif;

    }

    div[class*=box] {
        height: 33.33%;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .box-1 {  }


    .btn {
        line-height: 50px;
        height: 50px;
        text-align: center;
        width: 250px;
        cursor: pointer;

    }


    .btn-one {
        color: #FFF;
        transition: all 0.3s;
        position: relative;
    }
    .btn-one p{
        transition: all 0.3s;
        font-size: 22px;
    }
    .btn-one::before {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        opacity: 0;
        transition: all 0.3s;
        border-top-width: 1px;
        border-bottom-width: 1px;
        border-top-style: solid;
        border-bottom-style: solid;
        border-top-color: rgba(255,255,255,0.5);
        border-bottom-color: rgba(255,255,255,0.5);
        transform: scale(0.1, 1);
    }
    .btn-one:hover p {
        letter-spacing: 2px;
        font-size: 20px;
    }
    .btn-one:hover::before {
        opacity: 1;
        transform: scale(1, 1);
    }
    .btn-one::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        transition: all 0.3s;
        background-color: rgba(255, 255, 255, 0.1);
    }
    .btn-one:hover::after {
        opacity: 0;
        transform: scale(0.1, 1);
    }





    /* Content */ /* Content */ /* Content */ /* Content */ /* Content */
    .content_inner{
        width: 100%;
        height: 1050px;



        text-align: center;



        background-color: orange;
        display: grid;
        grid-template-columns: 100%;




    }
    .content_inner > div.company{
        background-color: chocolate;
        vertical-align: middle;
        padding-top:100px ;
        padding-bottom:100px ;

    }
    .content_inner > div.company h1{
        font-family: 'Noto Sans JP', sans-serif;
        font-weight: 400;
        font-style: normal;
        font-size: 45px;
        letter-spacing: 0em;
        line-height: 2.1em;
        text-transform: uppercase;
        text-align: center;
        color: white;
    }

    .content_inner > div.about{
        background-color: cornflowerblue;
        vertical-align: middle;
        padding-top:200px ;
        padding-bottom:200px ;
        height: 300px;
    }


    .content_inner > div.about h1{
        font-family: 'Noto Sans JP', sans-serif;

        text-align: center;
        color: #666666;

        font-weight: 400;
        font-style: normal;
        font-size: 26px;
        letter-spacing: 0em;
        line-height: 1.2em;
        text-transform: uppercase;

    }
    .content_foto_logo_big{
        text-align: center;

        height: auto;
    }
    .content_foto_hinterland_big{
        text-align: center;

        height: auto;
    }

    .content_inner >div.game{
        background-color: black;
        vertical-align: middle;
        height: 100vh;

        color: white;
        max-height: 100vh;
        position: relative;
        overflow: hidden;
        padding-bottom: 100px;


    }
    .game:after{
        width: 100%;
        height: 100%;
        content: "";
        display: block;

        background-color: rgba(0, 0,0 , .8);

        position: absolute;
        top: 0;
        left: 0;
        z-index: 2;


    }


    .content_inner >div.game span{
        line-height: 1.5em;
        font-size: 22px;
        padding-right: 20%;
    }
    .video_game{

        position: relative;
        padding-bottom: 56.25%;
        z-index: 1;
    }

    .video_game_media{
        width: 100%;
        height: auto;
        position: absolute;
        top: 0;
        left: 0;

    }
    .game_content{
        font-size: 20px;

        height: 100%;
        width: 100%;
        position: absolute;
        top: 150px;
        left: 0;
        z-index: 3;



    }





</style>
<body>

<header>
    <div class="header">
        <div class="inner_header">
            <div class="logo">
                <img src="views/img/logo.jpg" alt="logo+Hinterland" onclick="location.href='/index'" srcset="">
                <span ><a onclick="location.href='/index'" class="HINTERLAND">HINTERLAND</a></span>
            </div>
            <div class="empty"></div>
            <div class="navigation">
                <ul>
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
                                        "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">");

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

                            ResourceBundle resourceBundleSLogout =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                            out.print("   "+ resourceBundleSLogout.getString("login") +"   " );

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
        <div class="inner_header_mobile">
            <ul class="logo_container_mobile_menu">
                <a>
                    <li>THE LONG DARK</li>
                </a>
                <a>
                    <li>COMMUNITY</li>
                </a>
                <a>
                    <li>CONTACT</li>
                </a>
                <a>
                    <li>SUPPORT</li>
                </a>
            </ul>
        </div>
    </div>
</header>

<content>

    <div class="content">
        <div class="content_inner">


            <div class="company">
                <div class="content_foto_logo_big">
                    <img src="views/img/logo_big.png"    alt="" srcset="">
                </div>

                <h1>HINTERLAND IS HIRING</h1>
                <br><br>
                <div class="content_foto_logo_button">
                    <div class="box-1" >
                        <div class="btn btn-one" >
                            <span > <a href="https://dou.ua/" target="_blank">Join Us</a></span>
                        </div>
                    </div>



                </div>



            </div>


            <div class="about">
                <div class="content_foto_hinterland_big">
                    <img src="views/img/Hinterland_big.png"   alt="" srcset="">
                </div>

                <h1>Cinema is not only about making people dream. It's about <br>changing things and making people think</h1>
                <br>


                <div class="button_game_site">

                    <a href="https://hinterlandgames.com/about-hinterland"><span>Cinema</span></a>

                </div>



            </div>


            <div class="game">



                <div class="video_game">
                    <video class="video_game_media" src="views/img/bg_video.mp4" autoplay muted loop></video>

                </div>

                <div class="game_content">
                        <span>
                            "“If you want to tell people the truth, make them laugh, <br>
                            otherwise they'll kill you.”<br>
                             —  George Bernard Shaw
                        </span>
                    <div class="content_foto_tld_logo_big">

                        <img src="views/img/1tld_logo_big1.png" height="52%" width="52%"  alt="" srcset=""><br>
                    </div>

                    <div class="content_foto_tld_logo_big_mobile">
                        <img src="views/img/1tld_logo_big.png"   alt="" srcset=""><br>
                    </div>
                    <div class="content_foto_logo_game_site_button">
                        <div class="box-1">
                            <div class="btn btn-one">
                                <p> Movies</p>
                            </div>
                        </div>



                    </div>

                </div>


            </div>
            <div class="down_menu">
                <div class="down_menu_inner">

                    <div class="down_menu_inner_first_empty">
                        <h1 style="color: yellow; font-size: 48px;"> </h1>

                    </div>

                    <div class="down_menu_inner_second_text">
                        <span > JOIN US ON OUR JOURNEY</span>

                    </div>

                    <div class="down_menu_inner_third_text" >

                        We are a diverse group of experience-creators who care as much about how we
                        make, as what we make. We care about our worlds, our moviegoers, and our people. We
                        believe passion for work and balance in life are not only compatible ideas, but
                        necessary ones. If you want to help craft the future of interactive entertainment,
                        join us on our journey.








                    </div>

                    <div class="down_menu_inner_fourth_foto">
                        <img src="views/img/footer+logo+-5.png" alt="" srcset="">

                    </div>

                    <div class="down_menu_inner_fifth_list" >
                        <ul style="font-weight: bold;">

                            <li><a href="https://dou.ua/">

                                <%


                                    ResourceBundle resourceBundleJoinUs =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                                    out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleJoinUs.getString("joinUs") +"   </a>" );




                                %>

                            </a></li>

                            <li><a href="views/movies.jsp" ><%


                                resourceBundleMovie =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                                out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleMovie.getString("movie") +"   </a>" );




                            %></a></li>

                            <li><a href="https://www.facebook.com/" >
                                <%


                                    resourceBundleSupport =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                                    out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleSupport.getString("support") +"   </a>" );




                                %>
                            </a></li>

                            <li><a href="views/contact.jsp"><%


                                resourceBundleSupport =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                                out.print("<a href=\"views/shop-right-sidebar.jsp\"  > "+ resourceBundleSupport.getString("community") +"   </a>" );




                            %></a></li>

                            <li><a onclick="location.href='/movies'" >
                                <%


                                    resourceBundleSupport =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                                    out.print(" "+ resourceBundleSupport.getString("Change_language") +"  " );




                                %>
                            </a></li>




                        </ul>

                    </div>

                    <div class="down_menu_inner_sixth_list" >

                        <ul style="font-weight: bold;">

                            <li><a href="https://twitter.com">


                                <img src="views/img/twitter.png" style=" height: 24px; width: 25px; " alt="" srcset="">


                            </a></li>

                            <li><a href="https://www.instagram.com">

                                <img src="views/img/insta.png"style=" height: 24px; width: 24px; " srcset="">


                            </a></li>

                            <li><a href="https://www.facebook.com" class="down_menu_inner_sixth_list_fb_white">

                                <img src="views/img/facebook.png" style=" height: 24px; width: 24px; " alt="">

                            </a></li>

                            <li><a href="https://www.youtube.com">

                                <img src="views/img/youtube.png" style=" height: 24px; width: 24px; " alt="">

                            </a></li>




                        </ul>




                    </div>


                    <div class="down_menu_inner_seventh_police" style="">
                        The Hinterland ©2012-2021 Hinterland Studio Inc. "Hinterland" and the fox logo are registered
                        trademarks or trademarks of Hinterland  . All rights reserved.

                        <span style="text-decoration: underline ;">Privacy Policy</span>
                        <span style="text-decoration: underline ;"><a style=" color: #AE1E2C;">The Hinterland Privacy Policy</a></span>





                    </div>






                </div>

            </div>

        </div>

</content>


</body>
</html>
