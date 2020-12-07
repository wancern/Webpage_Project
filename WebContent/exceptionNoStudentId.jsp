<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>학생 아이디 오류</title>
</head>
	<body>
		<jsp:include page="home.jsp" />
		<div class="jumbotron">
			<div class="container">
				<h2 class = "alert alert-danger">해당 학생이 존재하지 않습니다.</h2>
			</div>
		</div>
		<div class="container">
			<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
			<p> <a href="students.jsp" class="btn btn-secondary"> 학생 목록 &raquo;</a>
		</div>
	</body>
</html>