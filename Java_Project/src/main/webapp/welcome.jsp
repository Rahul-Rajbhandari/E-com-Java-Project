<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="jakarta.servlet.http.HttpSession" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession session1 = request.getSession(false);
	
	if(session1 != null && session1.getAttribute("username")!= null){
		String username = (String) session1.getAttribute("username");
%>
	<h1>Welcome , <%=username %></h1>
	<a href = "logout.jsp">LOGOUT</a>
	
<%
	}else {
		response.sendRedirect("login.jsp");
}
%>	
</body>
</html>