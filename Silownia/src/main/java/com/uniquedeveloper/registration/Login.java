package com.uniquedeveloper.registration;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nazwa = request.getParameter("nazwa-log");
		String haslo = request.getParameter("haslo-log");
		String hasloZahaszowane = null;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
		    MessageDigest digest = MessageDigest.getInstance("SHA-256");
		    byte[] hash = digest.digest(haslo.getBytes(StandardCharsets.UTF_8));
		    hasloZahaszowane = Base64.getEncoder().encodeToString(hash);
		} catch (NoSuchAlgorithmException e) {
		    e.printStackTrace();
		}
		
		
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logowanie","root","P@ssw0rd");
			PreparedStatement pst= con.prepareStatement("select * from users where nazwa=? and haslo=? ");
			pst.setString(1, nazwa);
			pst.setString(2, hasloZahaszowane);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) 
			{
				session.setAttribute("nazwa-log", rs.getString("nazwa"));
				dispatcher = request.getRequestDispatcher("main.jsp");
			}
			else
			{
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("logowanie3.jsp");
			}
			dispatcher.forward(request, response);
			
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		
	}

}
