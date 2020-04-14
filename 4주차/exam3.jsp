<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<script type="text/javascript">
	var url;
	function sel_item(){
		win = window.open("","")
	}
	function site_move(){
		var myindex = fn.page.selectedindex;
		
	
	switch(myindex){
	case "JDK":
		url="www.oracle.com";
	break;
	case "Tomcat":
		url="apache.org";
		break;
	case "Eclipse":
		url="eclipse.org";
	break;
	default:
		alert("보기 중 없는 사이트입니다.");
	}
	if(url)
		location.href="http://" + url;
	}
	</script>
<body>
<h1>JSP 환경 설정을 위한 다운로드 페이지</h1>
	<hr>
	<form name="fn" method="get">
	<select name="myselect" onchange="sel_item()">
	<option>JDK</option>
	<option>Tomcat</option>
	<option>Eclipse</option>
	</select>
	<select name="page"> 
	<option id="jdk" value="http://www.oracle.com">JDK</option>
	<option id="tom" value="http://apache.org">Tomcat</option>
	<option id="ecl" value="http://eclipse.org">Eclipse</option>
	</select>
	<input type="button" value="이동" onclick="site_move()">
	</form>
	
</body>
</html>