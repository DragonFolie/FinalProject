package servlets;



import entities.User;
import model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/add.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("pass");

        Model model2 = new Model();
        model2.addValues(name,password);
        System.out.println(password + " " + name );
        System.out.println(model2.getHashMap());

        User user = new User(name, password);
        Model model = Model.getInstance();
        model.add(user);

        req.setAttribute("userName", name);
        doGet(req, resp);
    }
}