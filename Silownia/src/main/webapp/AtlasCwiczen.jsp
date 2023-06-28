<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="AtlasCwiczen.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Atlas ćwiczeń</title>
</head>
<body>

    <nav>
        <a href="main.jsp"><b>Strona główna</b></a>
        <a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a>
         <a href="tetno.jsp"><b>Kalkulator tętna</b></a>
        <a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a>
        <a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a>
        <a href="kontakt.jsp"><b>Kontakt</b></a>
        <a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a>
        <a href="#" onclick="confirmLogout()"><b>Wyloguj</b></a>
    </nav>
     <div class="back">
        <div class="wstep">
		    <h2>Na tej stronie możesz odnaleźć idealne ćwiczenia, aby osiagnąć swoją <b>wymarzoną sylwetkę</b></h2><br>
            
		    <h2>Wybierz spośród 6 kategorii, aby dowiedzieć się więcej o danej partii ciała</h2>
	    </div>
    </div>
    <div class="container">
        <div class="atlas klatka" onclick="window.location.href = 'klatka.jsp';">
        <p class="category"><b>KLATKA PIERSIOWA</b></p>
        </div>
        <div class="atlas plecy" onclick="window.location.href = 'plecy.jsp';">
        <p class="category"><b>PLECY</b></p>
        </div>
        <div class="atlas barki" onclick="window.location.href = 'barki.jsp';">
        <p class="category"><b>BARKI</b></p>
        </div>
        <div class="atlas brzuch" onclick="window.location.href = 'brzuch.jsp';">
        <p class="category"><b>BRZUCH</b></p>
        </div>
        <div class="atlas triceps" onclick="window.location.href = 'triceps.jsp';">
        <p class="category"><b>TRICEPS</b></p>
        </div>
        <div class="atlas biceps" onclick="window.location.href = 'biceps.jsp';">
        <p class="category"><b>BICEPS</b></p>
        </div>
  </div>
    <footer>
        <div class="footer">
                <span>&copy 2023 Siłownia</span>
                <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
                <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
        </div>
    </footer>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
    function confirmLogout() {
        swal({
            title: "Czy na pewno chcesz się wylogować?",
            icon: "warning",
            buttons: ["Anuluj", "Wyloguj się"],
            dangerMode: true,
        }).then((willLogout) => {
            if (willLogout) {
                window.location.href = "logout";
            }
        });
    }
</script>
</body>
</html>