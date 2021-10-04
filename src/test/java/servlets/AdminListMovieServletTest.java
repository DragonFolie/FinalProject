package servlets;

import org.junit.Test;
import org.mockito.Mockito;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

public class AdminListMovieServletTest {


    private static final String PATH = "/adminlist";


    @Test(expected = NullPointerException.class)
    public void doGet() throws ServletException, IOException {


//        HttpServletRequest requestMock = Mockito.mock(HttpServletRequest.class);
//        HttpSession sessionMock = Mockito.mock(HttpServletRequest.class);


            final  AdminListMovieServlet addServlet = new AdminListMovieServlet();

            final HttpServletRequest request = mock(HttpServletRequest.class);
            final HttpServletResponse response = mock(HttpServletResponse.class);
            final RequestDispatcher dispatcher = mock(RequestDispatcher.class);
            final HttpSession httpSession = mock(HttpSession.class);

            when(request.getRequestDispatcher(PATH)).thenReturn(dispatcher);

            addServlet.doGet(request,response);

            when(request.getSession()).thenReturn(httpSession);
            verify(dispatcher).forward(request,response);
            verify(request,times(1)).getRequestDispatcher(PATH);
            verify(request, never()).getSession();


    }
}