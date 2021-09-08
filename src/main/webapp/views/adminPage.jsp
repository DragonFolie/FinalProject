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

<body>
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <div>
        <%

            ArrayList list = new ArrayList();
            DB_ManagerDAO dbManager = new DB_ManagerDAO();
            list=  dbManager.findNicknameAndRole();
            String regex = "(.+),(.+)";
            String preword = null;
            String afterword = null;



            for (int i = 0; i < list.size(); i++) {
                StringBuilder sb = new StringBuilder() ;
                sb.append(    list.get(i) ) ;
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




</div>


<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>