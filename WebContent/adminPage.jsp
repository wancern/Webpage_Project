<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>Welcome</title>
</head>
<body>
	<%@ include file="home.jsp" %>	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				관리자 메뉴
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a><p>
		</div>
		<div class="row">
			<div class="col-md-4">
				<h4>학생 추가</h4>
			</div>
			<div class="col-md-6"></div>
			<div class="col-md-2">
				<p><a href="./addStudent.jsp" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>		
			<div class = "col-md-12">
				<p>학생 목록에 새로운 학생을 추가합니다.
			</div>	
		</div><hr>
		<div class="row">
			<div class="col-md-4">
				<h4>방문자 목록</h4>
			</div>
			<div class="col-md-6"></div>
			<div class="col-md-2">
				<p><a href="./adminVisit.jsp" class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>		
			<div class = "col-md-12">
				<p>지금까지 경기대학교에 방문한 학생 명단을 볼 수있습니다.
			</div>	
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>