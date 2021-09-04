package DataBase_instance;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.logging.Logger;

public class UsersManager  {

    private static final String ADD_USER = "INSERT INTO user (NickName,Dateofbirth,Gender,Role,Password) values (?,?,?,?,?) ";
    private  Connection connection;
    private static UsersManager instance;
    public static final String FILANAME = "app.properties";
    private static Logger logger =  Logger.getGlobal();






    public static void main(String[] args) {
////
        UsersManager usersManager = new UsersManager();
        usersManager.userAdd("1","test2","test3","test4");

    }









    public void testConnection() throws SQLException, IOException, ClassNotFoundException {

        DB_Manager dbManager = new DB_Manager();
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
            e.printStackTrace();
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
            System.out.println("Created DB Connection....");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;

    }




    public static String getFILANAME() {
        System.out.println("file "+ FILANAME);
        return FILANAME;
    }








    public boolean userAdd (String name,String password,String birth,String gender){

        UsersManager usersManager = new UsersManager();
        Statement statement = null;
        System.out.println(" last  " +name + " " + password+ " " + birth+ " " +gender );

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(ADD_USER);


            preparedStatement.setString(1,name);
            preparedStatement.setString(2,birth);
            preparedStatement.setString(3,gender);
            preparedStatement.setInt(4,1);
            preparedStatement.setString(5,password);
            preparedStatement.executeUpdate();



            ResultSet resultSet = preparedStatement.executeQuery("SELECT NickName FROM user");

            while (resultSet.next()){

                System.out.println( resultSet.getString(1));
            }
            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }


    }

    public ArrayList findAllUsers(){


        UsersManager usersManager = new UsersManager();
        Statement statement = null;

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("SELECT NickName, Dateofbirth, Gender, Password, Role, idUser FROM user");

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery("SELECT NickName, Dateofbirth, Gender, Password, Role, idUser FROM user");

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
            e.printStackTrace();
            return null;
        }



    }












}