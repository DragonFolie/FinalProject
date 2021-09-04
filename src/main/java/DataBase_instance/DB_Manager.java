package DataBase_instance;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Logger;

public class DB_Manager {



    private  Connection connection;
    private static DB_Manager instance;
    public static final String FILANAME = "app.properties";
    private static Logger logger =  Logger.getGlobal();




    public static void main(String[] args) throws SQLException, IOException, ClassNotFoundException {
//
        DB_Manager dbManager = new DB_Manager();
        dbManager.testConnection();




    }



    public static Connection getConnection(String connectionUrl) throws SQLException, ClassNotFoundException, IOException { //NOSONAR

        Properties props = new Properties();
        try(InputStream in = Files.newInputStream(Paths.get(connectionUrl))){
            props.load(in);
        }
        String url = props.getProperty("connection.url");
        return DriverManager.getConnection(url) ;

    }



    public static synchronized DB_Manager getInstance() {
        if (instance == null) {
            instance = new DB_Manager();
        }
        return instance;
    }

    public static String getFILANAME() {
        System.out.println("file "+ FILANAME);
        return FILANAME;
    }






    public boolean userAdd(String name,String password,String birth,String gender){
        UsersManager usersManager = new UsersManager();
//        System.out.println(" 2  " +name + " " + password+ " " + birth+ " " +gender );

        try {
            usersManager.userAdd(name,password, birth, gender);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    public ArrayList findAllUsers(){

        UsersManager usersManager = new UsersManager();

        return usersManager.findAllUsers();


    }





    public boolean testConnection() throws SQLException, IOException, ClassNotFoundException {

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
            return false;
        }

        return true;

    }






}
