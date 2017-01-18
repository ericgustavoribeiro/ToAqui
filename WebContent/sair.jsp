<%@page import="com.ejt.adm.Adm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ejt.usuario.Usuario"%>
<% 
HttpSession sessionLogin = request.getSession(false);
HttpSession sessionLoginAdm = request.getSession(false);


if(sessionLogin != null){
	sessionLogin.invalidate();
	response.sendRedirect("index.jsp");
}else if(sessionLoginAdm != null){
	sessionLoginAdm.invalidate();
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>