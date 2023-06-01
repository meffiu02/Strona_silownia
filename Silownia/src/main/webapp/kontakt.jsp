 
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
     <title>Kontakt</title>
 </head>
 <body>
      <header>
         <nav> 
             <ul>
                 <li><a href="main.jsp"><b>Strona główna</b></a></li>
                 <li><a href="wyborkalkulatora.jsp"><b>Kalkulatory</b></a></li>
                 <li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
                 <li><a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
                 <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
                 <li><a><%=session.getAttribute("nazwa-log") %></a></li>
                 <li><a href="logout"><b>Wyloguj</b></a></li>
             </ul>
         </nav>
     </header>
     
 <div class="container">    
     <form id="myForm" action="https://api.sheetmonkey.io/form/rDDCUEp3RmaPTQqVE8UUmy" method="post">
     <h3>W tym miejscu możesz się z nami skontaktować</h3>
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
             <button> Wyślij </button>
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
            <span>&copy 2023 Siłownia</span>
            <span><i class="fa-regular fa-envelope"></i>Adres e-mail: gym@wp.pl</span>
            <span><i class="fa-solid fa-phone"></i>Tel. komórkowy: 123-456-789</span>
    </div>
</footer>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>
     $('#myForm').submit(function() {
   // kod do przetworzenia formularza
 
   // wyświetlenie animowanego powiadomienia
       alert('Formularz został wysłany poprawnie!');
 
   // zwrócenie wartości false, aby formularz nie został wysłany
       return true;
 });
 </script>
 </body>
 
 </html>