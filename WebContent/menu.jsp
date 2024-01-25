<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">CJU몰</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/Member_loginMember.jsp"/>"> <button type="button" class="btn btn-info">로그인 </button> </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/Member_addMember.jsp"/>'><button type="button" class="btn btn-info">회원 가입 </button></a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">
						환영합니다 [<%=sessionId%>]님
						</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/Member_logoutMember.jsp"/>"><button type="button" class="btn btn-info">로그 아웃 </button></a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/Member_updateMember.jsp"/>"><button type="button" class="btn btn-info">회원 수정 </button></a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/products.jsp"/>"><button type="button" class="btn btn-info">상품 목록 </button></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/addProduct.jsp"/>"><button type="button" class="btn btn-info">상품 등록 </button></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=update"/>"><button type="button" class="btn btn-info">상품 수정 </button></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/editProduct.jsp?edit=delete"/>"><button type="button" class="btn btn-info">상품 삭제 </button></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/orderProductsList.jsp"/>"><button type="button" class="btn btn-info">주문 하기 </button></a></li>
			</ul>
		</div>
	</div>
</nav>
