<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>
<%@ page errorPage="exceptionNoStudentId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<%	String visitId = session.getId();  %>
<title>방문 기록</title>
</head>
<body>
	<%@ include file="home.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">전체 방문기록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<table width="100%">
						<tr>
							<td align="left"><a href="./deleteVisit.jsp?visitId=<%=visitId%>" class="btn btn-danger">모두 삭제</a></td>
							<td align="right"><a href="./printResult.jsp?visitId=<%=visitId %>" class="btn btn-success">기록 출력</a></td>
						</tr>
					</table>
				</div>
				<div style="padding-top: 50px">
					<table class="table table-hover">
						<tr>
							<th>이름</th>
							<th>학번</th>
							<th>방문일자</th>
							<th>방문강의실</th>
							<th>비고</th>
						</tr>
						<%
							ArrayList<Student> History = new ArrayList<Student>();
							if (session.getAttribute("history") != null)
								History = (ArrayList<Student>) session.getAttribute("history");
							
							for (int i = 0; i < History.size(); i++) {
								Student personal = History.get(i);
						%>
						<tr>
							<td><%=personal.getName()%></td>
							<td><%=personal.getStudentId()%></td>
							<td><%=personal.getDate()%></td>
							<td><%=personal.getRoom()%></td>
							<td><a href="./removeVisit.jsp?num=<%=i%>" class="badge badge-danger"> 삭제</a></td>
						</tr>
						<%
							}
						%>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>