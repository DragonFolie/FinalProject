package servlets;

import DAO.UserManagerDAO;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class LogoutServletUa extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {





            RequestDispatcher requestDispatcher = request.getRequestDispatcher("ua/index.jsp");
            requestDispatcher.forward(request, response);


    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Logger logger =  Logger.getLogger(LogoutServlet.class.getName());

        HttpSession session = req.getSession();

        String name = (String)session.getAttribute("name");
        String role = (String)session.getAttribute("role");
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();




        session.invalidate();

        logger.info("Successfully logged out user: " + name + "   Role : " +  role);



    }


}
