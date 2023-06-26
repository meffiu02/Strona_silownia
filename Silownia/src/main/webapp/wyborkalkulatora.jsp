
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
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Wybór Kalkulatora</title>
</head>
<body>
    <nav> 
        <ul>
            <li><a class="odnosniki"href="main.jsp"><b>Strona główna</b></a></li>
            <li><a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a></li>
            <li><a href="tetno.jsp"><b>Kalkulator tętna</b></a></li>
            <li><a class="odnosniki"href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
            <li><a class="odnosniki"href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
             <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
            <li><a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a></li>
            <li><a href="logout"><b>Wyloguj</b></a></li>
        </ul>
    </nav>
    <div class="back">
        <div class="napis">
        <h3>Dowiedz się o potężnym narzędziu, które pomoże Ci zrozumieć swoje ciało i osiągnąć zdrową równowagę. </h3> 
        <h3>Kalkulator BMI i BMR - odkryj, jakie jest Twoje idealne BMI i oblicz swoje podstawowe zapotrzebowanie kaloryczne. Odkryj tajemnice swojego organizmu i podejmij kontrolę nad swoim zdrowiem już teraz!</h3>
        </div>
    </div>
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