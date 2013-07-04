<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Edit Product</title>
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
	<div class="container-fluid">
		<div class="hero-unit">
			<h1>Mobile-Product-Catalog</h1>
			<p>Produkt 1 editieren</p>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<h2>Produkt 1</h2>
				<form class="form-horizontal" target="#someServlet.java">
				  <div class="control-group">
				    <label class="control-label" for="pname">Name</label>
				    <div class="controls">
				      <input type="text" id="pname" placeholder="Name">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="pbeschrieb">Beschrieb</label>
				    <div class="controls">
				      <input type="text" id="pbeschrieb" placeholder="Beschrieb">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="ppreis">Preis</label>
				    <div class="controls">
				      <input type="text" id="ppreis" placeholder="Preis">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				    	<a href="index.jsp" class="btn">Zurück</a>
				      	<button type="submit" class="btn">Speichern</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
		<hr>
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
