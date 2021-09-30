package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckAuthentication {


    protected void check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println(request.getSession().getAttribute("role"));



        if (!request.getSession().getAttribute("role").equals( "2")){

            request.setAttribute("Error 403","Do not access here"  );

            request.getRequestDispatcher("403.jsp").forward(request,response);

        }




    }
}
