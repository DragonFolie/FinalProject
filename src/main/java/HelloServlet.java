import java.io.*;
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




    public void doPost(HttpServletRequest request, HttpServletResponse response)throws  IOException {

        response.setContentType("text/html");


        try (PrintWriter writer = response.getWriter()) {
            String name = request.getParameter("username");
            String age = request.getParameter("user_age");
            String gender = request.getParameter("gender");
            String country = request.getParameter("country");
            String[] courses = request.getParameterValues("courses");
            writer.println("<p>Name: " + name + "</p>");
            System.out.println(name);
            writer.println("<p>Age: " + age + "</p>");
            writer.println("<p>Gender: " + gender + "</p>");
            writer.println("<p>Country: " + country + "</p>");
            writer.println("<h4>Courses</h4>");
            for (String course : courses)
                writer.println("<li>" + course + "</li>");
        }


    }

    public void destroy() {

        System.out.println("Destroy");
    }
}