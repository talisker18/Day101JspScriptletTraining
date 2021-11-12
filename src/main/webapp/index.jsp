<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello from HTML</h1> <!-- this will be executed on client side -->
	<%= "<h1>hello from JSP</h1>" %> <!-- this will be executed on server side -->
	
	<% int x=10; %>
	
	<input type="text" value="<%= x%>">
	
	<%
	
		for(int i=0; i<5;i++){
			out.print("i = "+i+"<br/>");
		}
	
	%>
	
	<%@include file="footer.html" %>
	
	<p>The current date is <%= new Date() %></p>
	
	<%--JSP implicit objects
	
	out - JspWriter
	application - ServletContext
	config - ServletConfig
	page - Object
	pageContext - PageContext
	Exception - Throwable
	request - HttpServletRequest
	response - HttpServletResponse
	
	 --%>
	 
	 <form action="">
	 
	 	Enter name <input type="text" name="fname">
	 	<input type="submit" name="click" value="Click me">
	 	
	 		 </form>
	 		 
	 	<%
	 	
	 		if(request.getParameter("click") !=null){ //if button gets clicked it wont be null
	 			out.print("hello "+request.getParameter("fname"));
	 		}	
	 	
	 	%>
	
</body>
</html>