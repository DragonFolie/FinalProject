<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        padding: 0;
        margin: 0;
        text-align: center;
        font-family: "Arvo";
        background: #4f3b5b;
        background: -moz-radial-gradient( center, ellipse cover, #4f3b5b 0%, #231733 100% );
        background: -webkit-gradient( radial, center center, 0px, center center, 100%, color-stop(0%, #4f3b5b), color-stop(100%, #231733) );
        background: -webkit-radial-gradient( center, ellipse cover, #4f3b5b 0%, #231733 100% );
        background: -o-radial-gradient( center, ellipse cover, #4f3b5b 0%, #231733 100% );
        background: -ms-radial-gradient( center, ellipse cover, #4f3b5b 0%, #231733 100% );
        background: radial-gradient(ellipse at center, #4f3b5b 0%, #231733 100%);
      }


      h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }

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
        margin-bottom: 200px;
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

      .header_inner_ul li {fon
        vertical-align: middle;
        display: inline; /* Отображать как строчный элемент */
        margin-right: 20px; /* Отступ слева */
        color: #666;
        padding: 3px; /* Поля вокруг текста */
      }

      .header {
      }
      .header_container {
        border-bottom: 1px solid #171717;

        width: 100%;
        height: 62px;
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
    <nav class="header">
      <div class="header_container">
        <div class="logo">
          <img src="views/img/logo_v2.jpg"  alt="logo+Hinterland" href="http://localhost:8080">

          <span ><a href="http://localhost:8080" >HINTERLAND</a></span>
        </div>
        <div class="header_container_empty">

        </div>
        <div class="header_nav">
          <ul >
            <li >
              <a onclick="location.href='/movies'">
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
                  out.print( name_user+" Your <a onclick=\"location.href='/admin'\"  >Admin Page</a>" +
                          " </li>\n"+

                          "<li>\n" +
                          "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                          " </li>\n"

                  );

                }
                if(role.equals("1")){

                  out.print(
                          "<li>\n" +
                                  "  Hello, "+name_user+" <a onclick=\"location.href='/userProfile'\"  >");
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
                                "  <a onclick=\"location.href='/login'\">");

                ResourceBundle resourceBundleSLogout =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                out.print("   "+ resourceBundleSLogout.getString("login") +"   " );

                out.print( "</a>\n" +
                        " </li>\n" +

                        " <li>\n" +
                        "     <a onclick=\"location.href='/registration'\">");
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
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">&#10003;</i>
      </div>
        <h1>Success</h1> 
        <p>We received your purchase request;<br/> we'll be in touch shortly!</p>
      </div>
    </body>
</html>