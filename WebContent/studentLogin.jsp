<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Student"%> 
<%@ page import="dao.StudentRepository" %>
<%@ page errorPage="exceptionNoStudentId.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>학생 로그인</title>
</head>
<body>
	<jsp:include page="home.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">학생 로그인</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		StudentRepository dao = StudentRepository.getInstance();
		Student student = dao.getStudentById(id);
	%>
	<div class="container" align="center">
		<div class="col-md-4 clo-md-offset-4">
			<img src="./resources/images/<%=student.getFilename() %>" style="width: 100%">
			<h3 class="form-signin-heading"><%=student.getName() %></h3>
			<%
				String error = request.getParameter("error");
			if(error != null){
				out.println("<div class='alert alert-danger'>");
				out.println("학번과 생년월일을 확인해 주세요");
				out.println("</div>");				
			}
			%>
			<form class="form-signin" action="studentLogin_process.jsp?id=<%=student.getStudentId()%>" method="post">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="학번" name='id'>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="생년월일" name='passwd'>
				</div>
				<p><button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
				<p><a href="./students.jsp" class="btn btn btn-lg btn-secondary btn-block" role="button">학생 목록&raquo;</a>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>