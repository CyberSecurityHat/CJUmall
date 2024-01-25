<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
	  		<div class="card">
	  			<div class="card-header">
	  					<h5> 도서 </h5>
	  					<p> 달러구트 꿈 백화점
	  			</div>
	  				<div class="card-body">
	  					<a href="./product.jsp?id=P0002"> <img src="./resources/images/달러구트 꿈 백화점.jpg" style="width: 100%; height:300px" /> </a>
	  				</div>
	  			</div>
 	 		</div>
		<div class="col-sm-3">
	  		<div class="card">
	  			<div class="card-header">
	  				<h5> 도서 </h5>
	  				<p> 컴퓨터 보안 바이블</p>
	  			</div>
	  			<div class="card-body">
	  				<a href="./product.jsp?id=P0006"><img src="./resources/images/컴퓨터 보안 바이블.jpg" style="width:100%; height:300px" /> </a>
	  			</div>
	  		</div>
	  	</div>
	</div>
</body>
</html>