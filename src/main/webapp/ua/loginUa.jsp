<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css'><link rel="stylesheet" href="views/style.css">



    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script2.js"></script>

</head>


<style>


    <%@include file="/views/style.css" %>


    .custom-select {
        border: 0;
        position: relative;
        display: block;
        max-width: 400px;
        min-width: 180px;
        margin: 0 auto;
        border: 1px solid #3D2C4B;
        background-color: #1e1524;
        z-index: 10;
    }
    .custom-select select {
        border: none;
        outline: none;
        background: transparent;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0;
        margin: 0;
        display: block;
        width: 100%;
        padding: 12px 55px 15px 15px;
        font-size: 14px;
        color: orange;
    }
    .custom-select:after {
        position: absolute;
        right: 0;
        top: 0;
        width: 50px;
        height: 100%;
        line-height: 38px;
        content: "∨";
        text-align: center;
        color: #714BB9;
        font-size: 24px;
        border-left: 1px solid #3D2C4B;
        z-index: -1;
    }







</style>

<body>
<script type="text/javascript" src="${pageContext.request.contextPath}script2.js"></script>



<!-- Page preloader -->
<%--        <div id="hola">--%>
<%--        <div id="preloader">--%>
<%--        <span></span>--%>
<%--        <span></span>--%>
<%--          </div>--%>
<%--            </div>--%>
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



<!-- partial:index.partial.html -->
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>
<div class='fire'></div>

<div class='fire'></div>
<div class='fire'></div>
<!-- partial -->
<!-- partial:index.partial.html -->
<form method="post">
    <div class="center_position">
        <div class="wrap center"> <!-- Just to center ver and hor -->
            <div class="wrap-label">
                <label for="name">Nickname</label>
                <p class="iconicfill-pen-alt2"><i class="fas fa-pencil-alt"></i></p>

            </div>

            <input type="text" id="name" name="name_login" >


        </div>
        <div class="wrap center"> <!-- Just to center ver and hor -->
            <div class="wrap-label">
                <label for="pass">Password</label>
            </div>



            <input type="text" id="name" name="pass_login" >




        </div>

<%--        <div class="wrap center"> <!-- Just to center ver and hor -->--%>
<%--            <div class="wrap-label" style="border: 0;" >--%>


<%--                <label class="custom-select" for="styledSelect1">--%>

<%--                    <select id="styledSelect1" name="language">--%>

<%--                        <option >English</option>--%>
<%--                        <option >Ukraine</option>--%>

<%--                    </select>--%>
<%--                </label>--%>





<%--            </div>--%>


<%--        </div>--%>

        <div class="buttons" >
            <div class="container">
                <a  class="btn btn-2"><button style="outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px "  type="submit">

                    <%


                        ResourceBundle resourceBundleSLogin2 =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSLogin2.getString("login") +"   " );




                    %>
                </button></a>
                <a  style="color: white" >

                        <%


                        ResourceBundle resourceBundleSDontHaveAccount =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSDontHaveAccount.getString("dont_have_account") +"   " );




                    %>

                    <br><a onclick="location.href='/registrationUa'" class="btn3" >

                    <%


                        ResourceBundle resourceBundleSRegist =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSRegist.getString("create_account") +"   " );




                    %>

                </a>
            </div>
        </div>


    </div>
</form>







<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.transit/0.9.9/jquery.transit.min.js'></script><script  src="views/script2.js"></script>


<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.ui.min.js'>
</script><script  src="views/script2.js"></script>


</body>
</html>
