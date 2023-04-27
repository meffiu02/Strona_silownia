
<%
if(session.getAttribute("nazwa-log")==null)
	response.sendRedirect("logowanie3.jsp");
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Licznik kalorii</title>
	<link rel="stylesheet" href="licznikkalorii.css">
</head>
<body>
	<nav> 
		<ul>
			<li><a href="main.jsp"><b>Strona główna</b></a></li>
			<li><a href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a></li>
			<li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
			<li> <a href="#"><b>Pomiary</b></a></li>
			<li><a href="#"><b>Atlas ćwiczeń</b></a></li>
			 <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
			<li><a><%=session.getAttribute("nazwa-log") %></a></li>
			<li><a href="logout"><b>Wyloguj</b></a></li>

		</ul>
	</nav>
	<h1>Licznik kalorii</h1>

	<label>Wybierz produkt:</label>
	<select id="product-list">
		<option value="" disabled selected>Wybierz produkt</option>
		<option value="jajko">Jajko</option>
		<option value="mleko">Mleko</option>
		<option value="kurczak">Kurczak</option>
		<option value="ryz">Ryż</option>
	</select>

	<label>Ilość (w gramach):</label>
	<input type="number" id="quantity-input" min="1" value="100">

	<button id="add-button">Dodaj</button>

	<h2>Podsumowanie:</h2>
	<ul>
		<li>Kalorie: <span id="calories">0</span></li>
		<li>Białko: <span id="protein">0</span> g</li>
		<li>Tłuszcz: <span id="fat">0</span> g</li>
		<li>Węglowodany: <span id="carbs">0</span> g</li>
	</ul>

	<h2>Suma:</h2>
	<ul>
		<li>Kalorie: <span id="calories-sum">0</span></li>
		<li>Białko: <span id="protein-sum">0</span> g</li>
		<li>Tłuszcz: <span id="fat-sum">0</span> g</li>
		<li>Węglowodany: <span id="carbs-sum">0</span> g</li>
	</ul>
	<button id="reset-button">Wyzeruj</button>
	<div>

	<h1>Jedzenie </h1>
    
    <h3>Lista wszystkich dostęnych produktów </h3>
    
    
    <table>
        <tr>
       		 <th>Lp.</th>
            <th>Produkt</th>
            <th>Kalorie</th>
            <th>Białko</th>
            <th>Tłuszcz</th>
            <th>Węglowodany</th>
        </tr>
        <% 
            try {
                // Połączenie z bazą danych
                String url = "jdbc:mysql://localhost:3306/licznik";
                String user = "root";
                String password = "P@ssw0rd";
                Connection conn = DriverManager.getConnection(url, user, password);

                // Zapytanie SQL
                String sql = "SELECT * FROM jedzenie";
                PreparedStatement ps = conn.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                // Wyświetlenie wyników zapytania
                int i=0;
                while (rs.next()) { i++;
                    String produkty = rs.getString("produkty");
                    String kalorie = rs.getString("kalorie");
                    String bialko = rs.getString("bialko");
                    String tluszcz = rs.getString("tluszcz");
                    String weglowodany = rs.getString("weglowodany");
        %>
            <tr>
            	<td><%= i %></td>
                <td><%= produkty %></td>
                <td><%= kalorie %></td>
                <td><%= bialko %></td>
                <td><%= tluszcz %></td>
                <td><%= weglowodany %></td>
            </tr>
        <% 
                }
                // Zamykanie połączenia z bazą danych
                rs.close();
                ps.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </table>
	</div>
	
	<script src="licznikkalorii.js"></script>
</body>
</html>
