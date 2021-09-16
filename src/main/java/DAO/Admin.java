package DAO;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class Admin implements  AdminDAO{


    private static final String FIND_NICKNAME_AND_ROLE = "SELECT NickName,Role FROM user";
    private static final String  UPDATE_ROLE = "UPDATE user SET Role = ? WHERE NickName = ?";

    private static final String OUTPUT_TIME_AND_STATUS_ABOUT_MOVIE = "SELECT  TimeStart,TimeEnd,SessionDate,Status FROM session";

    private static final String GET_MOVIE_NAME = "SELECT  Name FROM filmdetail";
    private static final String ADD_NEW_SESSION = "INSERT INTO session (PosterUrl, CountSeat, SessionDate, TimeStart, TimeEnd, Cost,Status) VALUES (?,?,?,?,?,?,'Open');";
    private static final String ADD_NEW_MOVIE  =  "INSERT INTO filmdetail (Name, Description, Actor, Director,session_idMovie )VALUES (?,?,?,?,( SELECT MAX(idMovie) FROM session ));\n";
    private static final String ADD_ENGLISH_VERSION_OF_MOVIE = "INSERT INTO language (Name,Description,filmDetail_idfilmDetail) values (?,?,( SELECT MAX(idMovie) FROM session ));";
    private static final String GET_ID_BY_NAME_OF_MOVIE  = "SELECT idfilmDetail FROM filmdetail WHERE  Name = ? ";
    private static final String UPDATE_STATUS_OF_MOVIE = "UPDATE session SET Status = ? WHERE idMovie = ?";


    private  Connection connection;
    private static UsersManager instance;
    public static final String FILANAME = "app.properties";
    private static Logger logger =  Logger.getLogger(Admin.class.getName());




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
            logger.fatal("Cant connect to DB by DB connector" + e);
        }
        return con;

    }

    public static String getFILANAME() {
//        System.out.println("File with jconnector: "+ FILANAME);
        return FILANAME;
    }







    @Override
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
            logger.error("Cant updateRole " + e);
            return false;
        }


    }



    @Override
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
            logger.error("Cant findNicknameAndRole " + e);
            return null;
        }


    }


    @Override
    public ArrayList findAllMovieSession(){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(OUTPUT_TIME_AND_STATUS_ABOUT_MOVIE);

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                StringBuilder sb = new StringBuilder();

                sb.append(resultSet.getString(1));
                sb.append(",");
                sb.append(resultSet.getString(2));
                sb.append(",");
                sb.append(resultSet.getString(3));
                sb.append(",");
                sb.append(resultSet.getString(4));

                list.add(sb);
//                System.out.println(sb.toString() + "-first");


            }
            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant findAllMovieSession " + e);
            return null;
        }


    }

    @Override
    public ArrayList findAllMovieName(){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(GET_MOVIE_NAME);

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
            logger.error("Cant findAllMovieName " + e);
            return null;
        }


    }




    @Override
    public boolean addSession(String ticketCost,String  countSeat,String posterURL,
                              String date,String timeStart,String timeEnd){

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(ADD_NEW_SESSION);
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
            logger.error("Cant addSession " + e);
            return false;
        }


    }


    @Override
    public boolean addEngTypeOfMovie(String nameEng,String descriptionEng){

        UsersManager usersManager = new UsersManager();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(ADD_ENGLISH_VERSION_OF_MOVIE);

            preparedStatement.setString(1,nameEng);
            preparedStatement.setString(2,descriptionEng);

            preparedStatement.execute();



            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant addEngTypeOfMovie " + e);
            return false;
        }


    }


    @Override
    public boolean  addMovie(String nameUkr,String descriptionUkr,String actor,String director){

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement(ADD_NEW_MOVIE);
            preparedStatement.setString(1,nameUkr);
            preparedStatement.setString(2,descriptionUkr);
            preparedStatement.setString(3,actor);
            preparedStatement.setString(4,director);

            preparedStatement.execute();




            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant addMovie " + e);
            return false;
        }



    }


    @Override
    public boolean  updateStatusForMovie(String nameOfMovie,String setStatus){


        UsersManager usersManager = new UsersManager();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);
            preparedStatement = conn.prepareStatement(GET_ID_BY_NAME_OF_MOVIE);
            preparedStatement.setString(1,nameOfMovie);
            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();
                StringBuilder sb = new StringBuilder();
                int id = resultSet.getInt(1);



            preparedStatement = conn.prepareStatement(UPDATE_STATUS_OF_MOVIE);
            System.out.println(" Status : " + setStatus);
            System.out.println(" id : " + id);
            preparedStatement.setString(1,setStatus);
            preparedStatement.setInt(2, id);

            preparedStatement.execute();




            return true;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant updateStatusForMovie " + e);
            return false;
        }


    }
















}
