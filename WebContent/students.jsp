<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%> 
<%@ page import="dto.Student"%> 
<%@ page import="dao.StudentRepository" %>
<%@ page errorPage="exceptionNoPage.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>학생 목록</title>
</head>
<body>
	<jsp:include page="home.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">학생목록</h1>
		</div>
	</div>
	
	<% 
		StudentRepository dao = StudentRepository.getInstance();
		ArrayList<Student> listOfStudents = dao.getAllStudents();
	%>
	
	<div class="container">
		<div class="row row-cols-4">
			<% 
				for(int i = 0; i<listOfStudents.size();i++){
					Student student = listOfStudents.get(i);
			%>
				<div class="col">
					<img src="C:/upload/<%=student.getFilename() %>" style="width: 100%">
					<p style="text-align:center"><%=student.getStudentId()%>  <%=student.getName() %>
					<p style="text-align:center"><%=student.getMajor() %>
					<p style="text-align:center"><a href="./studentLogin.jsp?id=<%=student.getStudentId()%>"
					class="btn btn-secondary" role="button"> 로그인 &raquo;</a>
				</div>
			<% 
				}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>