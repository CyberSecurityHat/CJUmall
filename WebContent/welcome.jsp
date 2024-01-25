<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="container">
		<a href="./products.jsp" style="color:black;text-decoration:none">
  		<br>
  		<button type="button" class="btn btn-success"> <h1>전체 카테고리 </h1> </button>
  		</a>
  		<hr style="border: solid 2px grey;">
  		<a href="./bookProducts.jsp" style="color:black;text-decoration:none">
  		<button type="button" class="btn btn-primary"><h3>도서 </h3> </button>
  		</a>
  		<a href="./electronicProducts.jsp" style="color:black;text-decoration:none">
  			<button type="button" class="btn btn-primary"><h3>전자제품 </h3> </button>
  		</a>
  		<a href="./clothingProducts.jsp" style="color:black;text-decoration:none">
  			<button type="button" class="btn btn-primary"><h3>의류 </h3> </button>
  		</a>
  		<a href="./foodProducts.jsp" style="color:black;text-decoration:none">
  		<button type="button" class="btn btn-primary"><h3>음식 </h3> </button>
  		</a>
		<hr style="border: solid 1px grey;">
	</div>
	<div class="container">
		<h4>가장 많이 팔린 상품</h4>
		<hr>
  		<div class="col-sm-6" style="margin: 0 auto">
  			<div class="card">
	  				<div class="card-header">
  						<h2>The Holy Bible </h2>
	  				</div>
	  				<div class="card-body">
	  					<a href="./product.jsp?id=P0001"> <img src="./resources/images/THE HOLY BIBLE.jpg" style="width: 100%" /> </a>
	  				</div>
	  			</div>
  		</div>
  		<hr style="border: grey 1px solid">
  		<h4>카페고리별 인기 상품</h4>
  		<hr>
		<div class="row">
	  		<div class="col-sm">
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
			<div class="col-sm">	
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
			<div class="col-sm">
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
			<div class="col-sm">
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
		</div>
		<hr>
  		<hr style="border: solid 1px grey;">
  		<h4>카페고리별 추천 상품</h4>
  		<hr>
  		<div class="row">
	  		<div class="col-sm">
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
  			<div class="col-sm">
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
  			<div class="col-sm">
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
  			<div class="col-sm">
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
  		<hr style="border: solid 2px grey;">
 	</div>
  	<%@ include file="footer.jsp"%>
</body>
</html>