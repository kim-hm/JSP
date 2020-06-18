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
    
    out.println("연결 성공");
    
    //4. 연결 객체 해제
    con.close();
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DB 연동</title>
</head>
<body>
	
</body>
</html>