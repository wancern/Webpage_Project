<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Student" %>
<%@ page import="dao.StudentRepository" %>

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
		if(n.equals("Administrator_name"))
			Administrator_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if(n.equals("Printing_Date"))
			Printing_Date = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
}
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>출력 정보</title>
</head>
<body>

<%@ include file="home.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3">출력정보</h1>
	</div>
</div>

<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>방문자 명단</h1>
		</div>
	<div class="row justify-content-between">
		<div class="col-4" align="left">
			<strong>출력 정보</strong>
			<br> 관리자명 : <% out.println(Administrator_name); %>
			<br> 출력일 : <% out.println(Printing_Date); %>
			<br>			
		</div>
		<!--<div class="col-4" align="right">
		</div>  -->
	</div>
	<div>
		<table class="table table-hover">
			<tr>
				<th class="text-center">이름</th>
				<th class="text-center">학번</th>
				<th class="text-center">방문일자</th>
				<th class="text-center">방문강의실</th>			
			</tr>
			<%
			ArrayList<Student> History = new ArrayList<Student>();
			if(session.getAttribute("history") != null)
				History = (ArrayList<Student>) session.getAttribute("history");
			for(int i=0; i<History.size(); i++){
				Student student = History.get(i);
			%>
			<tr>
				<td class="text-center"><%=student.getName()%></td>
				<td class="text-center"><%=student.getStudentId() %></td>
				<td class="text-center"><%=student.getDate() %></td>
				<td class="text-center"><%=student.getRoom()%></td>
			</tr>
			<%
			}
			%>
		</table>
		
		<a href="./printResult.jsp?visitId=<%=visitId%>" class="btn btn-secondary" role="button">이전</a>
		<a href="./finishPrint.jsp" class="btn btn-success" role="button">출력</a>
	</div>
</div>
</body>
</html>