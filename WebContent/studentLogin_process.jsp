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
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("passwd");
		StudentRepository dao = StudentRepository.getInstance();
		Student student = dao.getStudentById(id);
		
		if(id.equals(student.getStudentId())&&password.equals(student.getBirth())){
			response.sendRedirect("student.jsp?id="+student.getStudentId());
		}else{
			response.sendRedirect("studentLogin.jsp?id="+student.getStudentId()+"&error=1");
		}
	%>
</body>
</html>