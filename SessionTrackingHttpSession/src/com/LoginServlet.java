package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		 response.setContentType("text/html");
		 PrintWriter pw =response.getWriter();
		 String uname = request.getParameter("username");
		 String pass = request.getParameter("password");
		 if(uname.equals(pass)) {
			 HttpSession hs = request.getSession(true);
			 hs.setAttribute("name", uname);
			 RequestDispatcher rd = request.getRequestDispatcher("WelcomeServlet") ;
			 rd.forward(request, response);
		 }else {
			 pw.println("<h2 style='color : red;'>Invalid Credential!!!!</h2>");
			 RequestDispatcher rd = request.getRequestDispatcher("login.html");
			 rd.include(request, response);
			 
		 }
	}
 
 
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		doGet(request, response);
	}

}
