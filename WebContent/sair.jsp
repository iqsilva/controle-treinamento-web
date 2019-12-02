<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="navBar.jsp" %>
<%
	session.invalidate();
	response.sendRedirect("index.html");
%>