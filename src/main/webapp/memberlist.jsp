<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 회원 리스트</title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<%
		String sql = "SELECT id, username, email, signuptime FROM members";
	
		Statement stmt = null;
		ResultSet rs = null;
		
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		int count = 1;
		
		while(rs.next()) {
			String m_id  = rs.getString("id");
			String m_name  = rs.getString("username");
			String m_email = rs.getString("email");
			String m_signuptime = rs.getString("signuptime");
			
			out.println(count + " : ");
			out.println(m_id + " / ");
			out.println(m_name + " / ");
			out.println(m_email + " / ");
			out.println(m_signuptime + "<br>");		
			
			count++;//count=count+1;
		}
		
		out.println("<br>총 회원 수는 " + (count-1) + "명 입니다.");
		
		rs.close();
		stmt.close();
		conn.close();		
	
	%>
	<hr>
	<table>
		<tr>
			<td>
				<form action="withdraw.jsp" method="post">
					<input type="submit" value=" ◀ 회원 탈퇴시키기 ">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value=" 로그 아웃 ▶ ">
				</form>
			</td>
		</tr>	
	</table>
</body>
</html>