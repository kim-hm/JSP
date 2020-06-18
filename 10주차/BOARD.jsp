<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //1. DB 연동 드라이브 코드
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    //2. 연결 정보
    String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
    String user = "JSP";
    String passwd = "1111";
    
    //3. 연결 객체 생성
    Connection con = DriverManager.getConnection(url, user, passwd);
    
    //4. SQL 준비 및 실행
    String sql = "SELECT * FROM BOARD";
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BOARD</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class = "container">
<h1 class = "text-center font-weight-bold">로그인 정보</h1>
<br><br>
	<table class = "table table-hover">
		<tr>
			<th>아이디</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<% 
	//5.결과집합 처리
	while (rs.next()) {
		String id = rs.getString("ID");
		String subject = rs.getString("SUBJECT");
		String content = rs.getString("CONTENT");
		String writer = rs.getString("WRITER");
		String regdate = rs.getString("REGDATE");
%>
		<tr>
			<td><%=id %></td>
			<td><%=subject %></td>
			<td><%=content %></td>
			<td><%=writer %></td>
			<td><%=regdate %></td>
		</tr>
<%} 
		//6. 연결 해제
		rs.close();
		st.close();
		con.close();
%>		
		</table>
		<a href = "insertFrom.jsp"><input type="Button" value="게시글 작성"></a>
		<a href = "updateForm.jsp"><input type="Button" value="게시글 수정"></a>
	</div>
</body>
</html>