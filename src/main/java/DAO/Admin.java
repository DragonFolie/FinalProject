package DAO;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Logger;

public class Admin {


    private static final String FIND_NICKNAME_AND_ROLE = "SELECT NickName,Role FROM user";
    private static final String  UPDATE_ROLE = "UPDATE user SET Role = ? WHERE NickName = ?";


    private  Connection connection;
    private static UsersManager instance;
    public static final String FILANAME = "app.properties";
    private static Logger logger =  Logger.getGlobal();




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
            e.printStackTrace();
        }
        return con;

    }


    public static String getFILANAME() {
//        System.out.println("File with jconnector: "+ FILANAME);
        return FILANAME;
    }







    public boolean updateRole(String nick,String role){


        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {


            preparedStatement = conn.prepareStatement(UPDATE_ROLE);
//"UPDATE user SET Role = ? WHERE NickName = ?"
            preparedStatement.setString(1,role);
            preparedStatement.setString(2,nick);
            preparedStatement.execute();


            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }


    }




    public ArrayList findNicknameAndRole(){


        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(FIND_NICKNAME_AND_ROLE);

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StringBuilder sb = new StringBuilder();
                sb.append(resultSet.getString(1));
                sb.append(",");
                sb.append(resultSet.getString(2));
                list.add(sb);


            }
            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return null;
        }


    }



    public ArrayList findAllMovieSession(){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("SELECT  TimeStart, TimeEnd,Status FROM session");

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StringBuilder sb = new StringBuilder();
                sb.append(resultSet.getString(1));
                sb.append(",");
                sb.append(resultSet.getString(2));
                sb.append(",");
                sb.append(resultSet.getString(3));
                list.add(sb);


            }
            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return null;
        }


    }


    public ArrayList findAllMovieName(){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("SELECT  Name FROM filmdetail");

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StringBuilder sb = new StringBuilder();
                sb.append(resultSet.getString(1));
                list.add(sb);


            }
            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return null;
        }


    }





    public boolean addSession(String ticketCost,String  countSeat,String posterURL,
                              String date,String timeStart,String timeEnd){

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(
                    "INSERT INTO session (PosterUrl, CountSeat, SessionDate, TimeStart, TimeEnd, Cost,Status) " +
                            "VALUES (?,?,?,?,?,?,'Open');\n");
            preparedStatement.setString(1,posterURL);
            preparedStatement.setString(2,countSeat);
            preparedStatement.setString(3,date);
            preparedStatement.setString(4,timeStart);
            preparedStatement.setString(5,timeEnd);

            preparedStatement.setString(6,ticketCost);

            preparedStatement.execute();



            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }


    }

    public boolean addEngTypeOfMovie(String nameEng,String descriptionEng){

        UsersManager usersManager = new UsersManager();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("INSERT INTO language (Name,Description,filmDetail_idfilmDetail) values (?,?,( SELECT MAX(idMovie) FROM session ));");

            preparedStatement.setString(1,nameEng);
            preparedStatement.setString(2,descriptionEng);

            preparedStatement.execute();



            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }


    }

    public boolean  addMovie(String nameUkr,String descriptionUkr,String actor,String director){

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("INSERT INTO filmdetail (Name, Description, Actor, Director,session_idMovie )" +
                    "VALUES (?,?,?,?,( SELECT MAX(idMovie) FROM session ));\n");
            preparedStatement.setString(1,nameUkr);
            preparedStatement.setString(2,descriptionUkr);
            preparedStatement.setString(3,actor);
            preparedStatement.setString(4,director);

            preparedStatement.execute();




            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }



    }

    public boolean  updateStatusForMovie(String nameOfMovie,String setStatus){


        UsersManager usersManager = new UsersManager();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);
            preparedStatement = conn.prepareStatement("SELECT idfilmDetail FROM filmdetail WHERE  Name = ? ");
            preparedStatement.setString(1,nameOfMovie);
            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();
                StringBuilder sb = new StringBuilder();
                int id = resultSet.getInt(1);



            preparedStatement = conn.prepareStatement("UPDATE session SET Status = ? WHERE idMovie = ?");
            System.out.println(" Status : " + setStatus);
            System.out.println(" id : " + id);
            preparedStatement.setString(1,setStatus);
            preparedStatement.setInt(2, id);

            preparedStatement.execute();




            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            e.printStackTrace();
            return false;
        }


    }
















}
