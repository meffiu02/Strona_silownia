<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="tetno.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<head>
    <title>Kalkulator tętna treningowego</title>
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
        <h1>Kalkulator tętna treningowego</h1>
        
        <label for="age">Wiek:</label>
        <input type="text" id="age">
        <label for="gender">Płeć:</label>
        <select id="gender">
            <option value="male">Mężczyzna</option>
            <option value="female">Kobieta</option>
        </select>
        <label for="activity">Poziom aktywności:</label>
        <select id="activity">
            <option value="1">Niski (brak regularnej aktywności fizycznej)</option>
            <option value="2">Średni (ćwiczenia 2-3 razy w tygodniu)</option>
            <option value="3">Wysoki (ćwiczenia 4-5 razy w tygodniu)</option>
            <option value="4">Bardzo wysoki (intensywny trening codziennie)</option>
        </select>
        <div class="przycisk animate__animated animate__bounce">
        <button onclick="calculateHeartRate()">Oblicz tętno</button>
        </div>
        <div class="result-container">
            <p class="wynik">Wynik:</p><br>
            <div id="result"></div>
            <div class="info">
                <p>Ten kalkulator tętna treningowego służy do obliczenia optymalnego zakresu tętna treningowego na podstawie wieku, płci oraz poziomu aktywności fizycznej.</p>
                <p>Aby skorzystać z kalkulatora, wpisz swój wiek, wybierz płeć i określ poziom aktywności fizycznej. Następnie kliknij przycisk "Oblicz", aby otrzymać zakres tętna treningowego.</p>
            </div>   
            
        </div>
    
    </div>

    <footer>
        <div class="footer">
            <span>&copy 2023 Siłownia</span>
            <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
            <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
    </div>
    </footer>
    <script>
    var ageConfirmed = false;

    function calculateHeartRate() {
        var ageInput = document.getElementById("age");
        var genderInput = document.getElementById("gender");
        var activityInput = document.getElementById("activity");

        var age = parseInt(ageInput.value);
        var gender = genderInput.value;
        var activity = parseInt(activityInput.value);

        if (isNaN(age) || age <= 0) {
            alert("Wprowadź poprawny wiek.");
            ageInput.value = "";
            ageInput.focus();
            return;
        }

        if (age > 180) {
            alert("Maksymalny dopuszczalny wiek to 180 lat.");
            ageInput.value = "";
            ageInput.focus();
            return;
        }

        if (age > 120 && !ageConfirmed) {
            var confirmResponse = confirm("Czy na pewno masz tyle lat?");
            if (!confirmResponse) {
                ageInput.value = "";
                ageInput.focus();
                return;
            } else {
                ageConfirmed = true;
            }
        }

        if (gender === "") {
            alert("Wybierz płeć.");
            genderInput.focus();
            return;
        }

        if (isNaN(activity) || activity <= 0) {
            alert("Wybierz poziom aktywności.");
            activityInput.focus();
            return;
        }

        var maxHeartRate = 220 - age;
        var lowerZone, upperZone;

        if (activity === 1) {
            lowerZone = 0.5;
            upperZone = 0.6;
        } else if (activity === 2) {
            lowerZone = 0.6;
            upperZone = 0.7;
        } else if (activity === 3) {
            lowerZone = 0.7;
            upperZone = 0.8;
        } else {
            lowerZone = 0.8;
            upperZone = 0.9;
        }

        var lowerHeartRate, upperHeartRate;

        if (gender === "male") {
            lowerHeartRate = Math.round(lowerZone * maxHeartRate);
            upperHeartRate = Math.round(upperZone * maxHeartRate);
        } else {
            lowerHeartRate = Math.round(lowerZone * maxHeartRate) - 5;
            upperHeartRate = Math.round(upperZone * maxHeartRate) - 5;
        }

        document.getElementById("result").innerHTML = "Zakres tętna treningowego: " + lowerHeartRate + " - " + upperHeartRate + " uderzeń na minutę.";
    }
</script>
    
</body>
</html>
