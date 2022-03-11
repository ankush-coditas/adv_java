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
	 out.println(" <a href='search.jsp'> <img src='img/home.jpg' height='40px' width ='40px'><br> home  </a> ");
	 out.println("<center> ");
	 out.println("<img src='img/brird1.jpg' height='200px' width ='300px'></img>");
	 out.println("<img src='img/bird2.jpg' height=' 200px' width ='300px'></img> ");
	 out.println("<img src='img/bird3.jpg' height='200px' width ='300px'></img> ");
	 out.println(" </center>");
	 out.println("<audio    autoplay>");
	 out.println("  <source src='Forest-bird-chirping-sound.mp3' type= 'audio/mpeg'>");
	 out.println(" </audio> ");
 }
 else if(choice.equals("fruit")){
	 out.println(" <a href='search.jsp'> <img src='img/home.jpg' height='40px' width ='40px'><br> home  </a> ");
	 out.println("<center> ");
	 out.println("<center> ");
	 out.println("<img src='img/f1.jpg' height='200px' width ='300px'></img>");
	 out.println("<img src='img/f2.jpg' height=' 200px' width ='300px'></img> ");
	 out.println("<img src='img/f3.jpg' height='200px' width ='300px'></img> ");
	 out.println(" </center>");
	 out.println(" </center>");
 }
 else {
	 throw new Exception();
 }
 %>
</body>
</html>