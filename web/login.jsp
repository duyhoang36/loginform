<%-- 
    Document   : login
    Created on : Mar 25, 2024, 10:39:03 AM
    Author     : 503
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto&display=swap">
    <style>
        .user-name{
            border-radius: 3px;
            border: 1px solid #cccccc;
            margin-bottom: 15px;
            font-family: 'Roboto', sans-serif;
        }
        .pass-word{
            border-radius: 3px;
            border: 1px solid #cccccc;
            font-family: 'Roboto', sans-serif;
        }
        .submit{
            position: relative ;
            top: 15px;
            left: 110px;
            background-color: #76aa9d ;
            border-radius: 5px;
            font-family: 'Roboto', sans-serif;
        }
        body{
            position: relative;
            left: 500px;
        }
    </style>
    <body>
        <h1>Login form</h1>
        <%
            if(request.getAttribute("error")!=null){
            String er=(String)request.getAttribute("error");
        %>
        
        <h3 style="color: red"><%= er %></h3>
        <%
            }
        %>
        <form action="login" method="post">
            Enter username: <input class ="user-name" type="text" name="user" placeholder="Type your username"/><br/>
            Enter password: <input class ="pass-word" type="password" name="pass" placeholder="Type your password"/><br/>
            <input  class = "submit" type="submit" value="LOGIN"><br/><!-- comment -->
        </form>
    </body>
</html>
