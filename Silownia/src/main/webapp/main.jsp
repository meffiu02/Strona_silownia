
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
    <meta name="author" content="Mateusz Jeżak" />
    <link rel="stylesheet" href="main.css">
    <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.min.css">
    <title>Strona główna</title>
    <style>
    .sweet-alert-title {
      text-align: center;
    }
  </style>
</head>

<body>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.all.min.js"></script>

<script>
  // Sprawdź, czy komunikat został już wyświetlony
  if (document.cookie.indexOf('alertShown') === -1) {
    Swal.fire({
      html: 'Chcielibyśmy przypomnieć Wam o znaczeniu zdrowia i bezpieczeństwa podczas treningów. Jeżeli masz jakiekolwiek problemy zdrowotne lub cierpisz na jakąś chorobę, zalecamy skonsultowanie się z lekarzem przed rozpoczęciem korzystania z naszej strony i planów treningowych.<br><br>Twój stan zdrowia jest dla nas najważniejszy!!!',
      icon: 'info',
      confirmButtonText: 'Rozumiem',
      width: '600px',
      customClass: {
      
        htmlContainer: 'sweet-alert-html',
        confirmButton: 'sweet-alert-button'
      }
    });

    // Ustaw cookie, że komunikat został wyświetlony
    document.cookie = 'alertShown=true; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/';
  }
</script>
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
        <div class="container">
            <div class="cytat">
                <h1 class="cytat_pierwsza"> NIGDY SIĘ NIE PODDAWAJ</h1><br>
                <h2 class="cytat_druga">NA WIELKIE RZECZY POTRZEBA CZASU</h2>
            </div>
            <div class="opis">
                <p>Nasza strona to źródło wartościowych informacji dotyczących zdrowego stylu życia i perfekcyjnego treningu</p>
                <p>Dzięki naszej wiedzy będziesz wstanie osiągnąć swoją <b class="wymarzona-sylwetka">wymarzoną sylwetkę</b></p>
                <p>Zapraszamy do regularnego odwiedzania naszej strony, aby pozostać na bieżąco z najnowszymi trendami<br> i technikami treningowymi!</p>
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