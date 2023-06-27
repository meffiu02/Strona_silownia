<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="brzuch.css">
     <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Brzuch</title>
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
         <a href="#" onclick="confirmLogout()"><b>Wyloguj</b></a>
    </nav>

    <div class="opis">
        <h2>Mięśnie brzucha</h2>
<p>Mięśnie brzucha odgrywają istotną rolę w stabilizacji tułowia, utrzymaniu dobrej postawy ciała i zapewnieniu siły w core (centralnej części ciała). Wzmacnianie mięśni brzucha przyczynia się do poprawy wydolności, równowagi oraz estetycznego wyglądu brzucha.</p>

<h3>Mięśnie prostego brzucha</h3>
<ol>
  <li>Mięsień prosty brzucha (rectus abdominis): To główny mięsień brzucha, który rozciąga się od mostka do kości miednicy. Odpowiada za zginanie tułowia, jak również tworzy charakterystyczne "klocki" brzucha.</li>
</ol>

<h3>Mięśnie boczne brzucha</h3>
<ol>
  <li>Mięsień skośny zewnętrzny brzucha (external oblique): Ten mięsień znajduje się na bokach brzucha. Pomaga w skręcaniu tułowia oraz stabilizacji.</li>
  <li>Mięsień skośny wewnętrzny brzucha (internal oblique): To mięsień położony głębiej niż mięsień skośny zewnętrzny i bierze udział w skręcaniu tułowia w przeciwnym kierunku.</li>
  <li>Mięsień poprzeczny brzucha (transverse abdominis): Jest to głęboki mięsień, który działa jak naturalny gorset, wspierając stabilizację tułowia i utrzymanie napięcia w core.</li>
</ol>

<h3>Mięśnie międzyżebrowe</h3>
<ol>
  <li>Mięśnie międzyżebrowe zewnętrzne (external intercostals): To mięśnie znajdujące się między żebrami, które biorą udział w unoszeniu żeber podczas wdechu.</li>
  <li>Mięśnie międzyżebrowe wewnętrzne (internal intercostals): Są to mięśnie również zlokalizowane między żebrami, które pomagają w obniżaniu żeber podczas wydechu.</li>
</ol>


    </div>
    <div class="zawartosc">
        <div class="tekst1">
            <h2>ODWRÓCONE BRZUSZKI</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Połóż się na plecach z nogami ugiętymi w kolanach i stopami na podłożu.</p></li>
            <li><p>Unoszenie tułowia: Podnieś tułów w kierunku kolan, skupiając się na napięciu mięśni brzucha.</p></li>
            <li><p>Opuszczanie tułowia: Powoli opuść tułów na podłoże, utrzymując napięcie mięśni brzucha.</p></li>
            <li><p>Kontrolowane oddychanie i tempo: Pamiętaj o prawidłowym oddychaniu i wykonuj ćwiczenie w kontrolowanym tempie, unikając nagłych ruchów.</p></li>

          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>PLANK W POZYCJI BOCZNEJ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Początkowa pozycja: Leż na boku, opierając się na przedramieniu.</li>
            <li>Unoszenie bioder: Podnieś biodra i utrzymaj ciało w linii prostej.</li>
            <li>Utrzymuj pozycję: Wytrzymaj w tej pozycji przez określony czas, utrzymując napięcie mięśni bocznych.</li>
            <li>Zmień stronę: Po zakończeniu powtórzeń lub ustalonego czasu, przejdź na drugą stronę i powtórz ćwiczenie.</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>BRZUSZKI-SKOSY</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Początkowa pozycja: Połóż się na plecach, zegnij nogi w kolanach i umieść stopy płasko na podłożu. Ręce możesz umieścić za głową lub skrzyżować na klatce piersiowej.</li>
            <li>Podnoszenie tułowia: Unieś tułów w kierunku przeciwnego kolana, wykonując skręt tułowia i skurcz boczków. Dotknij łokciem przeciwległego kolana, unikając naprężania szyi.</li>
            <li>Opuszczanie tułowia: Powoli opuść tułów na podłoże, kontrolując ruch. Skup się na napięciu boczków i utrzymaj kontrolowane tempo podczas opuszczania.</li>
            <li>Zmiana strony: Po zakończeniu powtórzeń lub ustalonego czasu, zmień stronę i powtórz ćwiczenie, wykonując skręt tułowia w kierunku przeciwnego kolana.</li>
          </ol>
          </div>
        <div class="obrazek3"></div>
        <div class="obrazek4"></div>
        <div class="tekst4">
            <h2>HOLLOW BODY</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Początkowa pozycja: Połóż się na plecach, wyprostuj nogi i wyciągnij ręce nad głowę. Napnij mięśnie brzucha i dociskaj dolną część pleców do podłoża.</li>
            <li>Unoszenie nóg i ramion: Z jednoczesnym uniesieniem nóg i ramion z podłoża, stwórz lekko zaokrągloną pozycję, podobną do łódki. Skoncentruj się na utrzymaniu napięcia w mięśniach brzucha.</li>
            <li>Wytrzymaj w pozycji "hollow body": Utrzymuj tę pozycję przez określony czas, kontrolując napięcie mięśniowe i unikając obniżania nóg lub ramion.</li>
            <li>Powrót do początkowej pozycji: Powoli opuść nogi i ramiona na podłoże, powracając do wyjściowej pozycji.</li>
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