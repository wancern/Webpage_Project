<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>

<%
	String id = request.getParameter("id");
	String str = request.getParameter("num");
	int num = Integer.parseInt(str);
	
	StudentRepository dao = StudentRepository.getInstance();
	
	ArrayList<Student> list = (ArrayList<Student>) session.getAttribute("history");
	Student remove = new Student();
	for (int i = 0; i < list.size(); i++) {
		remove = list.get(i);
		if ((Integer)num == i) {
			list.remove(remove);
		}
	}
	if(id != null){
		response.sendRedirect("studentVisit.jsp?id="+id);
	}else{
		response.sendRedirect("adminVisit.jsp");
	}
%>