package DAO;

import java.util.ArrayList;

public interface AdminDAO {
    boolean updateRole(String nick,String role);
    ArrayList findNicknameAndRole();
    ArrayList findAllMovieSession();
    ArrayList findAllMovieName();
     boolean addSession(String ticketCost,String countSeat,String posterURL,String date,String timeStart,String timeEnd,String status,String FolderURL);

        boolean addEngTypeOfMovie(String nameEng,String descriptionEng);
    boolean  addMovie(String nameUkr,String descriptionUkr,String actor,String director);
    boolean  updateStatusForMovie(String nameOfMovie,String setStatus);
}
