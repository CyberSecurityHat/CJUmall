<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String edit = request.getParameter("edit");
%>
<%
if (edit.equals("update")) {
%>
<title>상품 수정</title>
<%
}
%>
<%
if (edit.equals("delete")) {
%>
<title>상품 삭제</title>
<%
}
%>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container" style="text-align:center">
			<%
				if (edit.equals("update")) {
			%>
			<h1 class="display-3">상품 수정</h1>
			<%
				}
			%>
			<%
				if (edit.equals("delete")) {
			%>
			<h1 class="display-3">상품 삭제</h1>
			<%
				}
			%>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
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
						<a href="./product.jsp?id=<%=rs.getString("p_id")%>"><img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%; height:300px"> </a>
					</div>
					<div class="card-footer">
						
						<p><%
							if (edit.equals("update")) {
						%>
						<a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-success" role="button"> 수정 &raquo;></a>
						<%
							} else if (edit.equals("delete")) {
						%>
						<a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
						<%
							}
						%>
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