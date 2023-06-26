<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Informacje o koncie</title>
    <link rel="stylesheet" href="uzytkownik.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav> 
        <ul>
            <li><a href="main.jsp"><b>Strona główna</b></a></li>
            <li><a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a></li>
            <li><a href="tetno.jsp"><b>Kalkulator tętna</b></a></li>
            <li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
            <li><a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
            <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
            <li><a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a></li>
            <li><a href="logout"><b>Wyloguj</b></a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Informacje o Twoim koncie</h1>

			<h2>Nazwa: <span class="kolor-nazwa"><%= session.getAttribute("nazwa-log") %></span></h2>
			<h2>Email: <span class="kolor-email"><%= session.getAttribute("email-log") %></span></h2>
			<h2>Hasło: <button onclick="location.href='forgotPassword.jsp'">Zmień hasło</button></h2>
       

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
