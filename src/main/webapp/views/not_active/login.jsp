<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>

<body>
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <div>
        <h3>Login App using HttpSession</h3>
        <a href="login.html">Login</a>|
        <a href="LogoutServlet">Logout</a>|
        <a href="ProfileServlet">Profile</a>
    </div>
</div>

<div>
    <div>
        <div>
            <h2>Add user</h2>
        </div>

        <form method="post">
            <label>Name:
                <input type="text" name="name_login"><br />
            </label>
            <label>Password:
                <input type="password" name="pass_login"><br />
            </label>
            <button type="submit" >Submit</button>
        </form>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>