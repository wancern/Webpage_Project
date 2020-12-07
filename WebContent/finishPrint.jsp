<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>

<%
request.setCharacterEncoding("UTF-8");

String visitId = session.getId();
String Print_visitId = "";
String Administrator_name = "";
String Printing_Date = "";

Cookie[] cookies = request.getCookies();

if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("Print_visitId"))
			Print_visitId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Printing_Date"))
			Printing_Date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
}


%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>출력 완료</title>
</head>
<body>
<%@ include file="home.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3">출력 완료</h1>
	</div>
</div>

<div class="container">
	<h2 class="alert alert-danger">출력이 종료되었습니다.</h2>
	<p> 출력 번호 : <% out.println(Print_visitId); %>
</div>

<div class="container">
	<p><a href="./welcome.jsp" class="btn btn-secondary">&laquo; 처음으로</a>
</div>

</body>
</html>

<%
session.invalidate();

for(int i=0; i<cookies.length; i++){
	Cookie thisCookie = cookies[i];
	String n = thisCookie.getName();
	if(n.equals("Print_visitId"))
		thisCookie.setMaxAge(0);
	if(n.equals("Administrator_name"))
		thisCookie.setMaxAge(0);
	if(n.equals("Printing_Date"))
		thisCookie.setMaxAge(0);
}
%>