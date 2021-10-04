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

public class UpdateMovieStatus extends HttpServlet {
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


                RequestDispatcher requestDispatcher3 = req.getRequestDispatcher("views/updateMovieStatus.jsp");
                requestDispatcher3.forward(req, resp);

            }
        }catch (Exception e){
            logger.error(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/Success_Page.jsp");
        String status = null;
        String movieName = null;
        String day = null;
        String timeS = null;
        String timeE = null;

        try {
            DB_ManagerDAO db_managerDAO = new DB_ManagerDAO();

            String time = request.getParameter("sessionTime");
            status = request.getParameter("status");
            movieName = request.getParameter("movieName");
            String regex = "((.+)-(.+));(.+)";

            day = null;
            timeS = null;
            timeE = null;


            Matcher m = Pattern.compile(regex).matcher(time);


            while (m.find()) {

                 day = m.group(4);
                 timeS = m.group(2);
                 timeE = m.group(3);


            }

            requestDispatcher.forward(request, response);


//        System.out.println("Serv:" + time + "-" + status + "-" + movieName);

            db_managerDAO.updateStatusMovie(status,timeS,timeE,day);
        } catch (Exception e) {
            e.printStackTrace();
        }


        System.out.println(timeS + " - " + timeE);
        System.out.println(day);
        System.out.println(status);
        System.out.println(movieName);









    }



}
