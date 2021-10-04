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







      <%@include file="css/long_dark_news.css" %>











    </style>
    <body>
    <nav class="header" style="margin-bottom: 250px">
      <div class="header_container">
        <div class="logo">
          <img src="views/img/logo_v2.jpg"  alt="logo+Hinterland" href="http://localhost:8080">

          <span ><a href="http://localhost:8080" >HINTERLAND</a></span>
        </div>
        <div class="header_container_empty">

        </div>
        <div class="header_nav">
          <ul class="header_inner_ul">
            <li >
              <a onclick="location.href='/movies'">MOVIES</a>

            </li>



            <li>
              <a href="https://www.facebook.com/"  target="_blank" >COMMUNITY</a>
            </li>
            <li>
              <a href="views/shop-right-sidebar.jsp"   >SHOP</a>
            </li>
            <li>
              <a href="views/contact.jsp" target="_blank"  >SUPPORT</a>
            </li>




            <%

              String name_user  = (String)session.getAttribute("name");

              if(name_user != null ){

                if(name_user.equals("admin")){

                  out.print(
                          "<li>\n" +
                                  "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/admin'\"  >Admin Page</a>" +
                                  " </li>\n"

                  );

                }
                if(!name_user.equals("admin")){

                  out.print(
                          "<li>\n" +
                                  "  Hello, "+name_user+" Welcome to <a onclick=\"location.href='/userProfile'\"  >Profile</a>\n" +
                                  " </li>\n"+
                                  "<li>\n" +
                                  "  <button class=\"w3-btn w3-hover-light-blue w3-round-large\" style=\"outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px \" onclick=\"location.href='/logout'\">Logout </button>" +
                                  " </li>\n"

                  );

                }



                //                                      out.print("Hello, "+name_user+" Welcome to Profile");


              }
              if(name_user == null ) {

                out.print(
                        "<li>\n" +
                                "  <a onclick=\"location.href='/login'\">LOGIN</a>\n" +
                                " </li>\n" +

                                " <li>\n" +
                                "     <a onclick=\"location.href='/registration'\">REGISTER</a>\n" +
                                "</li>"
                );


              }





            %>
            <li>
              <a>



                <!-- Search field -->



                <button id="searchButton" class="button_search_button" onclick="OnSearchButtonClick()">
                                        <span class="noselect">
                                            <img src="views/img/loupe.png" alt="">
                                        </span>
                  <div id="circle"></div>
                </button>



                <input class="search_field" placeholder="Search text" type="text" size="15" id="searchField" onkeydown="OnSearchSubmit(this, this.value)">









              </a>
            </li>
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