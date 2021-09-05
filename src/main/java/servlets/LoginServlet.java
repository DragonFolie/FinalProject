package servlets;

import entities.User;
import model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

public class LoginServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/login.jsp");
        requestDispatcher.forward(req, resp);





    }




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws  IOException {

        String name = req.getParameter("name_login");
        String password = req.getParameter("pass_login");



        System.out.println(name +" "+ password + " login user");

        if (Model.findInDb(name, password)){

            HttpSession httpSession = req.getSession();
            httpSession.setAttribute("name",name);


            System.out.println("find user with:" + name + "-" + password);
            resp.sendRedirect("index.jsp");



        }
        if (!Model.findInDb(name, password)){


            PrintWriter out=resp.getWriter();
            out.print("Dont find user");

            try {
                Thread.sleep(700);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            resp.setIntHeader("Refresh", 1);

        }



    }



}
