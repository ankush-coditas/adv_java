package com;
import javax.servlet.jsp.tagext.*;
 
import javax.servlet.jsp.*;
import java.io.*;
public class CoustomTag extends  SimpleTagSupport {
	String name ,clgname,branch,company,position;
	public void setName(String name) {
		this.name=name;
	}
	public void setclgname(String clgname) {
		this.clgname=clgname;
	}
	public void setbranch(String branch) {
		this.branch=branch;
	}
	public void setcompany(String company) {
		this.company=company;
	}
	public void setposition(String position) {
		this.position=position;
	}
	@Override
	   public void doTag() throws JspException, IOException {
		   super.doTag();
	      JspWriter out = getJspContext().getOut();
	      out.println(  "<div style =' background-image: url( logo.png); background-repeat: no-repeat '>");
	      out.println("Greetings of the day !!!!");
	      out.println(name+"<br>");
	      out.println( "<b>Collge details :</b><br>");
	      out.println("Collge name: "+clgname+"<br>");
	      out.println("branch: "+branch+"<br>");
	      out.println( "<b>Internship Details :</b><br>");
	      out.println("Company: "+company+"<br>");
	      out.println("Position: "+position+"<br>");
	      out.println(  "</div>");
	   }
}
