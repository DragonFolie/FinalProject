package servlets;

import DAO.Admin;
import DAO.DB_ManagerDAO;
import DAO.UserManagerDAO;
import model.Model;
import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;

public class LoginServletUa  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        RequestDispatcher requestDispatcher = req.getRequestDispatcher("ua/loginUa.jsp");
        requestDispatcher.forward(req, resp);



    }




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
          Logger logger =  Logger.getLogger(LogoutServlet.class.getName());


        String name = req.getParameter("name_login");
        String password = req.getParameter("pass_login");
        String language = req.getParameter("language");

        DB_ManagerDAO db_managerDAO=  new DB_ManagerDAO();

        String role = db_managerDAO.getRoleByName(name);


//
//        System.out.println(name +" "+ password + " login user");

        System.out.println(role);



        if (Model.findInDb(name, password)){

            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("name",name);
            httpSession.setAttribute("language",language);
            httpSession.setAttribute("role",role);


//            System.out.println("find user with:" + name + "-" + password);


            logger.info("Logging user: " + name  + "   Role: " +  role+ "   Language: " +  language);
//            resp.sendRedirect("index.jsp");


            resp.setIntHeader("Refresh", 1);

                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/index");
                requestDispatcher.forward(req, resp);






        }
        if (!Model.findInDb(name, password)){


            PrintWriter out=resp.getWriter();
            out.print("Dont find user");

            try {
                Thread.sleep(700);
            } catch (InterruptedException e) {
                logger.error("Exception here " + e);
            }
            resp.setIntHeader("Refresh", 1);

        }



    }



}
