package com.wipro.mahathi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollNumber=request.getParameter("rollNumber");
		PrintWriter pw = response.getWriter();
		//pw.print(rollNumber);
		
		try{  
      	  
        	
        	Connection con=DriverManager.getConnection(  
        	"jdbc:mysql://remotemysql.com:3306/BafznwrxLQ","BafznwrxLQ","7cQhdL2cMZ");  
        
            Statement stmt=con.createStatement();  
        	ResultSet rs=stmt.executeQuery("select * from  Login where Roll_Number='"+rollNumber+"'");  
        	Boolean exist=false;
        		 while(rs.next())
     			{    
                  exist=true;
        				
        			}
        		 if(exist) {
        			 request.getRequestDispatcher("Profile.jsp").include(request, response);
        		 }
        		 else {
        				pw.print("<html> <body> your rollNumber doesnot match our database </body> </html>");
        			}
     				  
        	 
        	     con.close();  
        	}catch(Exception e){
        		pw.println(e);
        	}   
		
		
		
		
		
		
		
		
		
		
			/*
			 * if(rollNumber.equalsIgnoreCase("20281460")) {
			 * request.getRequestDispatcher("20280105.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20280105")) {
			 * request.getRequestDispatcher("20280105.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20282401")) {
			 * request.getRequestDispatcher("20282401.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20281318")) {
			 * request.getRequestDispatcher("20281318.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20281219")) {
			 * request.getRequestDispatcher("20281219.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20282469")) {
			 * request.getRequestDispatcher("20282469.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20280079")) {
			 * request.getRequestDispatcher("20280079.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20283524")) {
			 * request.getRequestDispatcher("20283524.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20281391")) {
			 * request.getRequestDispatcher("20281391.jsp").include(request, response); }
			 * else if(rollNumber.equalsIgnoreCase("20282334")) {
			 * request.getRequestDispatcher("20282334.jsp").include(request, response); }
			 * else { pw.
			 * print("<html> <body> your rollNumber doesnot match our database </body> </html>"
			 * ); }
			 */
	}

}
