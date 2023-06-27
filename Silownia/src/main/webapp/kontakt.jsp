 
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
      <link rel="stylesheet" href="kontakt.css">
       <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.15.5/dist/sweetalert2.min.css">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     <title>Kontakt</title>
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
                 <li><a href="#" onclick="confirmLogout()"><b>Wyloguj</b></a></li>
             </ul>
         </nav>
     </header>
     
 <div class="container">    
     <form id="myForm" action="https://api.sheetmonkey.io/form/rDDCUEp3RmaPTQqVE8UUmy" method="post">
     <h3>W tym miejscu możesz się z nami skontaktować</h3>
     <h4>Odpowiedź otrzymasz na zarejestrowanego maila</h4>
     <h6>Uzupełnij poniższy formularz, a my postaramy się odpowiedzieć jak naszybciej</h6>
     <div class="items">
         <input type="hidden" name="e-mail" value=" <%= session.getAttribute("email-log") %>">
         <input type="hidden"  value="x-sheetmonkey-current-date-time" />
         <br><br>
     </div>
     
     <div class="items">
     <label>Temat: <input type="text" name="temat" required /></label>
     <input type="hidden"  value="x-sheetmonkey-current-date-time" />
    </div>
     <br><br>
     
     <div class="items">
             <label>Opis: <textarea class="opis" type="text" name="opis" required></textarea></label>
             <input type="hidden" value="x-sheetmonkey-current-date-time" />
             <label><input type="hidden" name="czas" value="x-sheetmonkey-current-date-time" /></label>
         </div>
         <div class="przycisk">
             <button class="animate__animated animate__bounce"> Wyślij </button>
         </div>
     
     <input 
             type="hidden" 
             name="x-sheetmonkey-redirect" 
             value="http://localhost:8082/Silownia/main.jsp" />
     <br><br>
     
 </form>
 </div>
 <footer>
    <div class="footer">
            <span class="stopka">&copy 2023 Siłownia</span>
            <span class="stopka"><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
            <span class="stopka"><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
    </div>
</footer>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $('#myForm').submit(function() {
    // kod do przetworzenia formularza

    // wyświetlenie animowanego powiadomienia za pomocą SweetAlert2
    Swal.fire({
      icon: 'success',
      title: 'Formularz został wysłany poprawnie!',
      showConfirmButton: false,
      timer: 1500
    });

    // zwrócenie wartości false, aby formularz nie został wysłany
    return true;
  });
</script>
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