package DAO;

import java.util.ArrayList;

public interface UserManagerDAO {

    boolean userAdd (String name,String password,String birth,String gender);
    ArrayList findAllUsers();
    String getUserRole(String name);
    boolean findUserInDb(String name,String password);


}
