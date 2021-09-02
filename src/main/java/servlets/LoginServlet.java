package servlets;

import entities.User;
import model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
//        HttpSession session = req.getSession();

//        System.out.println(password +  " "+ name);
        // get response writer
        PrintWriter writer = resp.getWriter();


//        // build HTML code
//        String htmlRespone = "<html>";
//        htmlRespone += "<h2>Your username is: " + name + "<br/>";
//        htmlRespone += "Your password is: " + password + "</h2>";
//        htmlRespone += "</html>";
//
//        // return response
//        writer.println(htmlRespone);



//        model.addValues(name,password);

        System.out.println((Model.getHashMap()).toString() + " hash");

        if (Model.find_in_hashMap(name, password)){

            resp.sendRedirect("index.html");


        }
        if (!Model.find_in_hashMap(name, password)){

            resp.sendRedirect("views/login.jsp");


        }



    }



}
