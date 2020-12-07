<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>Welcome</title>
</head>
<body>
	<%@ include file="home.jsp" %>
	<%! String greeting =  "경기대학교 학생 방문기록 사이트";%>
	
	<div class = "jumbotron">
		<div class = "container">
			<h2 class = "display-3">
				<%=greeting %>
			</h2>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="card-deck mb-3 text-center">
					<div class="card mb-6 shadow-sm">
						<div class="card-header">
							<h4>학생</h4>
						</div>
						<div class="card-body">
							<img src="./resources/images/student.jpeg" style="width: 100%; margin-bottom:20px">
							<a href="students.jsp" type="button" class="btn btn-lg btn-block btn-primary">학생 로그인</a>
						</div>
					</div>
					<div class="card mb-6 shadow-sm">
						<div class="card-header">
							<h4>관리자</h4>
						</div>
						<div class="card-body">
							<img src="./resources/images/kgu.jpg" style="width: 100%; margin-bottom:20px">
							<a href="adminPage.jsp" type="button" class="btn btn-lg btn-block btn-primary">관리자 로그인</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp" %>
	
</body>
</html>