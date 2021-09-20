package DAO;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Admin implements  AdminDAO{


    private static final String FIND_NICKNAME_AND_ROLE = "SELECT NickName,Role FROM user";
    private static final String  UPDATE_ROLE = "UPDATE user SET Role = ? WHERE NickName = ?";

    private static final String OUTPUT_TIME_AND_STATUS_ABOUT_MOVIE = "SELECT  TimeStart,TimeEnd,SessionDay,Status FROM session";

    private static final String GET_MOVIE_NAME = "SELECT  Name FROM language";
    private static final String ADD_NEW_SESSION = "INSERT INTO session (PosterUrl, CountSeat, SessionDay, TimeStart, TimeEnd, Cost,Status) VALUES (?,?,?,?,?,?,?);";
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
//            logger.error("Cant findAllMovieName " + e);

            e.printStackTrace();
            return null;
        }


    }


    public ArrayList findAllUniqueMovieName(){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);
            preparedStatement = conn.prepareStatement(GET_MOVIE_NAME);
            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){


                list.add(resultSet.getString(1));


            }





            Set arrayList2 = new HashSet(list);

            ArrayList newArray = new ArrayList(arrayList2);

            return newArray;


        }catch (IOException | SQLException | ClassNotFoundException e) {

            e.printStackTrace();
            return null;
        }


    }




    @Override
    public boolean addSession(String ticketCost,String  countSeat,String posterURL,
                              String date,String timeStart,String timeEnd,String status,String FolderURL){

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("INSERT INTO session (PosterUrl, CountSeat, SessionDay, TimeStart, TimeEnd, Cost,Status,FolderURL) VALUES (?,?,?,?,?,?,?,?)");

            preparedStatement.setString(1,posterURL);
            preparedStatement.setString(2,countSeat);
            preparedStatement.setString(3,date);
            preparedStatement.setString(4,timeStart);
            preparedStatement.setString(5,timeEnd);

            preparedStatement.setString(6,ticketCost);
            preparedStatement.setString(7,status);
            preparedStatement.setString(8,FolderURL);

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

//            preparedStatement = conn.prepareStatement(ADD_NEW_MOVIE);
            preparedStatement= conn.prepareStatement("INSERT INTO filmdetail (Name, Description, Actor, Director,session_idMovie )VALUES (?,?,?,?,( SELECT MAX(idMovie) FROM session ))");
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



    public String getFolderURL(String movieName) {

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("Select filmDetail_idfilmDetail FROM language WHERE Name = '"+ movieName+"'");

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

             resultSet.next();

            String idMovie =  resultSet.getString(1);


            preparedStatement = conn.prepareStatement("Select FolderURL FROM session WHERE idMovie = "+idMovie+";");


             resultSet = preparedStatement.executeQuery();

            resultSet.next();

            return resultSet.getString(1);







        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant find FolderURL " + e);
            return null;
        }

    }

    public String getPosterURL(String movieName) {

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("Select filmDetail_idfilmDetail FROM language WHERE Name = '"+ movieName+"'");

            preparedStatement.execute();



            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();

            String idMovie =  resultSet.getString(1);


            preparedStatement = conn.prepareStatement("Select PosterUrl FROM session WHERE idMovie = "+idMovie+";");


            resultSet = preparedStatement.executeQuery();

            resultSet.next();

            return resultSet.getString(1);







        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant find PosterURL " + e);
            return null;
        }

    }







    public String  addNewSessionForMovie(String movieName){
        System.out.println("name= " + movieName);


        UsersManager usersManager = new UsersManager();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int result = 0;
        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);

            preparedStatement = conn.prepareStatement("Select filmDetail_idfilmDetail FROM language WHERE Name = '"+ movieName+"';");




            ResultSet resultSet = preparedStatement.executeQuery();
         while(   resultSet.next()) {

              result = resultSet.getInt(1);

         }

            preparedStatement = conn.prepareStatement("SELECt  Name, Description  From language where idLanguage = "+result+" ;");

            resultSet = preparedStatement.executeQuery();

         while(   resultSet.next()) {
             sb.append(resultSet.getString(1))
                     .append("-")
                     .append(resultSet.getString(2))
                     .append(";");

         }


            preparedStatement = conn.prepareStatement("SELECt Name , Description ,Actor  ,Director   From filmdetail where idfilmDetail = "+result+";");

            resultSet = preparedStatement.executeQuery();

         while(   resultSet.next()) {
             sb.append(resultSet.getString(1))
                     .append("-")
                     .append(resultSet.getString(2))
                     .append("-")
                     .append(resultSet.getString(3))
                     .append("-")
                     .append(resultSet.getString(4))
                     .append(";");
         }




            preparedStatement = conn.prepareStatement("SELECt  PosterUrl, CountSeat,  Cost  From session where idMovie = "+result+";");

            resultSet = preparedStatement.executeQuery();


         while(   resultSet.next()) {
             sb.append(resultSet.getString(1))
                     .append("-")
                     .append(resultSet.getString(2))
                     .append("-")
                     .append(resultSet.getString(3))
                     .append(";");
         }



            return sb.toString();






        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant add New Session For Movie " + e);
            return "not found";
        }


    }




    public ArrayList findAllMovieSessionByName(String movieName){

        UsersManager usersManager = new UsersManager();

        ArrayList list = new ArrayList();
        ArrayList<Integer> listId = new ArrayList();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

// private static final String GET_ID_BY_NAME_OF_MOVIE  = "";

//    private static final String OUTPUT_TIME_AND_STATUS_ABOUT_MOVIE = "SELECT  TimeStart,TimeEnd,SessionDay,Status FROM session";



//            System.out.println("Movie: " +movieName);
            preparedStatement = conn.prepareStatement("SELECT idLanguage FROM language WHERE  Name = ? ");

            preparedStatement.setString(1,movieName);


            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){

//                System.out.println("While");
                listId.add( resultSet.getInt(1));
//                System.out.println("Result1 = "+resultSet.getInt(1));



            }


//            System.out.println("Size: " +listId.size() );

            for (int i = 0; i <listId.size() ; i++) {

                preparedStatement = conn.prepareStatement("SELECT  TimeStart,TimeEnd,SessionDay,Status FROM session Where idMovie = ?");
                int number = listId.get(i);

//                System.out.println("Number: " +number );
                preparedStatement.setInt(1, number );

                preparedStatement.execute();

                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()){

                    StringBuilder sb = new StringBuilder();

                    sb.append(resultSet.getString(1));
                    sb.append(",");
                    sb.append(resultSet.getString(2));
                    sb.append(",");
                    sb.append(resultSet.getString(3));
                    sb.append(",");
                    sb.append(resultSet.getString(4));

//                    System.out.println("SB: " +sb.toString() );
                    list.add(sb);

                }




            }

//            System.out.println("Final list=" + list);

            return list;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant findAllMovieSession " + e);
            return null;
        }


    }

    public String findAllMovieSessionByNameString (String movieName) {

        UsersManager usersManager = new UsersManager();


        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

            preparedStatement = conn.prepareStatement("SELECT idLanguage FROM language WHERE  Name = ? ");

            preparedStatement.setString(1, movieName);
            preparedStatement.execute();


            ResultSet resultSet = preparedStatement.executeQuery();

           resultSet.next();

           int result = resultSet.getInt(1);








            preparedStatement = conn.prepareStatement("SELECT  TimeStart,TimeEnd,SessionDay,Status FROM session Where idMovie = ?");


            preparedStatement.setInt(1,result);

            preparedStatement.execute();

            resultSet = preparedStatement.executeQuery();

            resultSet.next();

                StringBuilder sb = new StringBuilder();

                sb.append(resultSet.getString(1));
                sb.append(",");
                sb.append(resultSet.getString(2));
                sb.append(",");
                sb.append(resultSet.getString(3));
                sb.append(",");
                sb.append(resultSet.getString(4));





                String string = sb.toString();
            return string;


        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
            logger.error("Cant findAllMovieSession " + e);
            return null;
        }


    }



    public int  getCountOfSeatsByDate(String day, String timeStart){


        UsersManager usersManager = new UsersManager();

        PreparedStatement preparedStatement = null;
        try (Connection conn = usersManager.getConnection(usersManager.getFILANAME())) {

//            System.out.println("conn + " +conn);
            preparedStatement = conn.prepareStatement("SELECT CountSeat From session WHERE SessionDay = ? AND TimeStart = ?");
            preparedStatement.setString(1,day);
            preparedStatement.setString(2,timeStart);


            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();



            return resultSet.getInt(1);






        }catch (IOException | SQLException | ClassNotFoundException e) {
//            logger.info("Exception here" + e);
//            logger.error("Cant get Count Seats For Session " + e);
            return 1;
        }


    }






}
