<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그 아웃</title>
</head>
<body>
	<%
		String u_id = (String) session.getAttribute("adminId");
		String u_pw = (String) session.getAttribute("adminPw");
		
		session.removeAttribute("adminId");
		session.removeAttribute("adminPw");
		
		//if(session.getAttribute("adminID") == null ) {
		//	out.println("로그아웃 성공!");
		//}
	
	%>
	<!--
	<c:if test="${sessionScope.adminId == null }">
		로그아웃 성공!
	</c:if>
	-->
	<br>
	Home > 관리자 로그 아웃
	<hr>
	세션을 종료 후 로그 아웃을 수행하였습니다! <br>	
	그동안 수고 많으셨습니다.<br><br>
	
	<table>
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value=" 메인 화면으로 이동 ▶">
				</form>
			</td>			
		</tr>
	
	</table>
</body>
</html>