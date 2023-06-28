 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
 <link rel="shortcut icon" href="gym.ico" type="image/x-icon">
<title>Snippet - BBBootstrap</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
 @import url("https://fonts.googleapis.com/css2?family=Poppins");
body {
	
  margin: 0;
  padding: 0;
  justify-content: center;
  background-repeat: no-repeat;
  background-size: cover;
  overflow:  hidden;
  background-image: url("https://img.freepik.com/free-vector/gradient-pastel-color-background_23-2149360873.jpg?w=740&t=st=1681398945~exp=1681399545~hmac=4f0bf02443adba1d0e4087b422f541f90cfb16b2cbab1a0e14e5482bd590255f");

}
h2{
    font-family: 'Poppins', cursive;
    text-align: center;
}
h3{
    font-family: 'Poppins', cursive;
    text-align: center;
}
.forgot {
	background-color: white;
	padding: 12px;
	border: 1px solid #dfdfdf;
    border-radius: 10px;
    font-family: 'Poppins', cursive;
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}
.card{
    padding: 20px;
    
}
.card-footer {
	background-color: #fff;
}
.card-body{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.btn {
    font-size: 20px;
    margin-top: 10px;
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745;
    font-family: 'Poppins', cursive;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container padding-bottom-3x mb-2 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<h2>Zapomniałeś hasła?</h2>
					<p>Zmień swoje hasło w 3 krokach. Pomoże Ci to bezpiecznie zmienić hasło!</p>
					<ol class="list-unstyled">
						<li><span class="text-primary text-medium">1. </span>Wpisz poniżej swój adres e-mail.</li>
						<li><span class="text-primary text-medium">2. </span>Otrzymasz na adres e-mail kod OTP</li>
						<li><span class="text-primary text-medium">3. </span>Wpisz swój indywidualny kod OTP na następnej stronie</li>
					</ol>
				</div>
				<form class="card mt-4" action="forgotPassword" method="POST">
					<div class="card-body">
						<div class="form-group">
                            <h3>Wprowadź swój adres e-mail</h3>
						<input class="form-control" type="text" name="email" id="email-for-pass" required=""><small
								class="form-text text-muted">Wprowadź zarejestrowany adres e-mail. Następnie wyślemy e-mailem hasło jednorazowe na ten adres.</small>
						</div>
                        <button class="btn btn-success" type="submit">Wyślij kod</button>
						<button class="btn btn-danger" type="submit" onclick="window.location.href = 'uzytkownik.jsp';return false;"> Cofnij </button>
					</div>
					
						
					
				</form>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'>
	 // Pobierz adres e-mail z sesji i ustaw go w polu wprowadzania
	  var emailFromSession = '<%= session.getAttribute("email-log") %>';
	  document.getElementById('email-for-pass').value = emailFromSession;
	</script>
</body>
</html>