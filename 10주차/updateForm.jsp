<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 데이터 변경</title>
</head>
<body>
	<h2>DB에 게시글 데이터 변경</h2>
	
	<form action="updatePro.jsp" method="post">
		아이디 : <input type="text" name="id" value="<%=id %>"> <br>
		제목 : <input type="text" name="subject"><br>
		내용 : <input type="text" name="content"><br>
		작성자 : <input type="text" name="writer"><br>
		작성일 : <input type="text" name="regdate"><br>
		
		<input type="submit" value="변경">
		<input type="button" value="삭제">
		<input type="reset" name="재설정">
	</form>
</body>
</html>