<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-3">
				<div class="card">
					<div class="card-header">
						<p><%=rs.getString("p_name")%></p>
					</div>
					<div class="card-body">
						<a href="./product.jsp?id=<%=rs.getString("p_id")%>"><img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%; height:300px"></a>
					</div>
					<div class="card-footer">
						<p><a href="./product.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;></a> </p>
					</div>
				</div>
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