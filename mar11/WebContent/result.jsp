<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
String choice = request.getParameter("img");
 if(choice.equals("bird")){
	 out.println("<center> ");
	 out.println("<img src='img/brird1.jpg' height='120px' width ='120px'></img><br>");
	 out.println("<img src='img/bird2.jpg' height='120px' width ='120px'></img><br>");
	 out.println("<img src='img/bird3.jpg' height='120px' width ='120px'></img><br>");
	 out.println(" </center>");
	 
 }
 else if(choice.equals("fruit")){
	 out.println("<center> ");
	 out.println("<img src='img/f1.jpg' height='120px' width ='120px'></img><br>");
	 out.println("<img src='img/f2.jpg' height='120px' width ='120px'></img><br>");
	 out.println("<img src='img/f3.jpg' height='120px' width ='120px'></img><br>");
	 out.println(" </center>");
 }
 else {
	 throw new Exception();
 }
 %>
</body>
</html>