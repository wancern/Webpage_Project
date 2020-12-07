<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>

<%
	String id = request.getParameter("id");
	String date = request.getParameter("date");
	String room = request.getParameter("room");
	StudentRepository dao = StudentRepository.getInstance();
	Student student = dao.getStudentById(id);
	
	if (student == null) {
		response.sendRedirect("exceptionStudentId.jsp");
	}
	
	Student check = new Student();
	Student visit = new Student();
	
	ArrayList<Student> visitList = dao.getAllStudents();
	for (int i = 0; i < visitList.size(); i++) {
		check = visitList.get(i);
		if (check.getStudentId().equals(id)) {
			break;
		}
	}
	visit.setName(check.getName());
	visit.setStudentId(id);
	visit.setDate(date);
	visit.setRoom(room);

	ArrayList<Student> History = new ArrayList<Student>();
	
	if (session.getAttribute("history") != null) {
		History = (ArrayList<Student>) session.getAttribute("history");
	}
	
	History.add(visit);
	session.setAttribute("history", History);
	
	response.sendRedirect("studentVisit.jsp?id=" + id);
%>