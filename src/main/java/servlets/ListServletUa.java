package servlets;

import model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

public class ListServletUa  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        Model model = Model.getInstance();
        List<String> names = model.list();
        req.setAttribute("userNames", names);


        HttpSession httpSession = req.getSession();
        String language = (String)httpSession.getAttribute("username");




        RequestDispatcher requestDispatcher = req.getRequestDispatcher("ua/moviesUa.jsp");
        requestDispatcher.forward(req, resp);




    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



    }
}
