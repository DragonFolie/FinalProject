package servlets;


import DAO.DB_ManagerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("role") == null ){

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("403.jsp");
            requestDispatcher.forward(req, resp);

        }

        if (req.getSession().getAttribute("role") == null ){

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("403.jsp");
            requestDispatcher.forward(req, resp);

        }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/admin_page.jsp");

        requestDispatcher.forward(req, resp);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession httpSession = request.getSession();






    }

}
