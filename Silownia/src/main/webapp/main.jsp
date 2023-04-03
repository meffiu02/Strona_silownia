
<%
if(session.getAttribute("email-log")==null)
	response.sendRedirect("logowanie3.jsp");
%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Mateusz Jeżak" />
    <link rel="stylesheet" href="main.css">
    
    <title>Strona główna</title>
</head>

<body>

        <nav>
            <a href="#"><b>Strona główna</b></a>
            <a href="wyborkalkulatora.html"><b>Kalkulatory</b></a>
            <a href="licznikkalorii.html"><b>Licznik kalorii</b></a>
            <a href="#"><b>Pomiary</b></a>
            <a href="#"><b>Atlas Ćwiczeń</b></a>
            <a href="logowanie3.html"><b>Logowanie/Rejstracja</b></a>
            <a href="logout"><b>Wyloguj</b></a>
            <a><%=session.getAttribute("email-log") %></a>
        </nav>
        <div class="container">
            <div class="cytat">
                <h1 class="cytat_pierwsza"> NIGDY SIĘ NIE PODDAWAJ</h1> 
                <h2 class="cytat_druga">NA WIELKIE RZECZY POTRZEBA CZASU</h2>
            </div>
            <div class="opis">
                    <h1 class="naglowek-opis">nagłówek</h1>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illum blanditiis omnis minus provident rerum, ratione distinctio dignissimos fugit nisi sunt tempora inventore debitis laudantium! Voluptatibus quam eos debitis possimus quisquam?</p>
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