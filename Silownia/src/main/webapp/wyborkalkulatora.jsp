
<%
if(session.getAttribute("nazwa-log")==null)
	response.sendRedirect("logowanie3.jsp");
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="wyborkalkulatora.css">
    <title>Wybór Kalkulatora</title>
</head>
<body>
    <nav> 
        <ul>
            <li><a class="odnosniki"href="main.jsp"><b>Strona główna</b></a></li>
            <li><a class="odnosniki"href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a></li>
            <li><a class="odnosniki"href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
            <li><a class="odnosniki"href="#"><b>Pomiary</b></a></li>
            <li><a class="odnosniki"href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
             <li><a href="#"><b>Kontakt</b></a></li>
            <li><a><%=session.getAttribute("nazwa-log") %></a></li>
            <li><a href="logout"><b>Wyloguj</b></a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="kalkulator bmi" onclick="window.location.href = 'bmi.jsp';" style=" cursor: pointer;">
            <h1 class="h1">BMI</h1>
            <button class="button"><a href="bmi.jsp">Oblicz swoje BMI</a></button>
        </div>
        <div class="kalkulator bmr" onclick="window.location.href = 'bmr.jsp';" style=" cursor: pointer;">
            <h1 class="h1">BMR</h1>
            <button class="button"><a href="bmr.jsp">Oblicz swoje BMR</a></button>
        </div>
    </div>
    <footer>
        <div class="footer">
                <span>&copy 2023 Siłownia</span>
                <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
                <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
        </div>
    </footer>
</body>
</html>