package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helper.GetConnection;


@WebServlet("/ForgetPWS")
public class ForgetPWS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ForgetPWS() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		pw.println("<html>");
		pw.println("<head>");
        pw.println("<link rel='stylesheet'href='csscode/ForgetPWS.css'>");		
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class='modal'>");
		pw.println("<form action='ForgetPWS' method='post'>");
		pw.println("<div class='container1'>");
		pw.println("<b>Enter Registered User Name</b><input type='text' placeholder='Enter Username' name='uname'>");
        pw.println("<b>Enter Registered Email</b><input type='text' placeholder='Enter Email ID' name='email'>");
		pw.println("<b>Enter New Password</b><input type='text' placeholder='Enter New Password' name='newpass'>");
		pw.println("<b>Confirm Password</b><input type='password' placeholder='Confirm Password' name='conpass'>");
		pw.println("<button type='submit' name='btn'>Change Password</button>");

		pw.println("</div>");

		pw.println("<a class=\"cancelbtn\" href=\"Home.jsp\" >");
		pw.println("<div class=\"container2\">Cancel</div></a>");
		
		 pw.println("</form>");
	     pw.println("</div></body></html>");
	
		if(request.getParameter("btn")!=null)
		{
			if(request.getParameter("newpass").equals(request.getParameter("conpass")))
			{
		       Connection conn = new GetConnection().getConnection();
	        	try
	        	{
			
	        		PreparedStatement ps = conn.prepareStatement("select * from users where uname=? and email=?");
		        	ps.setString(1, request.getParameter("uname"));
	         		ps.setString(2, request.getParameter("email"));
			
			        ResultSet rs = ps.executeQuery();
			        if(rs.next())
			        {	
			        	PreparedStatement 	ps1 = conn.prepareStatement("update users set password=? where uname=?");
				        ps1.setString(1, request.getParameter("newpass"));
				        ps1.setString(2, request.getParameter("uname"));
				        int x=ps1.executeUpdate();
				        if(x>0)
				        {
				         	response.getWriter().println("<h4 style='text-align:center';color:'red';>Password Updated Successfully!!! </h4> ");
				         	pw.println("<a href='Signin.jsp'><b><h5 style='text-align:center';>Please Sign In Now!!</h5></b></a>");
				        }
			        	else
			         	{
					       response.getWriter().println("<h4 style='text-align:center';color:'green';>Password not Updated!!! </h4> ");
				        }
			       }
		       	   else
		           {
				       response.getWriter().println("<h4 style='text-align:center';color:'red';>Enter Username or Email  incorrect!!! </h4> ");
			       }
		       }
		      catch(Exception e)
		      {
		        	System.out.println(e);
		      }
	      }
			else
			{
				response.getWriter().println("<h4 style='text-align:center';>Confirm Password and New Password both are different!!! </h4> ");
			}
    
	
         }
	
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
	doPost(request,response);
}
	
}