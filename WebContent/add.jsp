<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.guestbookVo"%>
<%@ page import="com.javaex.dao.guestbookDao"%>

<%
String name = request.getParameter("name");
String pw = request.getParameter("pw");
String content = request.getParameter("content");
//Vo
guestbookVo personvo = new guestbookVo(name, pw, content);

//Dao
guestbookDao persondao = new guestbookDao();
persondao.personInsert(personvo);

//리다이렉트
response.sendRedirect("./addList.jsp");
%>
