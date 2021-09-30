package servlets;

import DAO.DB_ManagerDAO;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

public  class NewMovieServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Logger logger =  Logger.getLogger(AdminServlet.class.getName());


        HttpSession httpSession = req.getSession();

        String role = (String) httpSession.getAttribute("role");

        try {
            if (role == null ){

                RequestDispatcher requestDispatcher1 = req.getRequestDispatcher("403.jsp");
                requestDispatcher1.forward(req, resp);
                return;

            }

            if (Objects.equals(role, "1")){

                RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("403.jsp");
                requestDispatcher2.forward(req, resp);


            }
            else {


                RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/newMovie.jsp");

                requestDispatcher.forward(req, resp);

            }
        }catch (Exception e){
            logger.error(e);
        }


    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DB_ManagerDAO dbManager = new DB_ManagerDAO();

        int threeInsertAreSuccessful = 0;


        // Add Movie Ukraine/English language


        String nameUkr = req.getParameter("movieName");
        String nameEng = req.getParameter("movieNameENG");
        String descriptionUkr = req.getParameter("description");
        String descriptionEng = req.getParameter("descriptionENG");
        String actors = req.getParameter("actors");
        String actors2 = req.getParameter("actors2");
        String actors3 = req.getParameter("actors3");
        String actor = actors+ "," + actors2 +"," + actors3;


        String director = req.getParameter("director");



        // Add new Session

        String ticketCost = req.getParameter("ticketCost");
        String countSeat = req.getParameter("countOfSeat");
        String posterURL = req.getParameter("posterUrl");
        String date = req.getParameter("sessionDay");
        String timeStart = req.getParameter("timeStart");
        String timeEnd = req.getParameter("timeEnd");
        String status = req.getParameter("status");

        if (ticketCost != null && countSeat != null && posterURL != null && date != null && timeStart!= null &&timeEnd!= null    ){
            String  pageURL = null;

            pageURL =  nameEng.replaceAll(" ","_");

//            System.out.println("good1");

            dbManager.addSession(ticketCost,countSeat,posterURL,date,timeStart,timeEnd,status,pageURL);
//            System.out.println("+1");

            threeInsertAreSuccessful +=1;

//            System.out.println("good1");
        }





        if (nameUkr != null && descriptionUkr != null && actor != null && director != null){



//            System.out.println("good3");
            dbManager.addMovie(nameUkr,descriptionUkr,actor,director);
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

//        System.out.println("pre");
        if (threeInsertAreSuccessful ==3 ){
//            System.out.println("in");
            NewMoviePage newMoviePage = new NewMoviePage();

            try {
//                System.out.println(" name= " +nameEng);
                newMoviePage.createDirectionForImageMovie(nameEng);
            } catch (Exception e) {
                e.printStackTrace();
            }

            try {
//                System.out.println(" name= " +nameEng +" poster= "+posterURL+" 1 "+actor+" a2 "+actors2+" a3 "+ actors3+" dir "+ director
//                        +" desc "+descriptionEng+" ts "+ timeStart +" te" + timeEnd);
                newMoviePage.createFile(nameEng,posterURL,date,actors,actors2,actors3,director,descriptionEng,timeStart,timeEnd);

            } catch (IOException e) {

                e.printStackTrace();

            }

            resp.setIntHeader("Refresh", 1);

            threeInsertAreSuccessful = 0;
        }



    }
}
