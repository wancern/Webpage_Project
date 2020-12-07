<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>기록 출력</title>
</head>
<body>
	<%@ include file="home.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">방문자 명단 출력</h1>
		</div>
	</div>

	<div class="container">
		<form action="./processPrintResult.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="visitId" value="<%=request.getParameter("visitId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">관리자명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">출력일</label>
				<div class="col-sm-3">
					<input name="Date" type="text" class="form-control" />(yyyy/mm/dd)
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./adminVisit.jsp?visitId=<%=request.getParameter("visitId")%>" class="btn btn-secondary" role="button"> 이전</a> 
					<input type="submit" class="btn btn-primary" value="등록" />
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>