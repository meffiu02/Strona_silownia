 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style type="text/css">
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
.panel{
    background-color: aquamarine;
    border-radius: 10px;
}
.form-gap {
    padding-top: 70px;
}
.btn{
    background-color: rgb(54, 117, 168);
}
.btn:hover{
    background-color:gray;
}
</style>
</head>

<body>
	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-4x"></i>
							</h3>
							<h2 class="text-center">Wpisz kod OTP</h2>
									<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<p class='text-danger ml-1'>"+"Kod został wysłany na Twój adres e-mail"+"</p>");
		  			}
		  
		  %>
	
							<div class="panel-body">

								<form id="register-form" action="ValidateOtp" role="form" autocomplete="off"
									class="form" method="post">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope color-blue"></i></span> <input
												id="opt" name="otp" placeholder="Kod OTP"
												class="form-control" type="text" required="required">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit"
											class="btn btn-lg btn-primary btn-block"
											value="Zresetuj hasło" type="submit">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>