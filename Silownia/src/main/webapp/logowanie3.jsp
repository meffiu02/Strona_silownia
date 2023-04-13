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
<input type="hidden" id="status" value="<%=request.getAttribute("status-rej") %>">

    <div class="container" id="container">
        <div class="form-container register-container">
            <form method="post" action="register">
                <h1>Rejestracja</h1>
                <input type="text" name="nazwa-rej" placeholder="Nazwa" required>
                <input type="email" name="email-rej" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" required>
                <input type="password" name="haslo-rej"placeholder="Hasło"required>
                <button>Rejestracja</button>
            </form>
        </div>
        <div class="form-container login-container">
            <form method="post" action="login">
                <h1>Logowanie</h1>
                <input type="email" name="email-log" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" required>
                <input type="password" name="haslo-log" placeholder="Hasło"required>
                <div class="content">
                    <div class="checkbox">
                        <input type="checkbox" name="checkbox" id="checkbox">
                        <label>Zapamiętaj mnie</label>
                    </div>
                    <div class="pass-link">
                        <a href="#">Zapomniałeś hasła?</a>
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
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script src="logowanie3.js"></script>
<script type="text/javascript">
	
		var status = document.getElementById("status").value;
		if(status == "failed")
		{
			swal("Błąd","Nie udało się zalogować","error");
			document.getElementById("status").value="";	

		}
		

	</script>
</body>

</html>