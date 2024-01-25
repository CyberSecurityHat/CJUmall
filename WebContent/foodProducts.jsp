<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>음식 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">음식 목록</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="card">	
				<div class="card-header">
					<h5> 음식 </h5>
						<p> 코카콜라
 				</div>
	  			<div class="card-body">
	  				<a href="./product.jsp?id=P0005"><img src="./resources/images/코카콜라.jpg" style="width: 100%; height:300px" /> </a>
				</div>
  			</div>
		</div>
		<div class="col-sm-3">
  			<div class="card">
  				<div class="card-header">
  					<h5> 음식 </h5>
	  				<p> 치킨
	  			</div>
	  			<div class="card-body">
	  				<a href="./product.jsp?id=P0009"><img src="./resources/images/치킨.png" style="width: 100%; height:300px" /> </a>
	  			</div>
	  		</div>
  		</div>
	</div>
</body>
</html>