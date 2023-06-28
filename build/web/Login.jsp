<%-- 
    Document   : Login
    Created on : Jun 27, 2023, 5:52:00 PM
    Author     : CIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            table{
                margin-top:100px;
            }
            td{
                font-weight:bolder;
            }
            button{
                width:100%;
                font-weight:bolder;
                background-color:blue;
            }
        </style>
    </head>
    <body>
        <form action="CheckLogin" method="post"><center>
            <table>
                <tr>
                    <td>ID</td><!-- comment -->
                    <td><input type="text" name="id"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Password</td><!-- comment -->
                    <td><input type="password" name="password"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit">SIGN IN</button></td>
                </tr>
            </table></center>
        </form>
    </body>
</html>
