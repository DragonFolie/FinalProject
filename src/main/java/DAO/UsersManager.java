package DAO;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class UsersManager implements UserManagerDAO  {

    private static final String ADD_USER = "INSERT INTO user (NickName,Dateofbirth,Gender,Role,Password) values (?,?,?,?,?) ";
    private static final String FIND_ALL_USER = "SELECT NickName, Dateofbirth, Gender, Password, Role, idUser FROM user";
    private static final String FIND_BY_ROLE = "SELECT  Role FROM user WHERE NickName = ?";
    private static final String FIND_USER_IN_DB  = "SELECT  NickName, Password FROM user WHERE NickName = ? AND Password = ?";
    private static final String GET_NAME_OF_USER = "SELECT NickName FROM user";

    private  Connection connection;
    private static UsersManager instance;
    public static final String FILANAME = "app.properties";
    private static final Logger logger = Logger.getLogger(UsersManager.class.getSimpleName());






    public static void main(String[] args) {
//////
//        UsersManager usersManager = new UsersManager();
//        usersManager.userAdd("1","test2","test3","test4");
        try {
            logger.info("test");
        } catch (Exception e) {
            logger.error("ex" + e);
        }


    }









    public void testConnection() throws SQLException, IOException, ClassNotFoundException {

        DB_ManagerDAO dbManager = new DB_ManagerDAO();
        Statement statement = null;
        try (Connection conn = dbManager.getConnection(dbManager.getFILANAME())) {


            statement = conn.createStatement();

            statement.execute("SHOW tables ");

            ResultSet resultSet = statement.executeQuery("SHOW tables ");

            while (resultSet.next()){

                System.out.println( resultSet.getString(1));
            }


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.fatal("TEST CONNECTION FATAL  " + e);
        }

    }






    public static Connection getConnection(String connectionUrl) throws SQLException, ClassNotFoundException, IOException {

        Connection con = null;
        String url1 = "jdbc:mysql://localhost:3306/finaldb";
        String user = "root";
        String password = "12345";



        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url1, user, password);

            Statement stmt = con.createStatement();
//            System.out.println("Created DB Connection....");
        } catch (ClassNotFoundException | SQLException e) {
            logger.fatal("CANT CONNECTION TO DB   " + e);
        }
        return con;

    }




    public static String getFILANAME() {
//        System.out.println("File with jconnector: "+ FILANAME);
        return FILANAME;
    }







    @Override
    public boolean userAdd (String name,String password,String birth,String gender){

        UsersManager usersManager = new UsersManager();
        Statement statement = null;
        System.out.println(" last  " +name + " " + password+ " " + birth+ " " +gender );

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(ADD_USER);


            preparedStatement.setString(1,name);
            preparedStatement.setString(2,birth);
            preparedStatement.setString(3,gender);
            preparedStatement.setInt(4,1);
            preparedStatement.setString(5,password);
            preparedStatement.executeUpdate();



            ResultSet resultSet = preparedStatement.executeQuery(GET_NAME_OF_USER);

            logger.info("Add new user: " + name);

            while (resultSet.next()){

                System.out.println( resultSet.getString(1));
            }
            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant addUser" + e);
            return false;
        }


    }

    @Override
    public ArrayList findAllUsers(){


        UsersManager usersManager = new UsersManager();
        Statement statement = null;

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(FIND_ALL_USER);

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery(FIND_ALL_USER);

            while (resultSet.next()){
                StringBuilder sb = new StringBuilder();
                sb.append(resultSet.getString(1));
                sb.append(",");
                sb.append(resultSet.getString(2));
                sb.append(",");
                sb.append(resultSet.getString(3));
                sb.append(",");
                sb.append(resultSet.getString(4));
                sb.append(",");
                sb.append(resultSet.getString(5));
                sb.append(",");
                sb.append(resultSet.getString(6));
                list.add(sb);


            }
            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant findAllUsers " + e);
            return null;
        }



    }


    @Override
    public String getUserRole(String name){


        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(FIND_BY_ROLE);
            preparedStatement.setString(1,name);

            preparedStatement.execute();


            String result = null;
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){

                result = resultSet.getString(1);
            }


            System.out.println("Result: " +result );
            return   result;






        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant getUserRole " + e);
            return null;
        }



    }

    @Override
    public boolean findUserInDb(String name,String password){
        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("name and pass:" + name + "-" + password );

            preparedStatement = conn.prepareStatement(FIND_USER_IN_DB);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,password);

            preparedStatement.execute();


            String result = null;
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){

                String s = resultSet.getString(1);

                return s != null;


            }











        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant findUserInDb " + e);
            return false;
        }

        return false;

    }






}