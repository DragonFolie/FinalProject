<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href=" AdminList/fonts/icomoon/style.css">

    <link rel="stylesheet" href=" AdminList/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href=" AdminList/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href=" AdminList/css/style.css">

    <title>Movie List</title>

  </head>


  <body>


  <div class="content">

    <div class="container">
      <h2 class="mb-5" ><a href="admin_page.jsp">Go Back</a></h2>
      <h2 class="mb-5">Movie List</h2>


      <div class="table-responsive custom-table-responsive">

        <table class="table custom-table">
          <thead>
            <tr>

              <th scope="col">
                <label class="control control--checkbox">
                  <input type="checkbox"  class="js-check-all"/>
                  <div class="control__indicator"></div>
                </label>
              </th>

              <th scope="col">Id</th>
              <th scope="col">Movie Name</th>
              <th scope="col">Description0</th>
              <th scope="col">Time Start</th>
              <th scope="col">Time End</th>
              <th scope="col">Seats</th>
              <th scope="col">Free seats</th>
            </tr>
          </thead>
          <tbody>


          <%


            DB_ManagerDAO db_managerDAO = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO2 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO3 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO4 = new DB_ManagerDAO();

            ArrayList allMovieName = new ArrayList();
            ArrayList allSessionInfo = new ArrayList();
            ArrayList uniqueSeats  = new ArrayList();




            String regex = "(.+),(.+),(.+),(.+),(.+)";
            String id = null;
            String timeS = null;
            String timeE = null;
            String date = null;
            String status  = null;





            allMovieName= db_managerDAO.findAllUniqueMovieName();

//            MOVIE:  [Baby Boss, We are your friend 2, Test, Black Howk Down, Project X]
//            InfoSession: [12:27,08:28,Friday,Close to buy, 09:16,13:16,Saturday,New Session]   Movie   Baby Boss
//            InfoSession: [04:43,06:43,Tuesday,Open, 09:16,13:16,Wednesday,New Session]   Movie   We are your friend 2
//            InfoSession: [21:07,01:07,Monday,Open]   Movie   Test
//            InfoSession: [04:06,06:06,Tuesday,Open]   Movie   Black Howk Down
//            InfoSession: [11:00,12:30,Tuesday,Open, 01:13,03:13,Thursday,New Session]   Movie   Project X


//
//            MOVIE:  [Baby Boss, We are your friend 2, Test, Black Howk Down, Project X]
//            InfoSession: [12:27,08:28,Friday,Close to buy, 09:16,13:16,Saturday,New Session]   Movie   Baby Boss
//            12:27 - 08:28 - Friday - Close to buy
//            09:16 - 13:16 - Saturday - New Session
//            InfoSession: [04:43,06:43,Tuesday,Open, 09:16,13:16,Wednesday,New Session]   Movie   We are your friend 2
//            04:43 - 06:43 - Tuesday - Open
//            09:16 - 13:16 - Wednesday - New Session
//            InfoSession: [21:07,01:07,Monday,Open]   Movie   Test
//            21:07 - 01:07 - Monday - Open
//            InfoSession: [04:06,06:06,Tuesday,Open]   Movie   Black Howk Down
//            04:06 - 06:06 - Tuesday - Open
//            InfoSession: [11:00,12:30,Tuesday,Open, 01:13,03:13,Thursday,New Session]   Movie   Project X
//            11:00 - 12:30 - Tuesday - Open
//            01:13 - 03:13 - Thursday - New Session

//
            System.out.println("MOVIE:  " + allMovieName);
            for (int i = 0; i <allMovieName.size() ; i++) {

              allSessionInfo = db_managerDAO2.findAllMovieSessionByNameWithID(allMovieName.get(i).toString());

//              System.out.println("InfoSession: " + allSessionInfo + "   Movie   " + allMovieName.get(i));




              for (int j = 0; j < allSessionInfo.size(); j++) {

                Matcher m = Pattern.compile(regex).matcher(allSessionInfo.get(j).toString());
                String descriptionOfMovie = db_managerDAO3.getDescriptionMovie(allMovieName.get(i).toString());
                uniqueSeats = db_managerDAO3.getUniqueSeatBySession(date,timeS);

                while (m.find()) {

                  id = m.group(1);
                  timeS = m.group(2);
                  timeE = m.group(3);
                  date = m.group(4);
                  status = m.group(5);


//							System.out.println(timeS+" - " +timeE+" - " +date+" - " +status );
//                  out.print("<option >" + timeS + "-" + timeE + " ; " + date + "</option>");

                }

                out.print("<tr scope=\"row\">\n" +
                        "              <th scope=\"row\">\n" +
                        "                <label class=\"control control--checkbox\">\n" +
                        "                  <input type=\"checkbox\"/>\n" +
                        "                  <div class=\"control__indicator\"></div>\n" +
                        "                </label>\n" +
                        "              </th>\n" +
                        "              <td>\n");


                        out.print(" "+  id + " ");
                        out.print("              </td>\n" +
                        "              <td><a href=\"#\">");out.print( allMovieName.get(i).toString() ); out.print(" </a></td>\n" +
                        "              <td>\n");
                        out.print(descriptionOfMovie  );

                        out.print( "<small class=\"d-block\"> </small>\n" +
                        "              </td>\n" +
                        "              <td>"); out.print( timeS + " - " + timeE); out.print(" </td>\n" +
                        "              <td>"); out.print( status); out.print("</td>\n" +
                        "\n" +
                        "            <td><a href=\"#\" class=\"more\">Details</a></td>\n" +
                        "            <td><a href=\"#\" class=\"more\">Seats</a></td>\n" +
                        "            </tr>");

              }


            }


          %>







            <tr class="spacer"><td colspan="100"></td></tr>







          </tbody>
        </table>
      </div>


    </div>

  </div>



    <script src="AdminList/js/jquery-3.3.1.min.js"></script>
    <script src="AdminList/js/popper.min.js"></script>
    <script src="AdminList/js/bootstrap.min.js"></script>
    <script src="AdminList/js/main.js"></script>
  </body>
</html>