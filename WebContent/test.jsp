<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>
<%@ page errorPage="exceptionNoStudentId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>방문 기록</title>
</head>
<body>
	<%@ include file="home.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		StudentRepository dao = StudentRepository.getInstance();
		Student student = dao.getStudentById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-4" align="center">
				<img src="C:/upload/<%=student.getFilename() %>" style="width: 100%">
				<h3 class="form-signin-heading"><%=student.getName() %></h3>
				<h3 class="form-signin-heading"><%=student.getStudentId() %></h3>
				<%
					String error = request.getParameter("error");
					if(error != null){
						out.println("<div class='alert alert-danger'>");
						out.println("학번과 생년월일을 확인해 주세요");
						out.println("</div>");				
					}
				%>
				<form class="form-signin" action="addVisit.jsp?id=<%=student.getStudentId()%>" method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="방문날짜" name='date'>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="방문강의실" name='room'>
					</div>
					<p><input type="submit" class="btn btn btn-lg btn-success btn-block" value="방명록 작성"></input>
				</form>
			</div>
		</div>
	</div>
</body>
</html>