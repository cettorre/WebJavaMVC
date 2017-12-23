<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : deleteSQL
    Created on : 23-dic-2017, 12.31.48
    Author     : cettorre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://sql11.freemysqlhosting.net:3306/sql11211878"
                   user = "sql11211878"  password = "FdGppclBl8"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
    <sql:update var="deletedRows" dataSource="${dataSource}">
        DELETE FROM productos
        WHERE NOMBREARTICULO like ? <sql:param value="PC%"></sql:param>
    </sql:update>
        
      <sql:query var="result" dataSource="${dataSource}">
                SELECT * from productos;
                
            </sql:query>
                
            <table border="1">
                <!-- column headers -->
                <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                </tr>
                <!-- column data -->
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <tr>
                        <c:forEach var="column" items="${row}">
                            <td><c:out value="${column}"/></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>    
        
    </body>
</html>
