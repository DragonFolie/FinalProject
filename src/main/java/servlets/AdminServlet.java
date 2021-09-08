package servlets;


import DAO.DB_ManagerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/adminPage.jsp");

        requestDispatcher.forward(req, resp);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String role  =  request.getParameter("changeRole");
        String nick  =  request.getParameter("userNickName");

        DB_ManagerDAO dbManager = new DB_ManagerDAO();
        dbManager.updateRole(nick,role);
        response.setIntHeader("Refresh", 1);



    }
    @Override
    public void init() throws ServletException {
        System.out.println("Hello");
    }
}
