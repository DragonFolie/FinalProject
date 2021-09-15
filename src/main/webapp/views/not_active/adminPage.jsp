<%@ page import="java.util.ArrayList" %>
<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>
<style>

    .container {
        height: 100px;
        width: 75%;
        display: grid;
        grid-template-columns: 1fr 2fr 1fr 1fr;
        grid-template-rows: 1fr;
        gap: 0px 0px;
        grid-template-areas:
    ". . . .";
    }



</style>

<body>
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">

    <div>

        <%

            request.setCharacterEncoding("UTF-8");



            ArrayList UserInformation = new ArrayList();
            DB_ManagerDAO dbManager = new DB_ManagerDAO();
            UserInformation=  dbManager.findNicknameAndRole();
            String regex = "(.+),(.+),(.+)";
            String preword = null;
            String afterword = null;



            for (int i = 0; i < UserInformation.size(); i++) {
                StringBuilder sb = new StringBuilder() ;
                sb.append(    UserInformation.get(i) ) ;
//            System.out.println("sb " + sb );

                Matcher m = Pattern.compile(regex).matcher(sb.toString());
                while (m.find()) {
//                    System.out.println("Find");
                    preword = m.group(1);
                    afterword = m.group(2);
                out.println( "<li>Nickname: " +preword  + ";&nbsp&nbsp Role: " + afterword +"</li>" );

                }

            }

        %>



        <%

            ArrayList timeStartEnd = new ArrayList();
            ArrayList nameOfMovie = new ArrayList();
            String status  ;
            
            DB_ManagerDAO dbManager2 = new DB_ManagerDAO();
            timeStartEnd=  dbManager2.findAllMovieSession();
            nameOfMovie = dbManager2.findAllMovieName();



            for (int i = 0; i < timeStartEnd.size(); i++) {
                StringBuilder sb = new StringBuilder() ;
                StringBuilder sb2 = new StringBuilder() ;
                sb.append(    timeStartEnd.get(i) ) ;
                sb2.append(nameOfMovie.get(i));

                Matcher m = Pattern.compile(regex).matcher(sb.toString());
                while (m.find()) {
                    preword = m.group(1);
                    afterword = m.group(2);
                    status = m.group(3);
                    if (status.equals("Close to buy")){
//                        out.println( "<li>Movie name: "+ sb2+";&nbsp&nbsp Start: " +preword  + ";&nbsp&nbsp End: " + afterword +";&nbsp&nbsp </li>" );
                        continue;
                    }

                    if (!status.equals("Close to buy")){
                        out.println( "<li>Movie name: "+ sb2+";&nbsp&nbsp Start: " +preword  + ";&nbsp&nbsp End: " + afterword +";&nbsp&nbsp Status: "+status+" </li>" );

                    }





                }

            }

        %>

    </div>

    <div>
        <br><br><br><br><br><br>
        <h2>Change role for User</h2>
        <form action="admin" method="post">


            Nickname <input type="text/html" name="userNickName"/>&nbsp
            <select name="changeRole">
                <option >1</option>
                <option >2</option>
            </select>&nbsp
            <button type="submit" >Submit</button>
        </form>
    </div>


    <div>
        <br><br><br><br><br><br>
        <h2>Change status for film</h2>
        <form action="admin" method="post">

            Name <input type="text/html" name="filmName"/>&nbsp
            <select name="changeStatus">
                <option >Open</option>
                <option >Canceled</option>
                <option >Finished</option>
                <option >Close to buy</option>
                <option >Private</option>
            </select>&nbsp
            <button type="submit" >Submit</button>
        </form>
    </div>



    <div >
        <br><br><br><br><br><br>
        <h2>Add new Movie</h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <form action="admin" method="post">
            Ticket cost<input type="text/html" name="ticketCost"/>&nbsp&nbsp
            Count of seats<input type="text/html" name="countOfSeat"/>&nbsp&nbsp
            Poster URL<input type="text/html" name="posterUrl"/>&nbsp&nbsp
            Date of session<input type="text/html" name="sessionDate"/>&nbsp&nbsp
            Set time start<input type="text/html" name="timeStart"/>&nbsp&nbsp
            Set time end<input type="text/html" name="timeEnd"/>&nbsp&nbsp


            Name <input type="text/html" name="movieName"/>&nbsp&nbsp
            NameEng <input type="text/html" name="movieNameENG"/>&nbsp&nbsp<br><br><br>

            Description<textarea rows="10" cols="45" name="description"></textarea>&nbsp&nbsp
            DescriptionEng<textarea rows="10" cols="45" name="descriptionENG"></textarea>&nbsp&nbsp<br><br><br>

            Actors<textarea rows="10" cols="45" name="actors"></textarea>&nbsp&nbsp
            Director<textarea rows="10" cols="45" name="director"></textarea>&nbsp&nbsp<br><br><br>



            <button type="submit" style="font-size: 25px" >Submit</button>
        </form>

    </div>




</div>


<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>