package DAO;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;



/**
 *
 * This class make  redirect to class and method where are located
 * @author DragonFolie
 *
 *
 * The actions in the method match their name
 *
 **/


public class DB_ManagerDAO implements InterfaceController {



    private  Connection connection;
    private static DB_ManagerDAO instance;
    public static final String FILANAME = "app.properties";
    private static Logger logger =  Logger.getLogger(DB_ManagerDAO.class.getName());







    public static Connection getConnection(String connectionUrl) throws SQLException, ClassNotFoundException, IOException { //NOSONAR

        Properties props = new Properties();
        try(InputStream in = Files.newInputStream(Paths.get(connectionUrl))){
            props.load(in);
        }
        String url = props.getProperty("connection.url");
        return DriverManager.getConnection(url) ;

    }



    public static synchronized DB_ManagerDAO getInstance() {
        if (instance == null) {
            instance = new DB_ManagerDAO();
        }
        return instance;
    }

    public static String getFILANAME() {
        System.out.println("file "+ FILANAME);
        return FILANAME;
    }





    @Override
    public boolean userAdd(String name,String password,String birth,String gender){
        UsersManager usersManager = new UsersManager();
//        System.out.println(" 2  " +name + " " + password+ " " + birth+ " " +gender );

        try {
            usersManager.userAdd(name,password, birth, gender);
            return true;
        } catch (Exception e) {
            logger.error("Cant addUser " + e);
            return false;
        }

    }





    @Override
    public ArrayList findAllUsers(){

        UsersManager usersManager = new UsersManager();

        return usersManager.findAllUsers();


    }


    @Override
    public ArrayList findNicknameAndRole(){

        Admin admin = new Admin();

        return admin.findNicknameAndRole();


    }

    @Override
    public boolean updateRole(String nick,String role){

        Admin admin = new Admin();
        return admin.updateRole(nick,role);



    }

    @Override
    public ArrayList findAllMovieSession() {
        Admin admin = new Admin();

        return admin.findAllMovieSession();
    }



    @Override
    public ArrayList findAllMovieName() {
        Admin admin = new Admin();

        return admin.findAllMovieName();
    }


    public ArrayList findAllMovieUkrName() {
        Admin admin = new Admin();

        return admin.findAllMovieUkrName();
    }






    @Override
    public boolean  updateStatusForMovie(String nameOfMovie,String setStatus){
        Admin admin = new Admin();

        return admin.updateStatusForMovie(nameOfMovie,setStatus);


    }




    @Override
    public boolean addSession(String ticketCost,String countSeat,String posterURL,
                              String date,String timeStart,String timeEnd,String status,String FolderURL){

        Admin admin = new Admin();
        return admin.addSession(ticketCost,countSeat,posterURL,date,timeStart,timeEnd,status,FolderURL);

    }





    @Override
    public boolean addEngtypeOfMovie(String nameEng,String descriptionEng){

        Admin admin = new Admin();
        return admin.addEngTypeOfMovie(nameEng,descriptionEng);

    }
    @Override
    public boolean  addMovie(String nameUkr,String descriptionUkr,String actor,String director){


        Admin admin = new Admin();
        return admin.addMovie(nameUkr,descriptionUkr,actor,director);


    }


    public String getFolderURL(String movieName) {
        Admin admin = new Admin();

        return admin.getFolderURL(movieName);
    }

    public String getPosterURL(String movieName) {
        Admin admin = new Admin();

        return admin.getPosterURL(movieName);
    }


    public ArrayList findAllMovieSessionByName(String movieName){

        Admin admin = new Admin();

        return admin.findAllMovieSessionByName(movieName);

    }

    public ArrayList findAllMovieSessionByNameWithID(String movieName){

        Admin admin = new Admin();

        return admin.findAllMovieSessionByNameWithID(movieName);

    }


    public ArrayList getInfoAboutSessionAndMovies(int countElement , int fromNumber){

        Admin admin = new Admin();

        return admin.getInfoAboutSessionAndMovies( countElement ,  fromNumber);



    }


    public String findAllMovieSessionByNameString(String movieName){

        Admin admin = new Admin();

        return admin.findAllMovieSessionByNameString(movieName);

    }

    public ArrayList findAllUniqueMovieName() {
        Admin admin = new Admin();

        return admin.findAllUniqueMovieName();
    }

    public String getDescriptionMovie(String movieName){

        Admin admin = new Admin();

        return admin.getDescriptionMovie(movieName);

    }


    public int  getCountSeatOfSession(String day, String timeStart){

        Admin admin = new Admin();

        return admin.getCountSeatOfSession(day,timeStart);

    }


    public int maxIdSession(){

        Admin admin = new Admin();

        return admin.maxIdSession();

    }

    public boolean addOrderToUser(String nickName ,String movieName,String day,String numberOfSeat,String timeS,String timeE){
        Admin admin = new Admin();

        return admin.addOrderToUser(nickName,movieName,day,numberOfSeat,timeS,timeE);
    }

    public ArrayList  getUniqueSeatBySession(String day, String timeStart){
        Admin admin = new Admin();
        return admin.getUniqueSeatBySession(day,timeStart);
    }


    public String getRoleByName(String name){

        Admin admin = new Admin();
        return admin.getRoleByName(name);
    }

    public int  getCountOfSeatsByDate(String day, String timeStart){
        Admin admin = new Admin();
        return admin.getCountOfSeatsByDate(day,timeStart);

    }

    public boolean updateStatusMovie(String newStatus,String timeStart, String timeEnd, String sessionDay){

        Admin admin = new Admin();
        return admin.updateStatusMovie(newStatus,timeStart,timeEnd,sessionDay);

    }


    public String getEngDescriptionOfMovieByUkrDescription(String descriptionUkr){

        Admin admin = new Admin();
        return admin.getEngDescriptionOfMovieByUkrDescription(descriptionUkr);

    }


    public int getIdUserByNickName(String nickNameUser){

        Admin admin = new Admin();
        return admin.getIdUserByNickName(nickNameUser);


    }

    public ArrayList getAllUserOrder(int idUser){

        Admin admin = new Admin();
        return admin.getAllUserOrder(idUser);

    }














    public boolean testConnection() throws SQLException, IOException, ClassNotFoundException {

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
            e.printStackTrace();
            return false;
        }

        return true;

    }






}
