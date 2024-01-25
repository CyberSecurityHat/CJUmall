<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>의류 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">의류 목록</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
		 	<div class="card">
  				<div class="card-header">
  					<h5> 의류 </h5>
  					<p> 니트
	  			</div>
	  				<div class="card-body">
	  					<a href="./product.jsp?id=P0008"><img src="./resources/images/니트.jpg" style="width: 100%; height:300px" /> </a>
	  				</div>
	  			</div>
  			</div>
		<div class="col-sm-3">
	  		<div class="card">	
	  			<div class="card-header">
	  				<h5> 의류 </h5>
  					<p> 청바지
 				</div>
  				<div class="card-body">
  					<a href="./product.jsp?id=P0004"><img src="./resources/images/청바지.jpg" style="width: 100%; height:300px" /> </a>
  				</div>
  			</div>
		</div>
	</div>
</body>
</html>