<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Student"%> 
<%@ page import="dao.StudentRepository" %>
<%@ page errorPage="exceptionNoStudentId.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>학생 상세 정보</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="home.jsp" />
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3"><fmt:message key="studentInfo" /></h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		StudentRepository dao = StudentRepository.getInstance();
		Student student = dao.getStudentById(id);
	%>
	<div class="container">
		<div class="text-right">
			<a href="?id=<%=student.getStudentId() %>&language=ko" >Korean</a>|<a href="?id=<%=student.getStudentId() %>&language=en" >English</a>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="./resources/images/<%=student.getFilename() %>" style="width: 100%">
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-7">	
				<p><b><fmt:message key="name" /></b> : <%=student.getName()%>
				<p><b><fmt:message key="studentId" /></b> : <%=student.getStudentId()%>
				<p><b><fmt:message key="major" /></b> : <%=student.getMajor()%>
				<p><b><fmt:message key="grade" /></b> : <%=student.getGrade()%>
				<p><b><fmt:message key="birth" /></b> : <%=student.getBirth()%>
				<p><b><fmt:message key="phoneNum" /></b> : <%=student.getPhoneNum()%>
				<p><b><fmt:message key="email" /></b> : <%=student.getEmail()%>
				<p><b><fmt:message key="address" /></b> : <%=student.getAddress()%>
				<p> 
				<form name="addForm" action="./addCart.jsp?id=<%=student.getStudentId() %>" method="post">
					<a href="./studentVisit.jsp?id=<%=student.getStudentId() %>" class="btn btn-info"><fmt:message key="writeVisit" />&raquo;</a>
					<a href="./students.jsp" class="btn btn-secondary"><fmt:message key="listStudent" />&raquo;</a>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
	</fmt:bundle>
</body>
</html>