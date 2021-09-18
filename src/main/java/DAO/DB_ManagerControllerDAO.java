package DAO;

import java.util.ArrayList;

interface   InterfaceController {

      boolean userAdd(String name,String password,String birth,String gender);
      ArrayList findAllUsers();
      ArrayList findNicknameAndRole();
      boolean updateRole(String nick,String role);
      ArrayList findAllMovieSession();
      ArrayList findAllMovieName();
      boolean  updateStatusForMovie(String nameOfMovie,String setStatus);
      boolean addSession(String ticketCost,String countSeat,String posterURL,String date,String timeStart,String timeEnd,String status,String FolderURL);
      boolean addEngtypeOfMovie(String nameEng,String descriptionEng);
      boolean  addMovie(String nameUkr,String descriptionUkr,String actor,String director);
}
