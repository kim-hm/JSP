   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿</title>
<link rel="stylesheet" href="form.css">
</head>
<body>
<header>
   <jsp:include page="top.jsp" flush='false'/>
</header>
   <div id="content">
      <section id="areaSub">
         <jsp:include page="left.jsp" flush='false'/>
      </section>
   
      <section id= "areaMain">
         <jsp:include page="content.jsp" flush="false"/>
      </section>
   </div>
   <footer>
      <jsp:include page="bottom.jsp" flush="false"/>
   </footer>
</body>
</html>