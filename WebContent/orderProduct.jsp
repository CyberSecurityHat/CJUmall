<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>주문하기</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@ include file="dbconn.jsp"%>
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
		<br>
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
				<hr>
	<form name="order"  action="./orderCompleted.jsp?id=<%=rs.getString("p_id")%>" method="post">
		<div class="form-group  row">
			<label class="col-sm-2 ">수량</label>
			<div class="col-sm-3">
				<input id="quantity" name="quantity" type="text" class="form-control" placeholder="quantity" >
			</div>
		</div>
		<div class="form-group  row">
			<label class="col-sm-2 ">은행</label>
			<div class="col-sm-3">
				<input id="bank" name="bank" type="text" class="form-control" placeholder="bank" >
			</div>
		</div>
		<div class="form-group  row">
			<label class="col-sm-2 ">계좌 번호</label>
			<div class="col-sm-3">
				<input id="account number" name="account number" type="text" class="form-control" placeholder="account number" >
			</div>
		</div>
		<div class="form-group  row">
			<label class="col-sm-2 ">계좌 비밀번호</label>
			<div class="col-sm-3">
				<input id="account password" name="account password" type="password" class="form-control" placeholder="account password" >
			</div>
		</div>
		<div class="form-group  row">
			<div class="col-sm-offset-2 col-sm-10 ">
				<input type="submit" class="btn btn-primary " value="주문 " >
			</div>
		</div>
	</form>
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