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

<style>

  select {
    background-color: #313131;
    /* styling */
    width: 40%;
    text-align: center;
    background: none;
    border: none;
    display: inline-block;
    font: inherit;
    color: #fff;
    line-height: 1.5em;
    padding: 0.5em 3.5em 0.5em 1em;
    cursor: pointer;

    /* reset */
    margin: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-appearance: none;
    -moz-appearance: none;

  }

  select:focus {
    outline: 0;
  }

  select:-moz-focusring {
    color: transparent;
  }

  /* shit that doesnt matter */
  body {
    background-color: #212121;
    font:  1em "Helvetica", Arial, sans-serif;
    padding: 2em 0;
    text-align: center;
  }
  option{
    background-color: #111111;
    color: white;

  }


</style>


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
          <th scope="col">Status</th>
          <th scope="col">Free Seats</th>
          <th scope="col">Count of Seats</th>
        </tr>
        </thead>
        <tbody>

        <form method="get">


          <%





            DB_ManagerDAO db_managerDAO = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO2 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO3 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO4 = new DB_ManagerDAO();
            DB_ManagerDAO db_managerDAO5 = new DB_ManagerDAO();

            ArrayList allMovieName = new ArrayList();
            ArrayList uniqueSeats  = new ArrayList();
            ArrayList allAboutSessionInfo = new ArrayList();



//   6,128 ударів серця в хвилину ,F1,Max Bringe,Lando Norris,Aorton Senna,Nikki Lauda,43,Wednesday,23,09:16 - 13:16,New Session,Project X---------------


            String regex = "(.+);(.+);(.+);(.+);(.+);(.+);(.+);(.+);(.+);(.+)";
            String nameEng = null;
            String nameUkr = null;
            String description  = null;
            String actors = null;
            String director = null;
            String id = null;
            String time = null;
            String day = null;
            String status  = null;
            String cost = null;
            String countOfSeats = null;



            int elementsCount = db_managerDAO5.maxIdSession();

            int step = 2;
            int countPage = 1;
            int countElementOnLastPage = 0;

              allMovieName = db_managerDAO2.findAllMovieName();


              System.out.println("------------");
             String requesValue = request.getParameter("numberPage");
              System.out.println("Req:" + requesValue);
              if (requesValue == null){

                  System.out.println("Req2:" + requesValue);
                  allAboutSessionInfo = db_managerDAO.getInfoAboutSessionAndMovies(4,0);

              }

              if (requesValue != null){

                  System.out.println("Req3:" + requesValue);

                  int requestNumberPage = Integer.parseInt(requesValue) ;

                  System.out.println("Number:  " + requestNumberPage);

                  allAboutSessionInfo = db_managerDAO.getInfoAboutSessionAndMovies(step,(requestNumberPage*step));

              }


//            if(elementsCount <= 4 ){
//
//                allAboutSessionInfo = db_managerDAO.getInfoAboutSessionAndMovies(4,0);
//
//              }
//
//              if(elementsCount > 4 ){
//
//                  countPage = elementsCount % step;
//                  System.out.println(countPage);
//
//
//                  allAboutSessionInfo = db_managerDAO.getInfoAboutSessionAndMovies(4,0);
//
//              }





            System.out.println(allAboutSessionInfo.size());
            for (int i = 0; i < allAboutSessionInfo.size(); i++) {

                Matcher m = Pattern.compile(regex).matcher(allAboutSessionInfo.get(i).toString());







                while (m.find()) {

//               6;128 ударів серця в хвилину ;F1;Max Bringe,Lando Norris,Aorton Senna;Nikki Lauda;43;Wednesday;23;09:16 - 13:16;New Session;

                  id = m.group(1);
                  nameUkr = m.group(2);
                  description = m.group(3);
                  actors = m.group(4);
                  director = m.group(5);
                  countOfSeats = m.group(6);
                  day = m.group(7);
                  cost = m.group(8);
                  time = m.group(9);
                  status = m.group(10);


//
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
                        "              <td><a href=\"#\">");out.print( allMovieName.get(i) ); out.print(" </a></td>\n" +
                        "              <td>\n");
                out.print(description  );

                out.print( "<small class=\"d-block\"> </small>\n" +
                        "              </td>\n" +
                        "              <td>"); out.print( time ); out.print(" </td>\n" +
                        "              <td>"); out.print( status); out.print("</td>\n" +
                        "\n" +
                        "            <td><a href=\"#\" class=\"more\">" +
                        "" +
                        "<select class=\"js-select2\" name=\"numberOfSeat\">");
                for (int k = 1; k < uniqueSeats.size() ; k++) {
                  out.print("<option >"+uniqueSeats.get(k)+"</option>" );
                }out.print(" </a></td>\n" +
                        "            <td><a href=\"#\" class=\"more\">");out.print( countOfSeats );   out.print(" </a></td>\n" +
                        "            </tr>");

              }






          %>






          <tr class="spacer"><td colspan="100"></td></tr>
        </form>





        </tbody>
      </table>
    </div>


    <div class="table-responsive custom-table-responsive">
      <table class="table custom-table" >
        <tr>

          <form method="get">

               <a style="color:white"> 1-</a>
              <input  type="text" id="name" name="numberPage" >

                 <button  style="outline: none;   border: 0;  background: transparent; color: white ; font-size: 20px " type="submit"> Go</button>

                <a style="color:white">Your page is: 1</a>


          </form>

        </tr>
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