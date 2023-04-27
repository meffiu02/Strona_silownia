package com.uniquedeveloper.registration;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		String hasloZahaszowane = null;
		RequestDispatcher dispatcher = null;
		
		try {
		    MessageDigest digest = MessageDigest.getInstance("SHA-256");
		    byte[] hash = digest.digest(newPassword.getBytes(StandardCharsets.UTF_8));
		    hasloZahaszowane = Base64.getEncoder().encodeToString(hash);
		} catch (NoSuchAlgorithmException e) {
		    e.printStackTrace();
		}
		
		
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logowanie?useUnicode=true&characterEncoding=UTF-8","root","P@ssw0rd");
				PreparedStatement pst = con.prepareStatement("update users set haslo = ? where email = ? ");
				pst.setString(1, hasloZahaszowane);
				pst.setString(2, (String) session.getAttribute("email"));

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("status_new", "resetSuccess");
					dispatcher = request.getRequestDispatcher("logowanie3.jsp");
				} else {
					request.setAttribute("status_new_failed", "resetFailed");
					dispatcher = request.getRequestDispatcher("logowanie3.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
            request.setAttribute("status_new_failed", "resetFailed");
            dispatcher = request.getRequestDispatcher("newPassword.jsp");
            dispatcher.forward(request, response);
        }
	}

}
