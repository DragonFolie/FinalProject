package servlets;

import DAO.DB_ManagerDAO;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BuyMovieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {




        Logger logger =  Logger.getLogger(AdminServlet.class.getName());


        HttpSession httpSession = req.getSession();

        String role = (String) httpSession.getAttribute("role");

        try {
            if (role == null ){




                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("403.jsp");
                dispatcher.forward(req, resp);
                resp.setIntHeader("Refresh", 1);
                return;


            }

            if (Objects.equals(role, "2")){

                RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/Admin_page.jsp");

                requestDispatcher.forward(req, resp);


            }
            else {


                RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/movieChoise.jsp");
                requestDispatcher.forward(req, resp);

            }
        }catch (Exception e){
            logger.error(e);
        }

    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        DB_ManagerDAO dbManager = new DB_ManagerDAO();
        Logger logger = Logger.getLogger(BuyMovieServlet.class.getName());
        HttpSession session = req.getSession();


        String nickName = (String) session.getAttribute("name");
        String time = req.getParameter("sessionTime");
        String seat = req.getParameter("numberOfSeat");
        String movieName = req.getParameter("movieName");

        String day = null;
        String timeS = null;
        String timeE = null;





        try {

            if(nickName == null) {

                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/login");
                requestDispatcher.forward(req, resp);
            }



            String regex = "(.+)-(.+)\\s;\\s(\\w+)";
            Matcher m = Pattern.compile(regex).matcher(time);
            while (m.find()){

                timeS = m.group(1);
                timeE = m.group(2);
                day = m.group(3);



            }




            RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/Success_Page.jsp");


            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                logger.error("Something go wronk with wait time in Success_Page.jsp " + e);
            }




            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            logger.error("Something go wrong  Buy movie servlet " + e);
        }

//        Nick:test
//        Movie: Project X -- 01:13-03:13 ; Thursday -- 5
//        01:13 03:13 Thursday

        dbManager.addOrderToUser(nickName,movieName,day,seat,timeS,timeE);




        System.out.println("Nick:"+ nickName);
        System.out.println("Movie: "+movieName + " -- " +time + " -- "+ seat);

        System.out.println(timeS + " " +timeE + " " + day);



    }
}
