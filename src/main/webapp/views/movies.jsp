<%@ page import="java.util.ArrayList" %>
<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Атрибут accesskey</title>
        <meta name="viewport" content="width=device-width">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">


        <link rel="stylesheet" type="text/css" href="views/css/long_dark_news.css">


        <link href="https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap" rel="stylesheet">
        
    </head>
    <style>
      
      <%@include file="css/long_dark_news.css" %>
      
    </style>
    <script>

    </script>
     
     <body>

        
            
<!-- INSERT INTO `testtable` (`TestColumn1`, `TestColumn2`) VALUES ('First note', '1');
INSERT INTO `testtable` ". "(`TestColumn1`, `TestColumn2`) ". "VALUES('Second note','2') -->

          
        

        <nav class="header">
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
                            <a href="shop-right-sidebar.jsp"   >SHOP</a>
                        </li>
                        <li>
                            <a href="contact.jsp" target="_blank"  >SUPPORT</a>
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
<main class="main">
    <section class="news">
        <h1 class="new_title_main">
            Movie list


            <!-- SORTING BUTTON -->
    







                <button name="sortButton" id="test" class="sort_button" onclick="OnSortButtonClick()">
                    <img class="sort_button" src="views/img/sort-down.png" alt="">
                </button>
                <!-- <button name="showAllNews" id="test" class="sort_button">
                    <img class="sort_button" src="img/loupe.png" alt="">
                </button> -->
        </h1>


















        <%

            ArrayList timeStartEnd = new ArrayList();
            ArrayList nameOfMovie = new ArrayList();



            DB_ManagerDAO dbManager2 = new DB_ManagerDAO();
            DB_ManagerDAO dbManager3= new DB_ManagerDAO();



            timeStartEnd=  dbManager2.findAllMovieSession();
//            System.out.println(timeStartEnd.size()+  " size1 ");
            nameOfMovie = dbManager2.findAllMovieName();
//            System.out.println(nameOfMovie.size()+  " size2 ");

            String timeS = null;
            String timeE = null;
            String date = null;
            String status  = null;


            String regex = "(.+),(.+),(.+),(.+)";

            for (int i = 0; i < timeStartEnd.size(); i++) {

                StringBuilder sb = new StringBuilder() ;
                StringBuilder name = new StringBuilder() ;

                sb.append(    timeStartEnd.get(i) ) ;
                name.append(nameOfMovie.get(i));


                String FolderURL = dbManager2.getFolderURL(name.toString());
                String PosterURL = dbManager3.getPosterURL(name.toString());


//                System.out.println(sb.toString() + " sb");

                Matcher m = Pattern.compile(regex).matcher(sb.toString());

                while (m.find()) {
                    timeS = m.group(1);
                    timeE = m.group(2);
                    date = m.group(3);
//                    System.out.println("in");

                    status = m.group(4);
                    if (status.equals("Close to buy" ) || status.equals("New Session")){
//                        out.println( "<li>Movie name: "+ sb2+";&nbsp&nbsp Start: " +preword  + ";&nbsp&nbsp End: " + afterword +";&nbsp&nbsp </li>" );
                        continue;
                    }

                        out.print("<ul class=\"list_block_news\">\n" +
                                "            <li class=\"block_news\">\n" +
                                "                <span class=\"time_block\">"+date +"</span>\n" +
                                "\n" +
                                "\n" +
                                "                <a href='views/"+FolderURL+".jsp' class=\"block_news_img_text\">\n" +
                                "\n" +
                                "                    <div class=\"block_news_img_text\">\n" +
                                "                        <img src=\"views/img/MoviePoster/"+FolderURL+"/"+PosterURL+"\" style=\"width: 329px; height: auto;\"  alt=\"\" srcset=\"\">\n" +
                                "                    </div>\n" +
                                "\n" +
                                "                    <div class=\"block_news_text\">\n" +
                                "                        <h2 href='views/We_Are_Your_Friend.jsp' class=\"block_news_text_inner\"> "+ name+"</h2>\n" +
                                "\n" +
                                "                    </div>\n" +
                                "                    \n" +
                                "                </a>\n" +
                                "                \n" +
                                "\n" +
                                "            </li> \n" +
                                "         </ul>");







                }

            }




        %>

        <!-- Блоки новин назив list_block_news  block_news_text-текст зліва  block_news_img_text - фото   content_inner_text_hr - полоска після новини -->



<%--         --%>
         <ul class="list_block_news">
            <li class="block_news">
                <span class="time_block">28.05.2020.</span>


                <a href="views/We_Are_Your_Friend.jsp" class="block_news_img_text">

                    <div class="block_news_img_text">
                        <img src="views/img/MoviePoster/We_Are_YourFriend/we-are-your-friends-2.jpg" style="width: 329px; height: auto;"  alt="" srcset="">
                    </div>

                    <div class="block_news_text">
                        <h2 href="#" class="block_news_text_inner"> We are your friend</h2>

                    </div>

                </a>


            </li>
         </ul>
         
            
            
            <!-- Блоки новин назив list_block_news  block_news_text-текст зліва  block_news_img_text - фото   content_inner_text_hr - полоска після новини --> 
            <!-- <div class="content_inner_text_hr">
                
            </div>



        </ul> -->





    </section>

</main>


<footer class="footer">

    <div class="footer_inner">

        <h2 >SIGN UP FOR NEWS & UPDATES</h2>

        <div class="email_sender_field">
            <form action="vlad_work_with_sql_email">

                
                <input type="email" value="" name="EMAIL" class="email_sender_field_inner"  required="" aria-label="Your email">
                
                <button type="submit" value="Subscribe" name="subscribe"  class="email_sender_field_inner_submit">Sign Up</button>



            </form>

        </div>

        <ul class="list_photo">
            <li>

                <a class="footer-list-twitter" href="https://www.facebook.com/intothelongdark">
                    <img src="views/img/icon-share-facebook.svg" width="40px" height="40px" alt="">
                    
                </a>

            </li>
            <li>

                <a href="" class="footer-list-twitter">
                    <img src="views/img/icon-community-twitch.svg" width="40px" height="36px" alt="https://twitter.com/HinterlandGames">
                </a>

            </li>
            <li>

                <a class="footer-list-twitter" href="https://www.youtube.com/user/hinterlandgames">
                    <img src="views/img/icon-youtube.svg" width="40px" height="40px" alt="">
                    
                </a>

            </li>
            <li>

                <a href="https://www.twitch.tv/directory/game/The%20Long%20Dark" class="footer-list-twitter">
                    <img src="views/img/icon-community-twitch.svg" width="40px" height="36px" alt="https://twitter.com/HinterlandGames">
                </a>

            </li>
            


        </ul>

        <ul class="footer_list_text">
            <li >
                <a href="movies.jsp" class="footer_list_text_li">MOVIE</a>
            </li>

            <!-- <li >
                <a href="long_dark_survival_mode.html" class="footer_list_text_li" >SURVIVAL MODE</a>
            </li>

            <li>
                <a href="long_dark_story_mode.html"  class="footer_list_text_li">STORY MODE</a>
            </li>  -->

            <li>
                <a href="https://www.facebook.com/" class="footer_list_text_li" target="_blank" >COMMUNITY</a>
            </li>
            <li>
                <a href="shop-right-sidebar.jsp" class="footer_list_text_li" >SHOP</a>
            </li>
            <li>
                <a href="contact.jsp" class="footer_list_text_li" target="_blank"  >SUPPORT</a>
            </li>

        </ul>

        <div class="footer_logo">

            <img src="views/img/logo-hinterland-wordmark.svg" alt="">

        </div>

        <div class="footer_logo_text">
            <p class="copyright">THE LONG DARK © 2012-2021 Hinterland Studio Inc.<br>
                "THE LONG DARK", "Hinterland" and the fox logo are registered trademarks or trademarks of Hinterland Studio Inc. All rights reserved.<br>
                Nintendo Switch is a trademark of Nintendo.

               </p>
               <p class="copyright"><a class="copyright_1"  href="https://hinterlandgames.com/privacy-policy/">Privacy Policy</a></p>

        </div>





    </div>




</footer>
    </body>













    </html>