<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.guestbookVo"%>
<%@ page import="com.javaex.dao.guestbookDao"%>
<%@ page import="java.util.List"%>
<%
	guestbookDao guestbookDao = new guestbookDao();
List<guestbookVo> pList = guestbookDao.getPersonList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main title here</title>
</head>
<body>
	<form action="./add.jsp" method="get">
		<table border="1" width="500" height="100">
			<tbody>
				<tr>
					<td>이름 <input type="text" name="name"></Td>
					<td>비밀번호 <input type="text" name="pw"></td>
				</tr>
				<tr height="120">
					<td colspan="2"><textarea rows="8" style="width: 90%;"
							name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit">확인</button></td>
				</tr>
			</tbody>
		</table>
		<br>
		<%
			for (guestbookVo vo : pList) {
		%>
		<table border="1" width="500" height="75">
			<tr>
				<td><%=vo.getNo()%></td>
				<td><%=vo.getName()%></td>
				<td><%=vo.getReg_date()%></td>
				<td><a href="./deleteForm.jsp?no=<%=vo.getNo()%>">삭제</a></td>
			</tr>
		</table>
		<br>
		<%
			}
		%>
	</form>
</body>
</html>