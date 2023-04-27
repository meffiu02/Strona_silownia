
<%
if(session.getAttribute("nazwa-log")==null)
	response.sendRedirect("logowanie3.jsp");
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Kalkulator BMI</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="bmi.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
</head>

<body>
    <header>
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
    </header>
    <main>
        <section id="bmi">
            <h2>Kalkulator BMI</h2>
            <form>
                <label>Waga (kg): </label><input type="number" name="waga"><br>
                <label>Wzrost (cm): </label><input type="number" name="wzrost"><br>
                <button type="submit">Oblicz BMI</button>
            </form>
        </section>
    </main>
  
        <div class="wynik-box">
            <p><b>Twoje BMI wynosi:</b></p>
        <div id="wynik-bmi"></div>
        </div>
        <div class="info">
            <p>
                BMI, czyli wskaźnik masy ciała, to liczba uzyskana przez podzielenie masy ciała wyrażonej w kilogramach przez kwadrat wzrostu wyrażonego w metrach.BMI pozwala na ocenę prawidłowej masy ciała.
            </p>
            <ul class="bmi-list-ul">
                <li class="bmi-list"> BMI poniżej 18,5 oznacza niedowagę</li>
                <li class="bmi-list"> BMI między 18,5 a 24,9 oznacza prawidłową masę ciała</li>
                <li class="bmi-list"> BMI między 25 a 29,9 oznacza nadwagę</li>
                <li class="bmi-list"> BMI między 30 a 34,9 oznacza otyłość pierwszego stopnia</li>
                <li class="bmi-list"> BMI między 35 a 39,9 oznacza otyłość drugiego stopnia</li>
                <li class="bmi-list"> BMI powyżej 40 oznacza otyłość skrajną lub trzeciego stopnia</li>
            </ul>
            <p>Przy ocenie wyników BMI należy jednak pamiętać, że wskaźnik ten nie uwzględnia składu ciała, a więc nie jest idealnym narzędziem do oceny zdrowia i kondycji fizycznej.</p>
        </div>
    <footer>
        
        <div class="footer">
            <span>&copy 2023 Siłownia</span>
            <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
            <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
    </div>
    </footer>
    <script src="bmi.js"></script>
</body>

</html>