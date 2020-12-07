<%@ page contentType="text/html; charset=utf-8"%>
<%@page import ="java.net.URLEncoder" %>

<%
request.setCharacterEncoding("UTF-8");

Cookie visitId = new Cookie("Print_visitId", URLEncoder.encode(request.getParameter("visitId"), "utf-8"));
Cookie name = new Cookie("Administrator_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
Cookie Date = new Cookie("Printing_Date", URLEncoder.encode(request.getParameter("Date"), "utf-8"));

visitId.setMaxAge(24*60*60);
name.setMaxAge(24*60*60);

response.addCookie(visitId);
response.addCookie(name);
response.addCookie(Date);

response.sendRedirect("printConfirmation.jsp");

%>