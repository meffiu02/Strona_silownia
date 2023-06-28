<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="barki.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Barki</title>
</head>
<body>

    <nav>
        <a href="main.jsp"><b>Strona główna</b></a>
        <a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a>
        <a href="tetno.jsp"><b>Kalkulator tętna</b></a>
        <a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a>
        <a href="#"><b>Pomiary</b></a>
        <a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a>
        <a href="kontakt.jsp"><b>Kontakt</b></a>
        <a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a>
        <a href="#" onclick="confirmLogout()"><b>Wyloguj</b></a>
    </nav>

    <div class="opis">
        <h2>Mięśnie barków</h2>
        <p>Mięśnie barków odgrywają kluczową rolę w stabilizacji i ruchomości górnej części ciała. Wzmacnianie mięśni barków przyczynia się do poprawy postawy ciała, wydolności oraz funkcjonalności ramion.</p>
        
        <h3>Mięśnie obręczy barkowej</h3>
        <ol>
          <li>Mięsień naramienny (deltoid): Jest to największy mięsień obręczy barkowej, który pokrywa boczną stronę ramienia. Odpowiada za ruchy ramienia we wszystkich płaszczyznach - unoszenie, boczne unoszenie i opuszczanie, wyciąganie do tyłu oraz obracanie.</li>
          <li>Mięsień nadgrzebieniowy (supraspinatus): To mięsień umieszczony na górnej części łopatki, który pomaga w uniesieniu ramienia na bok. Jest również ważny dla stabilizacji stawu ramiennego.</li>
          <li>Mięsień podgrzebieniowy (infraspinatus): Jest to mięsień umieszczony na tylnej części łopatki, który odpowiada za obrót zewnętrzny ramienia.</li>
          <li>Mięsień podłopatkowy (subscapularis): To mięsień znajdujący się na przedniej stronie łopatki, który bierze udział w obracaniu wewnętrznym ramienia.</li>
        </ol>
        
        <h3>Mięśnie ramienia</h3>
        <ol>
          <li>Mięsień dwugłowy ramienia (biceps brachii): Ten mięsień znajduje się na przedniej stronie ramienia i jest odpowiedzialny za zginanie ramienia w łokciu oraz obrót przedramienia.</li>
          <li>Mięsień trójgłowy ramienia (triceps brachii): To mięsień na tylniej stronie ramienia, który jest zaangażowany w prostowanie ramienia w łokciu.</li>
          <li>Mięsień koraczo-ramienny (pectoralis minor): Ten mięsień bierze udział w unoszeniu ramienia do przodu oraz obracaniu wewnętrznym.</li>
        </ol>   

    </div>
    <div class="zawartosc">
        <div class="tekst1">
            <h2>WYCISKANIE SZTANGI ZZA GŁOWY STOJĄC</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Złap sztangę nachwytem nieco szerzej niż na szerokość barków i umieść ją na barkach, stopy rozstawiając na szerokość bioder</p></li>
            <li><p>Trzymając napięty brzuch i nie odchylając tułowia do tyłu, wypchnij sztangę do góry, maksymalnie prostując ramiona</p></li>
            <li><p>Wróć do pozycji wyjściowej</p></li>
            <li><p>Kiedy sztanga znajdzie się powyżej poziomu głowy, możesz delikatnie wypchnąć głowę do przodu</p></li>
            <li><p>Pamiętaj, by w ruch wypychania sztangi w górę nie angażować nóg a wyłącznie barki i ramiona</p></li>
          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>UNOSZENIE RAMION Z HANTALAMI W PRZÓD</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Stań w lekkim rozkroku rozstawiając stopy nieco szerzej niż na szerokość bioder</li>
            <li>W obie ręce złap hantle chwytem neutralnym a ramiona trzymaj wyciągnięte wzdłuż ciała i lekko zgięte w łokciach</li>
            <li>Unieś ramiona prosto przed siebie do momentu, w którym znajdą się na wysokości barków</li>
            <li>Zatrzymaj ruch na 1 sekundę i powoli wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>UNOSZENIE RAMION Z HANTALAMI W BOK</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Stań w lekkim rozkroku rozstawiając stopy nieco szerzej niż na szerokość bioder</li>
            <li>W obie ręce złap hantle podchwytem a ramiona trzymaj wyprostowane i wyciągnięte wzdłuż ciała</li>
            <li>Unieś ramiona w bok do momentu, w którym znajdą się na wysokości barków</li>
            <li>Zatrzymaj ruch na 1 sekundę i powoli wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="obrazek3"></div>
        <div class="obrazek4"></div>
        <div class="tekst4">
            <h2>UNOSZENIE RAMION W PRZÓD Z UŻYCIEM WYCIAGU DOLNEGO</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Zaczep do wyciągu uchwyt na najniższym poziomie i stań bokiem do niego</li>
            <li>Złap uchwyt nachwytem ręką zewnętrzną i przyciągnij go do siebie tak, by ręka znalazła się przy przeciwległym biodrze a linka wyciągu była lekko napięta</li>
            <li>Stopy rozstaw na szerokość bioder</li>
            <li>Nie zginając ramienia w łokciu, pociągnij uchwyt do góry po przekątnej do momentu, w którym ręka znajdzie się powyżej głowy</li>
            <li>Wróć do pozycji wyjściowej kontrolując ruch a po wykonaniu określonej ilości powtórzeń, zmień strony</li>
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