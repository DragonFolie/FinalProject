package servlets;

import org.junit.Test;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class LogoutServletTest {

    private static final String PATH = "/";

    @Test
    public void doGet() throws ServletException, IOException {

        final  LogoutServlet logoutServlet = new LogoutServlet();

        final HttpServletRequest request = mock(HttpServletRequest.class);
        final HttpServletResponse response = mock(HttpServletResponse.class);
        final RequestDispatcher dispatcher = mock(RequestDispatcher.class);

        when(request.getRequestDispatcher(PATH)).thenReturn(dispatcher);

        logoutServlet.doGet(request,response);

        verify(dispatcher).forward(request,response);
        verify(request,times(1)).getRequestDispatcher(PATH);
        verify(request, never()).getSession();

    }
}