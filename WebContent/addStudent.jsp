<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<script type = "text/javascript" src="./resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="home.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newStudent" action="./processAddStudent.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="studentId" /></label>
				<div class="col-sm-3">
					<input type="text" id="studentId" name="studentId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="major" /></label>
				<div class="col-sm-3">
					<input type="text" name="major" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="grade" /></label>
				<div class="col-sm-3">
					<input type="text" id="grade" name="grade" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="birth" /></label>
				<div class="col-sm-3">
					<input type="text" name="birth" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="phoneNum" /></label>
				<div class="col-sm-3">
					<input type="text" name="phoneNum" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="email" /></label>
				<div class="col-sm-3">
					<input type="text" name="email" class="form-control">
				</div>
			</div>
						<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="address" /></label>
				<div class="col-sm-3">
					<input type="text" name="address" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="studentImage" /></label>
				<div class="col-sm-5">
					<input type="file" name="studentImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" value="<fmt:message key="button" />" class="btn btn-primary" onclick="CheckAddStudent()">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	</fmt:bundle>
</body>
</html>