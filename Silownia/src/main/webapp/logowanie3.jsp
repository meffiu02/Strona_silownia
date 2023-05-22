 <%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8" />
    <title>Logowanie/Rejestracja</title>
    <meta name="description" content="Logowanie/Rejestracja" />
    <meta name="keywords" content="siłownia, gym, fitness, bmi, bmr" />
    <meta name="author" content="Mateusz Jeżak" />
    <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet">
    <link rel="stylesheet" href="logowanie3.css"> 

</head>

<body>

<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<input type="hidden" id="status_rej" value="<%=request.getAttribute("status_rej") %>">
<input type="hidden" id="status_new" value="<%=request.getAttribute("status_new") %>">
<input type="hidden" id="status_new_failed" value="<%=request.getAttribute("status_new_failed") %>">
    <div class="container" id="container">
        <div class="form-container register-container">
            <form method="post" action="register" accept-charset="UTF-8">
                <h1>Rejestracja</h1>
                <input type="text" name="nazwa-rej" placeholder="Nazwa" required autocomplete="off">
                <input type="email" name="email-rej" placeholder="Email" autocomplete="off" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" required>
                <input type="password" name="haslo-rej"placeholder="Hasło"required autocomplete="off">
                <button>Rejestracja</button>
            </form>
        </div>
        <div class="form-container login-container">
            <form method="post" action="login" accept-charset="UTF-8">
                <h1>Logowanie</h1>
                <input type="text" name="nazwa-log" placeholder="Nazwa użytkownika" required autocomplete="off">
                <input type="password" name="haslo-log" placeholder="Hasło"required autocomplete="off">
                <div class="content">
                    <div class="checkbox">
                        <input type="checkbox" name="checkbox" id="checkbox">
                        <label>Zapamiętaj mnie</label>
                    </div>
                    
                    <div class="pass-link">
                        <a href="forgotPassword.jsp">Zapomniałeś hasła?</a>
                    </div>
                </div>
                <button>Zaloguj</button>
            </form>
        </div>

        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1 class="title">Witaj <br> ponownie</h1>
                    <p>Jeżeli masz już konto zaloguj się tutaj</p>
                    <button class="ghost" id="login">Zaloguj
                        <i class="lni lni-arrow-left login"></i>
                    </button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1 class="title">Rozpocznij tutaj</h1>
                    <p>Jeżeli nie masz jeszcze konta zarejestruj się tutaj</p>
                    <button class="button ghost" id="register">Zarejestruj
                        <i class="lni lni-arrow-right register"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
   <script src="logowanie3.js"></script>
<script type="text/javascript">

		var status_success_rej = document.getElementById("status_rej").value;
		if(status_success_rej == "success_rej")
		{
			swal("Tak jest!!!","Udało się zarejestrować.","success");
			document.getElementById("status_rej").value="";	
			
		}
		var status = document.getElementById("status").value;
		if(status == "failed")
		{
			swal("Błąd logowania","Nie udało się zalogować. Podano błędną nazwe użytkownika lub hasło","error");
			document.getElementById("status").value="";	

		}
		
		var status_rej = document.getElementById("status_rej").value;
		if(status_rej == "failed_rej")
		{
			
			swal("Błąd rejestracji","Nie udało się zarejestrować. Użytkownik o podanym adresie e-mail lub nazwie użytkownika już istnieje","error");
			document.getElementById("status_rej").value="";	

		}
		
		
		var status_new_success = document.getElementById("status_new").value;
		if(status_new_success == "resetSuccess")
		{
			
			swal("Udało się","Zmiana hasła przebiegła pomyślnie","success");
			document.getElementById("status_new").value="";	

		}


	</script>
</body>

</html>