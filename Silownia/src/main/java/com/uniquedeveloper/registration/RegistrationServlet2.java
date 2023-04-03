package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nazwa = request.getParameter("nazwa-rej");
		String email = request.getParameter("email-rej");
		String haslo = request.getParameter("haslo-rej");
		RequestDispatcher dispatcher = null;
		Connection con = null;
	 try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logowanie?useSSL=false","root","P@ssw0rd");
		PreparedStatement pst= con.prepareStatement("insert into users(nazwa,email,haslo) values(?,?,?)");
		 
		pst.setString(1, nazwa);
		pst.setString(2, email);
		pst.setString(3, haslo);
		
		int rowCount = pst.executeUpdate();
		dispatcher = request.getRequestDispatcher("logowanie3.jsp");
		if(rowCount > 0) {
			request.setAttribute("status", "succes");	
		}
		else {
			request.setAttribute("status", "failed");
		}
		dispatcher.forward(request, response);
		
	 } catch (Exception e) {
		 e.printStackTrace();
	 }
	 finally {
		 try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	}

}