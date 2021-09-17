package servlets;


import DAO.DB_ManagerDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/admin_page.jsp");

        requestDispatcher.forward(req, resp);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {

        DB_ManagerDAO dbManager = new DB_ManagerDAO();

        //  Change Role

        String role  =  request.getParameter("changeRole");
        String nick  =  request.getParameter("userNickName");

        //  Change Movie Status

        String nameOfMovie = request.getParameter("filmName");
        String setStatus = request.getParameter("changeStatus");





        // Add new Session

        String ticketCost = request.getParameter("ticketCost");
        String countSeat = request.getParameter("countOfSeat");
        String posterURL = request.getParameter("posterUrl");
        String date = request.getParameter("sessionDate");
        String timeStart = request.getParameter("timeStart");
        String timeEnd = request.getParameter("timeEnd");





        if (nameOfMovie != null && setStatus != null ){

            dbManager.updateStatusForMovie(nameOfMovie,setStatus);

            response.setIntHeader("Refresh", 1);

        }









//        if (role == null && nick == null){
//
//            //Throw on Error page with empty field
//        }

        if (role != null && nick != null){

            dbManager.updateRole(nick,role);
            response.setIntHeader("Refresh", 1);

        }





    }

}
