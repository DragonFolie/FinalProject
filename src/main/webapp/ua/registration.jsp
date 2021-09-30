<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Simple focus in/out input animation</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css'><link rel="stylesheet" href="views/style.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>
<body>
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
                  <img src="views/img/logo_v2.jpg" alt="logo+Hinterland" href="http://localhost:8080" >
                  <span ><a href="http://localhost:8080" >HINTERLAND</a></span>
              </div>
                  <div class="header_container_empty">
          
                  </div>
                  <div class="header_nav">
                      <ul class="header_inner_ul">
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
        
        <input type="text" id="name" name="name" >

        
      </div>
      <div class="wrap center"> <!-- Just to center ver and hor -->
        <div class="wrap-label">
          <label for="pass">Password</label>
          </div>
          
        
        
        <input type="text" id="name" name="pass" >



        
      </div>

      <div style="  margin-top: 10px; font-size: 15px; " class="wrap center"> <!-- Just to center ver and hor -->
        <div class="wrap-label">
            
                        
          <label for="gender">Gender&nbsp&nbsp

          <select class="new-select"  name="gender">
            <option ><span>Man</span></option>
              <option >Woman</option>
          </select>

        </label>
        </div>
      

            
            
            
        
    </form>



        
      </div>
      
     
          
        
        




      <div style="padding-top: 50px;" class="buttons">
        <div class="container">
          <a href="" class="btn btn-2"><button type="submit" style="outline: none;   border: 0;  background: transparent; color: white ; font-size: 15px ">

              <%


                  ResourceBundle resourceBundleSLogin2 =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                  out.print("   "+ resourceBundleSLogin2.getString("login") +"   " );




              %>

          </button></a>

            <a  style="color: white" >

                    <%


                        ResourceBundle resourceBundleSDontHaveAccount =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                        out.print("   "+ resourceBundleSDontHaveAccount.getString("have_account") +"   " );




                    %>

                <br><a onclick="location.href='/loginUa'" class="btn3" >

                <%


                    ResourceBundle resourceBundleSRegist =  ResourceBundle.getBundle("messages" , new Locale("ua","Ua"));
                    out.print("   "+ resourceBundleSRegist.getString("login_account") +"   " );




                %>

            </a>
            </div>
      </div>
  </div>
</form>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script></script><script src="views/script.js"></script>


<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/velocity/1.2.3/velocity.ui.min.js'>
</script><script  src="views/script2.js"></script>

</body>
</html>
