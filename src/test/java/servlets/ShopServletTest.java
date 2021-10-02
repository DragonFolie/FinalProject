package servlets;

import org.junit.Test;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class ShopServletTest {

    private static final String PATH = "views/shop-right-sidebar.jsp";

    @Test
    public void doGet() throws ServletException, IOException {

        final  ShopServlet shopServlet = new ShopServlet();

        final HttpServletRequest request = mock(HttpServletRequest.class);
        final HttpServletResponse response = mock(HttpServletResponse.class);
        final RequestDispatcher dispatcher = mock(RequestDispatcher.class);

        when(request.getRequestDispatcher(PATH)).thenReturn(dispatcher);

        shopServlet.doGet(request,response);

        verify(dispatcher).forward(request,response);
        verify(request,times(1)).getRequestDispatcher(PATH);
        verify(request, never()).getSession();

    }

}