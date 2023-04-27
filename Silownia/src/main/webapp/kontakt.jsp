 
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
                <li> <a href="#"><b>Pomiary</b></a></li>
                <li><a href="#"><b>Atlas ćwiczeń</b></a></li>
                <li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
                <li><a><%=session.getAttribute("nazwa-log") %></a></li>
            	<li><a href="logout"><b>Wyloguj</b></a></li>
            </ul>
        </nav>
    </header>
    
    
    <form id="myForm" action="https://api.sheetmonkey.io/form/rDDCUEp3RmaPTQqVE8UUmy" method="post">
    <!-- Put HTML input fields in here and see how they fill up your sheet -->
    <input 
            type="hidden"
            name="e-mail"
            value=" <%= session.getAttribute("email-log") %>">
    <input type="hidden"  value="x-sheetmonkey-current-date-time" />
    <br><br>

    <label>Temat: <input type="text" name="temat" required /></label>
    <input type="hidden"  value="x-sheetmonkey-current-date-time" />
   
    <br><br>

    <label>Opis: <textarea id="opis" name="opis" rows="5" cols="50" ></textarea></label>
    <input type="hidden" value="x-sheetmonkey-current-date-time" />
    
    <label><input type="hidden" name="czas" value="x-sheetmonkey-current-date-time" /></label>
    
    <button> Wyślij </button>
    
    <input 
            type="hidden" 
            name="x-sheetmonkey-redirect" 
            value="http://localhost:8082/Silownia/main.jsp" />
    <br><br>
    
</form>
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