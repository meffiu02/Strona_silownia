<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="biceps.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Biceps</title>
</head>
<body>

    <nav>
        <a href="main.jsp"><b>Strona główna</b></a>
        <a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a>
        <a href="tetno.jsp"><b>Kalkulator tętna</b></a>
        <a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a>
        <a href="AtlasCwiczen.jsp"><b>Atlas Ćwiczeń</b></a>
        <a href="kontakt.jsp"><b>Kontakt</b></a>
        <a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a>
        <a href="logout"><b>Wyloguj</b></a>
    </nav>

    <div class="opis">
        <h2>Mięsień dwugłowy ramienia (biceps brachii)</h2>
<p>Mięsień dwugłowy ramienia jest jednym z najbardziej charakterystycznych mięśni górnej części ciała. Odpowiada za zginanie ramienia w łokciu i obrót przedramienia. Wzmacnianie mięśnia dwugłowego ramienia pomaga poprawić siłę i estetykę ramion.</p>

<h3>Budowa mięśnia dwugłowego ramienia</h3>
<p>Mięsień dwugłowy ramienia składa się z dwóch głów:</p>
<ul>
  <li>Głowa długa (long head): Ta głowa mięśnia ma swoje pochodzenie w stawie łokciowym i przechodzi przez dołek międzykłykciowy łokciowej. Jest bardziej wewnętrzna.</li>
  <li>Głowa krótka (short head): Ta głowa mięśnia ma swoje pochodzenie w górnej części kości ramiennej, niedaleko wyrostka kubkowatego. Jest bardziej zewnętrzna.</li>
</ul>

<h3>Funkcje mięśnia dwugłowego ramienia</h3>
<ul>
  <li>Zginanie ramienia: Mięsień dwugłowy ramienia jest głównym mięśniem zaangażowanym w zginanie ramienia w łokciu. Działa podczas podnoszenia ciężarów, wykonywania ćwiczeń na biceps oraz wielu codziennych czynności, takich jak podnoszenie przedmiotów.</li>
  <li>Obrót przedramienia: Głowa długa mięśnia dwugłowego ramienia jest również zaangażowana w obrót przedramienia. Odpowiada za skręcanie przedramienia wewnętrznie.</li>
</ul>

    </div>
    <div class="zawartosc">
        <div class="tekst1">
            <h2>ZGINANIE RAMION ZE SZTANGĄ PROSTĄ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Złap sztangę podchwytem na szerokość barków, z ramionami wyprostowanymi przed sobą</p></li>
            <li><p>Napnij brzuch i nie ruszając bioder ani nie zmieniając pozycji łokci, przywiedź sztangę do góry w kierunku barków</p></li>
            <li><p>Wróć do pozycji wyjściowej</p></li>
          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>ZGINANIE RAMION Z HANTELKAMI</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Złap w obie ręce hantle, trzymając je chwytem neutralnym, z ramionami wyprostowanymi wzdłuż ciała</li>
            <li>Napnij brzuch i nie ruszając bioder ani nie zmieniając pozycji łokci, przywiedź hantle do góry w kierunku barków</li>
            <li>Wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>ZGINANIE RAMION ZE SZTANGĄ ŁAMANĄ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Złap sztangę podchwytem na szerokość barków, z ramionami wyprostowanymi przed sobą</li>
            <li>Napnij brzuch i nie ruszając bioder ani nie zmieniając pozycji łokci, przywiedź sztangę do góry w kierunku barków</li>
            <li>W połowie ruchu zatrzymaj go na 5 sekund</li>
            <li>Po 5 sekundach kontynuuj ruch do momentu, w którym sztanga znajdzie się na wysokości barków</li>
            <li>Wracając do pozycji wyjściowej, zatrzymaj ruch w połowie przez 5 sekund</li>
            <li>Wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="obrazek3"></div>
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