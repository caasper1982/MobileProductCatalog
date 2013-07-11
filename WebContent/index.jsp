<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>MobileCatalog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://routed.ch/mydb" user="bwi" password="test33test" />
	<sql:query dataSource="${snapshot}" var="result">SELECT * FROM productlist;</sql:query>
	
	<div class="container-fluid">
		<div class="hero-unit">
			<h1>Mobile-Product-Catalog</h1>
			<p>Willkommen auf unserer Webseite MobileProductCatalog. Hier
				kannst du dir zu fairen Preisen echt geile Produkte erweben...</p>
			<a class="btn" href="log.jsp" />zeige Log für alle Produkte &raquo;</a>
		</div>
		<div class="row-fluid">
	
			<% int cnt = 0; %>
			<c:forEach var="row" items="${result.rows}">
				<% 
				if(cnt % 4 == 0 && cnt > 0) {
					%></div>
					<div class="row-fluid"><%
				}
				%>
				<div class="span3">
					<h2>${row.Prod_ID}</h2>
					<p><c:out value="${row.Prod_Name}" /></p>
					<p><c:out value="${row.Prod_Desc}" /></p>
					<p><c:out value="${row.Prod_Price}" /></p>
					<p>
						<a class="btn" href="log.jsp?pid=<c:out value="${row.Prod_ID}" />">zeige Log &raquo;</a>
					</p>
				</div>
				<% cnt++; %>
			</c:forEach>
		</div>
		<hr>
		<hr/>
		<footer>
			<p>&copy; HWZ: N-Tier Technolgies 2013</p>
		</footer>
	</div>
	<!-- Le javascript
	   ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../assets/js/jquery.js"></script>
	<script src="../assets/js/bootstrap-transition.js"></script>
	<script src="../assets/js/bootstrap-alert.js"></script>
	<script src="../assets/js/bootstrap-modal.js"></script>
	<script src="../assets/js/bootstrap-dropdown.js"></script>
	<script src="../assets/js/bootstrap-scrollspy.js"></script>
	<script src="../assets/js/bootstrap-tab.js"></script>
	<script src="../assets/js/bootstrap-tooltip.js"></script>
	<script src="../assets/js/bootstrap-popover.js"></script>
	<script src="../assets/js/bootstrap-button.js"></script>
	<script src="../assets/js/bootstrap-collapse.js"></script>
	<script src="../assets/js/bootstrap-carousel.js"></script>
	<script src="../assets/js/bootstrap-typeahead.js"></script>
</body>
</html>
