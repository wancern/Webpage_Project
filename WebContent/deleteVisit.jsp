<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>

<%
	String id = request.getParameter("visitId");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("adminVisit.jsp");
		return;
	}
	
	session.invalidate();
	response.sendRedirect("adminVisit.jsp");
%>