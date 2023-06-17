<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="triceps.css">
    <title>Triceps</title>
</head>
<body>

    <nav>
        <a href="main.jsp"><b>Strona główna</b></a>
        <a href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a>
        <a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a>
        <a href="AtlasCwiczen.jsp"><b>Atlas Ćwiczeń</b></a>
        <a href="kontakt.jsp"><b>Kontakt</b></a>
        <a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a>
        <a href="logout"><b>Wyloguj</b></a>
    </nav>

    <div class="opis">
        <h2>Mięsień trójgłowy ramienia (triceps brachii)</h2>
<p>Mięsień trójgłowy ramienia jest głównym mięśniem odpowiedzialnym za prostowanie ramienia w łokciu. Jest to mięsień o trzech głowach, który odgrywa istotną rolę w siłowych i funkcjonalnych działaniach górnej części ciała.</p>

<h3>Budowa mięśnia trójgłowego ramienia</h3>
<p>Mięsień trójgłowy ramienia składa się z trzech głów:</p>
<ul>
  <li>Głowa długa (long head): Ta głowa mięśnia jest największa i bierze początek w dolnym guzie łopatki. Jest umieszczona na tylnej stronie ramienia.</li>
  <li>Głowa krótka (short head): Ta głowa mięśnia ma swoje pochodzenie w kości ramiennej, w okolicy wyrostka kubkowatego. Jest umieszczona na bocznej stronie ramienia.</li>
  <li>Głowa przyśrodkowa (medial head): Ta głowa mięśnia jest najbardziej wewnętrzna i ma swoje pochodzenie w kości ramiennej, powyżej wyrostka kubkowatego.</li>
</ul>

<h3>Funkcje mięśnia trójgłowego ramienia</h3>
<ul>
  <li>Prostowanie ramienia: Mięsień trójgłowy ramienia jest głównym mięśniem zaangażowanym w prostowanie ramienia w łokciu. Jest aktywny podczas wykonywania ćwiczeń takich jak pompki na poręczach, wyciskanie sztangi na wyciągu górnym oraz inne ćwiczenia na triceps.</li>
  <li>Stabilizacja stawu łokciowego: Mięsień trójgłowy ramienia pełni również rolę stabilizacji stawu łokciowego podczas wykonywania różnych ruchów ramienia.</li>
</ul>
    </div>
    <div class="zawartosc">
        <div class="tekst1">
            <h2>WYCISKANIE SZTANGI NA KLATKE PIERSIOWĄ WĄSKO</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Połóż się na ławce poziomej i złap sztangę nachwytem na szerokość barków</p></li>
            <li><p>Ramiona trzymaj wyprostowane przed sobą na wysokości klatki piersiowej</p></li>
            <li><p>Obniż sztangę kontrolowanym ruchem pionowo w dół, prowadząc łokcie blisko tułowia/p></li>
            <li><p>Kiedy sztanga znajdzie się kilka centymetrów od klatki piersiowej (mostka), wypchnij ją dynamicznie w górę</p></li>
          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>ŚCIĄGANIE WYCIĄGU GÓRNEGO</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Stań przodem do wyciągu, do którego na najwyższym poziomie zaczepiona jest lina</li>
            <li>Złap linę na obu jej końcach chwytem neutralnym z ramionami zgiętymi w łokciach pod kątem 90°</li>
            <li>Trzymając brzuch napięty i nie zmieniając pozycji łokci, ściągnij oba końce liny w dół i do zewnątrz</li>
            <li>Wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>WYPROST TRICEPSA Z WYKORZYSTANIEM ŁAWKI</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Umieść lewe kolano i lewą rękę na ławce poziomej a w prawą rękę złap hantel, zginając prawe ramię w łokciu</li>
            <li>Pochyl tułów do przodu tak, by znajdował się w pozycji równoległej do ławki</li>
            <li>Nie zmieniając pozycji prawego łokcia, maksymalnie wyprostuj prawe ramię</li>
            <li>Wróć do pozycji wyjściowej a po wykonaniu określonej liczby powtórzeń, zmień strony</li>
           
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