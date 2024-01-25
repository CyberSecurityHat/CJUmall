<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>주문 완료</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@ include file="dbconn.jsp"%>
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
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
			<div class="col-4" style="margin: 0 auto;width: 300px">
				<div class="card">
					<div class="card-header">
					<p><%=rs.getString("p_name")%></p>
					</div>
					<div class="card-body">
						<a href="./product.jsp?id=<%=rs.getString("p_id")%>"><img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 210px; height:280px"> </a>
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
</body>
</html>