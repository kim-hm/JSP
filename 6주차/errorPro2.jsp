<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내부 서버 오류</title>
</head>
<body>
	<%
            String nullStr = null;
            System.out.println(nullStr.toString());
      %> <%-- java.lang.NullPointerException 이 발생 --%>
</body>
</html>