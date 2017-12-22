

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://sql11.freemysqlhosting.net:3306/sql11211878"
                   user = "sql11211878"  password = "FdGppclBl8"/>

<html>
  <head>
    <title>SQL Tag Out Examples</title>
  </head>

  <body>

<sql:query var = "allRows" dataSource="${dataSource}">
SELECT * FROM `productos`
</sql:query>

<table border=1>
<c:forEach var="row" items="${allRows.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.precio}"/></td>
<td><c:out value="${row.NOMBREARTICULO}"/></td>
<td><c:out value="${row.column_first}"/></td>
<td><c:out value="${row.column_last}"/></td>
<td><c:out value="${row.column_bad}"/></td>
<td><c:out value="${row.column_posted}"/></td>
<td><c:out value="${row.column_type}"/></td>
</tr>
</c:forEach>
</table>


  </body>
</html>


