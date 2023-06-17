<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Informacje o koncie</title>
    <link rel="stylesheet" href="uzytkownik.css">
</head>
<body>
    <nav> 
        <ul>
            <li><a href="main.jsp"><b>Strona główna</b></a></li>
            <li><a href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a></li>
            <li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
            <li><a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
            <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
            <li><a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a></li>
            <li><a href="logout"><b>Wyloguj</b></a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Informacje o koncie</h1>

        <h2>Nazwa: <%=session.getAttribute("nazwa-log") %></h2>
        <h2>Email: <%=session.getAttribute("email-log") %></h2>
        <h2>Hasło: <button onclick="location.href='forgotPassword.jsp'">Zmień hasło</button>
        </h2>

    </div>
</body>
</html>
