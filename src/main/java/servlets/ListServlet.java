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

public class ListServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Model model = Model.getInstance();
        List<String> names = model.list();
        req.setAttribute("userNames", names);




        
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/movies.jsp");
            requestDispatcher.forward(req, resp);






    }



}
