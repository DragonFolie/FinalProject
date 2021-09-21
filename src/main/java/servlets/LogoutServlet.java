package servlets;

import DAO.UserManagerDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

public class LogoutServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        Logger logger =  Logger.getLogger(LogoutServlet.class.getName());
        String name = request.getParameter("name");
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();



        HttpSession session=request.getSession();
        session.invalidate();

        out.print("You are successfully logged out!");
        logger.info("Successfully logged out user: " + name);

        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        response.setIntHeader("Refresh", 1);

        request.getRequestDispatcher("/").include(request, response);
        out.close();
    }


}
