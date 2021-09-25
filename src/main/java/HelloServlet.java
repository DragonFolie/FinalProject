import java.io.*;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/hello")

public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
        System.out.println("Init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(req, resp);

        String language =  req.getParameter("language");

        System.out.println("in2");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws  IOException {

        response.setContentType("text/html");

        System.out.println("in");


    }

    public void destroy() {

        System.out.println("Destroy");
    }
}