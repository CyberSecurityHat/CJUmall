<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
<script type="text/javascript">
</script>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" align="center">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
		<%
			String id = request.getParameter("id");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select * from product where p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		while (rs.next()) {
		%>
		<div class="col-sm-3">
				<div class="card">	
	  				<div class="card-header">
	  					<p> <%=rs.getString("p_name")%>
	  				</div>
	  				<div class="card-body">
	  					<a href="./product.jsp?id=<%=rs.getString("p_id")%>"><img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%; height:300px" /> </a>
	  				</div>
	  			</div>
			</div>
		<div class="col-md-9">
			<h3><%=rs.getString("p_name")%></h3>
			<p><%=rs.getString("p_description")%>
			<p>가격 : <%=rs.getString("p_UnitPrice")%>원
			<p>제조사 : <%=rs.getString("p_manufacturer")%>
			<p>재고수 : <%=rs.getString("p_unitsInStock")%>
			<p>상태 : <%=rs.getString("p_condition")%>
			<p>분류 : <%=rs.getString("p_category")%>
		</div>
		<%
		}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
