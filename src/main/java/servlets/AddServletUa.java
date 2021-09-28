package servlets;



import DAO.DB_ManagerDAO;
import DAO.UserManagerDAO;
import entities.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

public class AddServletUa extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("ua/registration.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("pass");
        String gender = req.getParameter("gender");
        Logger logger =  Logger.getLogger(UserManagerDAO.class.getName());

        System.out.println(password + " " + name );

        User user = new User(name, password);
        DB_ManagerDAO dbManager = new DB_ManagerDAO();

        dbManager.userAdd(name,password,"20.20.2015",gender);


        req.setAttribute("userName", name);
        doGet(req, resp);

    }
}