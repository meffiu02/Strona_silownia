<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="plecy.css">
    <title>Plecy</title>
</head>
<body>

    <nav>
        <a href="main.jsp"><b>Strona główna</b></a>
        <a href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a>
        <a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a>
        <a href="AtlasCwiczen.jsp"><b>Atlas Ćwiczeń</b></a>
        <a href="kontakt.jsp"><b>Kontakt</b></a>
        <a><%=session.getAttribute("nazwa-log") %></a>
        <a href="logout"><b>Wyloguj</b></a>
    </nav>

    <div class="opis">
        <h2>Mięśnie pleców</h2>
        <p>Mięśnie pleców są niezwykle ważne dla utrzymania dobrej postawy ciała i zapewnienia stabilności górnej części ciała. Wzmacnianie mięśni pleców przyczynia się do poprawy wydolności, siły oraz zapobiegania bólom i urazom pleców.</p>

        <h3>Mięśnie grzbietu</h3>
        <ol>
            <li>Mięsień czworoboczny (trapezius): Jest to największy mięsień grzbietu, który rozciąga się od szyi, przez barki aż do dolnej części pleców. Odpowiada za unoszenie i opuszczanie ramion, rotację oraz stabilizację łopatki.</li>
            <li>Mięsień szeroki grzbietu (latissimus dorsi): To duży mięsień pleców, który rozciąga się od dolnej części pleców do ramion. Jest zaangażowany w ruchy barku, zginanie ramion, przyciąganie oraz obracanie.</li>
            <li>Mięsień ramienny tylny (deltoid posterior): Ten mięsień znajduje się na tylniej części ramienia i przyczepia się do łopatki. Odpowiada za ruchy w tylnym płaszczyźnie, takie jak wyciąganie ramion do tyłu.</li>
        </ol>

        <h3>Mięśnie dolnej części pleców</h3>
        <ol>
            <li>Mięsień prosty grzbietu (erector spinae): Ten mięsień przebiega wzdłuż kręgosłupa i pomaga utrzymać prostą postawę ciała. Jest zaangażowany w wyprosty pleców oraz stabilizację kręgosłupa.</li>
            <li>Mięsień biodrowo-lędźwiowy (quadratus lumborum): To mięsień zlokalizowany po bokach kręgosłupa, między dolnymi żebrowymi a miednicą. Pomaga w stabilizacji kręgosłupa i bierze udział w skrętach tułowia.</li>
        </ol>

    </div>
    <div class="zawartosc">
        <div class="tekst1">
            <h2>PODCIAGANIE NA DRĄŻKU</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li><p>Złap drążek do podciągania nachwytem (palce skierowane od siebie) nieco szerzej niż na szerokość barków</p></li>
            <li><p>Zawiśnij na drążku z wyprostowanymi ramionami, krzyżując nogi za sobą i zginając je pod kątem 90°</p></li>
            <li><p>Nie ruszając biodrami i nogami, podciągnij się do góry zginając ramiona i jednocześnie ściągając łopatki do siebie</p></li>
            <li><p>Kiedy górna część klatki piersiowej znajdzie się na wysokości drążka, powoli wróć do pozycji wyjściowej</p></li>
          </ol>
          </div>
        <div class="obrazek1"></div>
        <div class="obrazek2"></div>
        <div class="tekst2">
            <h2>WIOSŁOWANIE ZE SZTANGĄ</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Złap sztangę nachwytem na szerokość bioder i trzymaj ją w wyprostowanych ramionach</li>
            <li>Nogi rozstaw na szerokość barków zginając je lekko w kolanach i pochyl się do przodu (trzymając plecy proste) do momentu, w którym tułów znajdzie się równolegle do podłogi</li>
            <li>Podciągnij sztangę do górnej części brzucha, zginając ramiona w łokciach, prowadząc łokcie blisko tułowia i ściągając łopatki do siebie</li>
            <li>Kiedy sztanga znajdzie się blisko tułowia, wróć do pozycji wyjściowej kontrolując ruch</li>
            <li>Przez cały czas trwania ćwiczenia patrz prosto przed siebie i nie wykonuj ruchu tułowiem</li>
          </ol>
          </div>
        <div class="tekst3">
            <h2>ŚCIĄGANIE WYCIAGU </h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Stań przodem do wyciągu, do którego na wysokości głowy zamocowana jest lina</li>
            <li>Złap oba końce liny chwytem neutralnym i wykonaj kilka małych kroków w tył, tak by Twoje ramiona były wyprostowane a lina lekko naciągnięta</li>
            <li>Przyciągnij linę do głowy zginając ramiona w łokciach, odwodząc łokcie do zewnątrz i ściągając łopatki lekko w dół</li>
            <li>Kiedy Twoje ręce znajdą się na wysokości uszu, wróć do pozycji wyjściowej</li>
          </ol>
          </div>
        <div class="obrazek3"></div>
        <div class="obrazek4"></div>
        <div class="tekst4">
            <h2>PRZYCIĄGANIE LINKI Z WYCIAGU DOLNEGO</h2>
            <h3>Jak wykonać to ćwiczenie?</h3>
            <ol>
            <li>Usiądź przed wyciągiem, do którego przymocowany jest wąski uchwyt, z wyprostowanymi plecami, nogami lekko zgiętymi w kolanach i piętami opartymi o podłogę</li>
            <li>Złap uchwyt nachwytem i trzymaj go w wyprostowanych ramionach</li>
            <li>Patrząc cały czas przed siebie i trzymając brzuch napięty, przyciągnij uchwyt do klatki piersiowej, prowadząc łokcie blisko tułowia i ściągając łopatki do siebie</li>
            <li>Obniż ciało do podłogi, zginając ramiona w łokciach</li>
            <li>Kiedy uchwyt znajdzie się blisko klatki piersiowej, wróć do pozycji wyjściowej</li>
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
</body>
</html>