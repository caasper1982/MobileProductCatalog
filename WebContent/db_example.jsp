<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>SELECT Operation</title>
</head>
<body>

	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/sakila" user="root" password="root" />

	<sql:query dataSource="${snapshot}" var="result">SELECT * FROM actor;</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>id</th>
			<th>first name</th>
			<th>last name</th>
			<th>last_update</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.actor_id}" /></td>
				<td><c:out value="${row.first_name}" /></td>
				<td><c:out value="${row.last_name}" /></td>
				<td><c:out value="${row.last_update}" /></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
