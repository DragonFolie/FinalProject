package servlets;

import DAO.Admin;
import DAO.DB_ManagerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NewSessionForMovieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/AdminAddSessionToMovie.jsp");

        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Admin admin = new Admin();
        DB_ManagerDAO dbManager = new DB_ManagerDAO();
        int threeInsertAreSuccessful = 0;


        String getName = req.getParameter("movieName");
        String sessionDay = req.getParameter("sessionDay");
        String timeStart = req.getParameter("timeStart");
        String timeEnd = req.getParameter("timeEnd");
        String status = "New Session";
        String getAllInfo = admin.addNewSessionForMovie(getName);

//        System.out.println(getAllInfo);





// Project X - Good movie " Проект Х - Файний мульт - Den Brown,Lewis Hamilton,Jason Born - Max Verstapen " projectX.jpg - 80 - 33 "


// lang  NAME - DESC
// film  Name Desc Actor Direct
// ses  Poster CountSeat  Cost


//        String regex = "(    (.+)-(.+)    );(    (.+)-(.+)-(.+)-(.+)    );(    (.+)-(.+)(.+)-(.+)    );";

        String regex = "((.+)-(.+));((.+)-(.+)-(.+)-(.+));((.+)-(.+)-(.+));";
        Matcher m = Pattern.compile(regex).matcher(getAllInfo);
        String nameEng = null ;
        String nameUkr = null ;
        String descriptionUkr = null ;
        String descriptionEng = null ;
        String actors = null ;
        String director = null ;
        String posterURL = null ;
        String  countSeat = null ;
        String price = null ;



        while (m.find()) {

        nameEng = m.group(2);
         descriptionEng = m.group(3);

         nameUkr = m.group(5);
         descriptionUkr = m.group(6);
         actors = m.group(7);
         director = m.group(8);

         posterURL = m.group(10);
         countSeat = m.group(11);
         price = m.group(12);







        }
//        System.out.println(getName + " == " + sessionDay + " == " + timeStart + " == " + timeEnd + " == " + status + " +++++++ " +
//                nameEng + " == " + nameUkr + " == " + descriptionEng + " == " + descriptionUkr + " == " + actors + " == " + director
//                + " == " + posterURL + " == " + countSeat + " == " + price);




        // Add Movie Ukraine/English language


//        String nameUkr = req.getParameter("movieName");
//        String descriptionUkr = req.getParameter("description");
//        String descriptionEng = req.getParameter("descriptionENG");
//        String actors = req.getParameter("actors");
//        String actors2 = req.getParameter("actors2");
//        String actors3 = req.getParameter("actors3");
//        String actor = actors+ "," + actors2 +"," + actors3;
//
//
//        String director = req.getParameter("director");



        // Add new Session

//        String ticketCost = req.getParameter("ticketCost");
//        String countSeat = req.getParameter("countOfSeat");
//        String posterURL = req.getParameter("posterUrl");
//        String date = req.getParameter("sessionDay");
//        String timeStart = req.getParameter("timeStart");
//        String timeEnd = req.getParameter("timeEnd");
//        String status = req.getParameter("status");



//
        if (price != null && countSeat != null && posterURL != null && sessionDay != null && timeStart!= null &&timeEnd!= null    ){
            String  pageURL = null;

            pageURL =  nameEng.replaceAll(" ","_");

//            System.out.println("good1");

            dbManager.addSession(price,countSeat,posterURL,sessionDay,timeStart,timeEnd,status,pageURL);
//            System.out.println("+1");

            threeInsertAreSuccessful +=1;

//            System.out.println("good1");
        }





        if (nameUkr != null && descriptionUkr != null && actors != null && director != null){



//            System.out.println("good3");
            dbManager.addMovie(nameUkr,descriptionUkr,actors,director);
//            System.out.println("+2");
            threeInsertAreSuccessful +=1;
//            System.out.println("good3");
        }




        if (  nameEng != null &&  descriptionEng != null   ){

//            System.out.println("good2");
            dbManager.addEngtypeOfMovie(nameEng,descriptionEng);
//            System.out.println("+3");
            threeInsertAreSuccessful +=1;

//            System.out.println("good2");


        }
        resp.setIntHeader("Refresh", 1);




    }
}
