<%-- 
    Document   : login
    Created on : 19-dic-2017, 22.33.18
    Author     : pierf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="j_security_check" method="POST">
            <table border="0" cellspacion="0" cellpadding="0">
                <thead>
                    <tr>
                        <td>Nombre usuario:</th>
                        <td>
                            <input type="text" name="j_username">
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input type="password" name="j_password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Login">
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            
        </form>
        
        
        
    </body>
</html>
