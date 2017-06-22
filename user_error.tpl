<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand">Todo User Error</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form class="form-signin" action="/verify-credentials" method="POST">
					<h3 class="form-signin-heading" style="color:red">Invalid credentials or user not in session, Sign in to use the application:</h3>
					<br/>
					<label for="username" class="sr-only">Username</label>
					<input id="username" class="form-control" placeholder="Username" type="text" maxlength="20" name="username">
					<label for="password" class="sr-only">Password</label>
					<input id="password" class="form-control" placeholder="Password" type="password" maxlength="20" name="password">
					<br/><br/>
					<button class="btn btn-md btn-primary btn-block" type="submit">Sign in</button>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>
