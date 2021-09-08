<%@ page import="java.util.List" %>
<%@ page import="DAO.UsersManager" %>
<%@ page import="DAO.DB_ManagerDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>

<body>
<div>
    <h1>Super app!</h1>
</div>

<div>
    <div>
        <div>
            <h2>Users</h2>
        </div>
        <%

            ArrayList list = new ArrayList();
            DB_ManagerDAO dbManager = new DB_ManagerDAO();
            list=  dbManager.findAllUsers();

            for (int i = 0; i < list.size(); i++) {

                out.println( "<li> " + list.get(i) + "</li>");

            }

        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>