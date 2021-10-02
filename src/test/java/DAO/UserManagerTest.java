package DAO;

import DAO.UsersManager;
import org.junit.Assert;
import org.junit.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.fail;

public class UserManagerTest {


    private static final String USER_ROLE  = "1";
    private static final String ADMIN_ROLE = "2";

    @Test
    public void ListOfAllUsersNotZeroSize ()  {

        UsersManager userManager = new UsersManager();

        ArrayList listUser = new ArrayList();
        listUser = userManager.findAllUsers();

        if (listUser.size() == 0 ) {

            fail();
        }





    }

    @Test
    public void IfWriteCorrectNickNameShouldReturnNotZeroSize()  {

        UsersManager userManager = new UsersManager();

        String role = userManager.getUserRole("admin");

        if (role == null ) {

            fail();

        }






    }


    @Test
    public void IfWriteCorrectNickNameShouldReturnUserRole()  {

        UsersManager userManager = new UsersManager();

        String role = userManager.getUserRole("test");

        if (role.equals("2") ) {

            fail();

        }


        Assert.assertEquals(role, USER_ROLE);






    }


    @Test
    public void IfWriteCorrectNickNameShouldReturnAdminRole()  {

        UsersManager userManager = new UsersManager();

        String role = userManager.getUserRole("admin");

        if (role.equals("1") ) {

            fail();

        }

        Assert.assertEquals(role, ADMIN_ROLE);






    }


    @Test
    public void ShouldReturnTrueIfUserFindInDataBase()  {

        UsersManager userManager = new UsersManager();

        Assert.assertTrue( userManager.findUserInDb("test","test") );








    }

    @Test
    public void ShouldReturnFalseIfUserNotFindInDataBase()  {

        UsersManager userManager = new UsersManager();

        Assert.assertFalse( userManager.findUserInDb("false","false") );








    }



}
