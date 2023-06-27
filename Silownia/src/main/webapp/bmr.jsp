
<%
if(session.getAttribute("nazwa-log")==null)
	response.sendRedirect("logowanie3.jsp");
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Kalkulator BMR</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="bmr.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  
</head>

<body>
    <header>
        <nav> 
            <ul>
                <li><a href="main.jsp"><b>Strona główna</b></a></li>
                <li><a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a></li>
            	<li><a href="tetno.jsp"><b>Kalkulator tętna</b></a></li>
                <li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
                <li><a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
                 <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
               <li><a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a></li>
            	<li> <a href="#" onclick="confirmLogout()"><b>Wyloguj</b></a></li>

            </ul>
        </nav>
    </header>
    <main>
        <section id="bmr">
            <h2>Kalkulator BMR</h2>
            <form>
                <label>Płeć: </label>
                <label><input type="radio" name="plec" value="mezczyzna">Mężczyzna</label>
                <label><input type="radio" name="plec" value="kobieta">Kobieta</label>
                <label>Waga (kg): </label><input type="number" name="waga">
                <label>Wzrost (cm): </label><input type="number" name="wzrost">
                <label>Wiek: </label><input type="number" name="wiek">
                <label>Poziom aktywności: </label>
                <select name="aktywnosc">
                    <option value="1.2">Brak aktywności</option>
                    <option value="1.375">Lekka aktywność (1-3 treningi w tygodniu)</option>
                    <option value="1.55">Średnia aktywność (3-5 treningów w tygodniu)</option>
                    <option value="1.725">Wysoka aktywność (6-7 treningów w tygodniu)</option>
                    <option value="1.9">Bardzo wysoka aktywność (codzienne treningi)</option>
                </select><br>
                <button type="submit" class="animate__animated animate__bounce">Oblicz BMR</button>
            </form>
        </section>
    
    </main>
    <div class="wynik-box">
        <p><b>Twoje BMR wynosi:</b></p>
    <div id="wynik-bmr"></div>
    </div>
    <div class="info">
       <p>BMR (Basal Metabolic Rate) to wartość energetyczna, którą organizm potrzebuje do podtrzymania podstawowych funkcji życiowych, takich jak oddychanie, trawienie czy regulacja temperatury ciała. Oznacza to ilość energii zużywanej przez organizm w ciągu doby w stanie całkowitego spokoju, czyli w sytuacji, gdybyśmy leżeli w łóżku przez cały dzień</p>
        <p>BMR jest uzależnione od wielu czynników, takich jak wiek, płeć, wzrost, waga, skład ciała, poziom aktywności fizycznej oraz genetyka. Osoby o wyższej masie ciała oraz z większą ilością masy mięśniowej mają zwykle wyższe BMR, podobnie jak mężczyźni w porównaniu do kobiet</p>    
        <p>Znając swoje BMR, można obliczyć swoje dzienne zapotrzebowanie kaloryczne, czyli ile kalorii należy spożywać w ciągu dnia, aby utrzymać wagę na stałym poziomie. Warto jednak pamiętać, że BMR to tylko jeden z czynników wpływających na całkowite zapotrzebowanie kaloryczne organizmu, dlatego zawsze warto skonsultować się z dietetykiem lub lekarzem przed rozpoczęciem diety lub planu treningowego</p>
    </div>
    <footer>
        <div class="footer">
            <span>&copy 2023 Siłownia</span>
            <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
            <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
    </div>
    </footer>
    <script src="bmr.js"></script>
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