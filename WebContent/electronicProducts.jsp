<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>전자제품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">전자제품 목록</h1>
		</div>
	</div>
	<div class="row">
  		<div class="col-sm-3">	
			<div class="card">
	 			<div class="card-header">
	  					<h5> 전자제품 </h5>
  						<p> iPhone 13 Pro
	  			</div>
	  			<div class="card-body">
	  				<a href="./product.jsp?id=P0003"><img src="./resources/images/아이폰13 프로 시에라블루.jpg" style="width: 100%; height:300px" /> </a>
	  			</div>
	 		</div>
		</div>
		<div class="col-sm-3">
  			<div class="card">
	  			<div class="card-header">
	  				<h5> 전자제품 </h5>
	  				<p> MacBook Pro
	  			</div>
	  			<div class="card-body">
	  				<a href="./product.jsp?id=P0007"><img src="./resources/images/맥북 프로(2021).jpg" style="width: 100%; height:300px" /> </a>
	  			</div>
	  		</div>
  		</div>
	</div>
</body>
</html>