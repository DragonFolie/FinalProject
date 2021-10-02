package servlets;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

public class AdminListMovieServlet extends HttpServlet {



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


                RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/AdminListMovie.jsp");
                requestDispatcher.forward(req, resp);

            }
        }catch (Exception e){
            logger.error(e);
        }





    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
