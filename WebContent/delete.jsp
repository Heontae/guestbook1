
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.guestbookDao"%>
<%@ page import="com.javaex.vo.guestbookVo"%>
<%@ page import="java.util.List"%>

<%
	guestbookDao guestDao = new guestbookDao();
guestbookVo guestVo = new guestbookVo();
List<guestbookVo> pList = guestDao.getPersonList();

int no = Integer.parseInt(request.getParameter("no"));
String pw = request.getParameter("pw");

for (int i = 0; i < pList.size(); i++) {
	if (no == pList.get(i).getNo() && pw.equals(pList.get(i).getPw())) {
		guestDao.personDelete(no, pw);
		response.sendRedirect("./addList.jsp");
	} else {
%>
<script>
	alert("비밀번호가 틀렸습니다."); //팝업창 표시
	document.location.href = "addList.jsp"; //확인 버튼 누르면 이동할 경로지정
</script>
<%
	} 
}
%>
