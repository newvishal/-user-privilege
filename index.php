
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
	<meta name="author" content="Creative Tim">

	<!-- Title -->
	<title>Vitessio</title>

	<!-- Favicon -->
	<link href="assets/img/brand/favicon.png" rel="icon" type="image/png">

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800" rel="stylesheet">

	<!-- Icons -->
	<link href="assets/css/icons.css" rel="stylesheet">

	<!--Bootstrap.min css-->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Ansta CSS -->
	<link href="assets/css/dashboard.css" rel="stylesheet" type="text/css">

	<!-- Single-page CSS -->
	<link href="assets/plugins/single-page/css/main.css" rel="stylesheet" type="text/css">

</head>

<body class="bg-gradient-primary">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-5">

				<form method="post" action="login.php" class="login100-form validate-form">
					<span class="login100-form-title">
						 Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" placeholder="Username" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" name="login" value="login" class="login100-form-btn btn-primary">login</button>
						<!-- <a  class="login100-form-btn btn-primary">
							Login
						</a> -->
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Ansta Scripts -->
	<!-- Core -->
	<script src="assets/plugins/jquery/dist/jquery.min.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>