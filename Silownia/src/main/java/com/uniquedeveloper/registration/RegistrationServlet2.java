package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Base64;

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
		String hasloZahaszowane = null;
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
		    MessageDigest digest = MessageDigest.getInstance("SHA-256");
		    byte[] hash = digest.digest(haslo.getBytes(StandardCharsets.UTF_8));
		    hasloZahaszowane = Base64.getEncoder().encodeToString(hash);
		} catch (NoSuchAlgorithmException e) {
		    e.printStackTrace();
		}
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logowanie?useSSL=false","root","P@ssw0rd");

			// Sprawdź, czy email już istnieje w bazie danych
			PreparedStatement checkEmailStmt = con.prepareStatement("SELECT email FROM users WHERE email=?");
			checkEmailStmt.setString(1, email);
			if (checkEmailStmt.executeQuery().next()) {
				// Jeśli email już istnieje, zwróć komunikat o błędzie
				dispatcher = request.getRequestDispatcher("logowanie3.jsp");
				request.setAttribute("status_rej", "failed_rej");
				dispatcher.forward(request, response);
				return;
			}
			
			PreparedStatement checkNameStmt = con.prepareStatement("SELECT nazwa FROM users WHERE nazwa=?");
			checkNameStmt.setString(1, nazwa);
			if (checkNameStmt.executeQuery().next()) {
				// Jeśli email już istnieje, zwróć komunikat o błędzie
				dispatcher = request.getRequestDispatcher("logowanie3.jsp");
				request.setAttribute("status_rej", "failed_rej");
				dispatcher.forward(request, response);
				return;
			}
			
			// Jeśli email nie istnieje, wykonaj standardowe dodawanie użytkownika
			PreparedStatement addNewUserStmt = con.prepareStatement("insert into users(nazwa,email,haslo) values(?,?,?)");
			addNewUserStmt.setString(1, nazwa);
			addNewUserStmt.setString(2, email);
			addNewUserStmt.setString(3, hasloZahaszowane);
			int rowCount = addNewUserStmt.executeUpdate();
			dispatcher = request.getRequestDispatcher("logowanie3.jsp");
			if(rowCount > 0) {
				request.setAttribute("status_rej", "success_rej");	
			}
			else {
				request.setAttribute("status_rej", "failed_rej");
			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}