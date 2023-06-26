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
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'
	rel='stylesheet'>
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
  font-family: 'Poppins', cursive;
  background-image: url("https://img.freepik.com/free-vector/gradient-pastel-color-background_23-2149360873.jpg?w=740&t=st=1681398945~exp=1681399545~hmac=4f0bf02443adba1d0e4087b422f541f90cfb16b2cbab1a0e14e5482bd590255f");
}
.container{
    padding-top: 40px;
}
.placeicon {
	font-family: fontawesome
}

.custom-control-label::before {
	background-color: #dee2e6;
	border: #dee2e6
}
.btn-block{
    width: 110px;
    height: 50px;
}
.btn{
    background-color: #333;
  color: #fff;
  border: none;
  border-radius: 20px;
  box-shadow: 0 0 5px rgba(0,0,0,0.2);
  transition: 0.3s ease-in-out;
  letter-spacing: 3px;
  font-size: 20px;
  font-family: 'Poppins', cursive;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body bg-info'>
	
	<input type="hidden" id="status_new_failed" value="<%=request.getAttribute("status_new_failed") %>">
	
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
	<div>
		<!-- Container containing all contents -->
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
					<!-- White Container -->
					<div class="container bg-white rounded mt-2 mb-2 px-0">
						<!-- Main Heading -->
						<div class="row justify-content-center align-items-center pt-3">
							<h1>
								<strong>Zmiana hasła</strong>
							</h1>
						</div>
						<div class="pt-3 pb-3">
							<form class="form-horizontal" action="newPassword" method="POST">
								<!-- User Name Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="password" placeholder="&#xf084; &nbsp; Nowe hasło"
											class="form-control border-info placeicon" minlength="8" pattern="^(?=.*[A-Z])(?=.*[@#$%^&+=]).*$" autocomplete="off" title="Hasło musi mieć minimum 8 znaków, zawierać wielką literę oraz znak specjalny.">
									</div>
								</div>
								<!-- Password Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="confPassword"
											placeholder="&#xf084; &nbsp; Powtórz nowe hasło"
											class="form-control border-info placeicon" minlength="8" pattern="^(?=.*[A-Z])(?=.*[@#$%^&+=]).*$" autocomplete="off" title="Hasło musi mieć minimum 8 znaków, zawierać wielką literę oraz znak specjalny.">
									</div>
								</div>
							
								<!-- Log in Button -->
								<div class="form-group row justify-content-center">
									<div class="col-3 px-3 mt-3">
										<input type="submit" value="Resetuj"
											class="btn btn-block btn-info">
									</div>
								</div>
							</form>
						</div>
						<!-- Alternative Login -->
						<div class="mx-0 px-0 bg-light">
							
							<!-- Horizontal Line -->
							<div class="px-4 pt-5">
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
	
		
        
        
        var status_new_failed = document.getElementById("status_new_failed").value;
        if( status_new_failed == "resetFailed")
        {

            swal("Błąd zmiany hasła","Zmiana hasła nie powiodła się","error");
            document.getElementById("status_new_failed").value="";

        }

        
	
	</script>
</body>
</html>