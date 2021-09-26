package Filter;

import DAO.DB_ManagerDAO;
import model.Model;
import org.apache.log4j.Logger;
import servlets.LogoutServlet;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Filter implements javax.servlet.Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        servletRequest.setCharacterEncoding("UTF-8");


        filterChain.doFilter(servletRequest,servletResponse);





    }

    @Override
    public void destroy() {

    }
}

