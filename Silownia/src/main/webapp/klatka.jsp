<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="klatka.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Klatka piersiowa</title>
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
	
<div class="opis">
	<h2>Mięśnie klatki piersiowej</h2>
  <p>Mięśnie klatki piersiowej odgrywają kluczową rolę w utrzymaniu dobrej postawy ciała, stabilizacji górnej części tułowia oraz wykonywaniu różnorodnych ruchów ramion. Wzmacnianie mięśni klatki piersiowej może przyczynić się do poprawy siły, wydolności oraz zapobiegania bólom i urazom w tej okolicy.</p>

  <h2>Mięsień piersiowy większy (pectoralis major)</h2>
  <p>Jest to największy mięsień klatki piersiowej, który rozciąga się od mostka i żebra do kości ramiennej. Odpowiada za przyciąganie ramion do środka, unoszenie ramion do przodu, a także za ruchy związane z obracaniem i wypychaniem przedmiotów z rąk.</p>

  <h2>Mięsień piersiowy mniejszy (pectoralis minor)</h2>
  <p>Ten mięsień znajduje się pod mięśniem piersiowym większym i przyczepia się do łopatki. Jego główną funkcją jest obniżanie i obracanie łopatki, co jest istotne przy wykonywaniu ruchów ramion i podnoszeniu przedmiotów.</p>

  <h2>Mięśnie naramienne (m. deltoides)</h2>
  <p>Mimo że mięśnie naramienne są głównie umiejscowione na ramionach, mają również znaczący wpływ na klatkę piersiową. Mięsień naramienny przedni (deltoid anterior) odpowiada za unoszenie ramion do przodu, mięsień naramienny środkowy (deltoid medial) za unoszenie ramion na boki, natomiast mięsień naramienny tylny (deltoid posterior) za unoszenie ramion do tyłu. Te ruchy są często wykonywane w połączeniu z ruchami klatki piersiowej, co czyni mięśnie naramienne ważnymi dla stabilizacji i mobilności tej okolicy.</p>

  <h2>Mięśnie międzyżebrowe (intercostal muscles)</h2>
  <p>Mięśnie międzyżebrowe znajdują się między żebrami, a ich główną rolą jest wspomaganie oddychania poprzez unoszenie i opuszczanie żeber. Wzmacnianie tych mięśni może przyczynić się do poprawy wydolności układu oddechowego oraz stabilizacji klatki piersiowej.</p>

  <p>Podsumowując, odpowiednie wzmacnianie mięśni klatki piersiowej jest istotne dla utrzymania dobrej postawy, stabilności tułowia oraz wykonywania różnorodnych ruchów ramion. Regularne ćwiczenia ukierunkowane na te mięśnie mogą przyczynić się do poprawy siły, wydolności oraz zapobiegania bólom i urazom w okolicach klatki piersiowej.</p>
   </div>
    <div class="zawartosc">
         <div class="tekst1">
            <h2>WYCISKANIE NA ŁAWCE PŁASKIEJ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Złap sztangę nachwytem nieco szerzej niż na szerokość barków 
                i trzymaj ją w wyprostowanych ramionach, nieco wyżej niż na poziomie mostka</p></li>
            <li><p>Ściągnij do siebie łopatki i napnij mięśnie między nimi, utrzymując to napięcie przez cały czas trwania ćwiczenia (wpłynie to na większą stabilność i spowoduje, że będziesz mógł wygenerować większą moc podczas ruchu wypychania ciężaru w górę)</p></li>
            <li><p>Obniż sztangę do klatki piersiowej (do mostka) trzymając łokcie jak najbliżej tułowia (w ten sposób ograniczysz przeciążenia na staw barkowy)</p></li>
            <li><p>Dynamicznym ruchem wypchnij sztangę do góry do pozycji wyjściowej</p></li>
            <li><p>Przez cały czas trwania ćwiczenia utrzymuj brzuch napięty. Stopy rozstaw stabilnie na podłodze angażując do pracy mięśnie nóg</p></li>
          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>WYCISKANIE NA ŁAWCE PŁASKIEJ DODATNIEJ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Złap sztangę nachwytem nieco szerzej niż na szerokość barków i trzymaj ją w wyprostowanych ramionach, nieco wyżej niż na poziomie mostka</li>
            <li>Ściągnij do siebie łopatki i napnij mięśnie między nimi, utrzymując to napięcie przez cały czas trwania ćwiczenia (wpłynie to na większą stabilność i spowoduje, że będziesz mógł wygenerować większą moc podczas ruchu wypychania ciężaru w górę)</li>
            <li>Obniż sztangę do klatki piersiowej (do mostka) trzymając łokcie jak najbliżej tułowia (w ten sposób ograniczysz przeciążenia na staw barkowy)</li>
            <li>Dynamicznym ruchem wypchnij sztangę do góry do pozycji wyjściowej</li>
            <li>Przez cały czas trwania ćwiczenia utrzymuj brzuch napięty. Stopy rozstaw stabilnie na podłodze angażując do pracy mięśnie nóg</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>WYCISKANIE NA ŁAWCE PŁASKIEJ UJEMNEJ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
  <li>Połóż się na plecach na ławce skierowanej w dół pod kątem 45°, zabezpieczając nogi o stabilny przedmiot</li>
  <li>Złap sztangę nachwytem nieco szerzej niż na szerokość barków</li>
  <li>
    <p>Obniż sztangę do klatki piersiowej (do mostka)</p>
    <ul>
      <li>Unikaj nadmiernego zgięcia w stawie łokciowym</li>
      <li>Miejsce, gdzie sztanga dotyka klatki piersiowej, powinno być kontrolowane i kontrolowane przez całe ćwiczenie</li>
    </ul>
  </li>
  <li>
    <p>Wypchnij sztangę do góry do pozycji wyjściowej</p>
    <ul>
      <li>Prostuj ramiona i kontroluj ruch sztangi</li>
      <li>Unikaj podrywania bioder od ławki podczas wypychania sztangi</li>
    </ul>
  </li>
</ol>
            
          </div>
        <div class="obrazek3"></div>
        <div class="obrazek4"></div>
        <div class="tekst4">
            <h2>KLASYCZNE POMPKI</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Uklęknij na podłodze umieszczając ręce na podłodze, nieco szerzej niż na szerokość barków</li>
            <li>Przywiedź obie stopy blisko siebie, a następnie oderwij kolana od podłogi tak, by ciężar ciała spoczywał wyłącznie na rękach i stopach, a ciało znajdowało się w linii prostej</li>
            <li>Napnij pośladki i mięśnie brzucha, utrzymując napięcie przez cały czas trwania ćwiczenia</li>
            <li>Obniż ciało do podłogi, zginając ramiona w łokciach</li>
            <li>Kiedy klatka piersiowa znajdzie się kilka centymetrów od podłogi, wypchnij się do góry, prostując ramiona i wracając do pozycji wyjściowej</li>
            <li>Przez cały czas trwania ćwiczenia, skieruj wzrok prosto przed siebie i nie zmieniaj pozycji bioder (nie opuszczaj, nie podnoś i nie skręcaj)</li>
          </ol>
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