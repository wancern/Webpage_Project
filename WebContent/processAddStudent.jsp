<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student"%>
<%@ page import="dao.StudentRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "./resourse/images";		//웹 애플리케이션상의 절대 경로
	int maxSize = 5 * 1024 * 1024;				//최대 업로드될 파일의 크기 5MB
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());

	String studentId = multi.getParameter("studentId");
	String name = multi.getParameter("name");
	String major = multi.getParameter("major");
	String grade = multi.getParameter("grade");
	String phoneNum = multi.getParameter("phoneNum");
	String birth = multi.getParameter("birth");
	String email = multi.getParameter("email");
	String address = multi.getParameter("address");
	
	Integer gra;
	
	if(grade.isEmpty())
		gra = 0;
	else
		gra = Integer.valueOf(grade);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	StudentRepository dao = StudentRepository.getInstance();
	
	Student newStudent = new Student();
	newStudent.setStudentId(studentId);
	newStudent.setName(name);
	newStudent.setGrade(gra);
	newStudent.setMajor(major);
	newStudent.setPhoneNum(phoneNum);
	newStudent.setBirth(birth);
	newStudent.setEmail(email);
	newStudent.setAddress(address);
	newStudent.setFilename(fileName);
	
	dao.addStudent(newStudent);
	
	response.sendRedirect("students.jsp");
%>