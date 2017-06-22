%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<head>
	<title>Login</title>
</head>
<body>
	<p>Invalid credentials or user not in session, login to use the application</p>
	<form action="/verify-credentials" method="POST">
		<input type="text" size="20" maxlength="100" name="username">
		<br/>
		<input type="password" size="20" maxlength="100" name="password">
		<br/>
		<input type="submit" name="login" value="login">
	</form>
</body>
