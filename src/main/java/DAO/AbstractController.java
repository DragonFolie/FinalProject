package DAO;

import java.util.ArrayList;

interface   InterfaceController {

      boolean userAdd(String name,String password,String birth,String gender);
      ArrayList findAllUsers();
      ArrayList findNicknameAndRole();
      boolean updateRole(String nick,String role);
}
