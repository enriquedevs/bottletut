<!DOCTYPE html>
<html>
<head>
	<title>Todo List</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand">Edit Todo Task</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 text-center">
				<h3>Edit the task with ID = {{no}}</h3>
				<form action="/edit/{{no}}" method="GET" class="form-inline">
					<div class="form-group">
						<label for="task">Task:</label>
						<input type="text" name="task" value="{{old[0]}}" maxlength="100" class="form-control">
						<select name="status">
							<option>open</option>
							<option>closed</option>
						</select>
					<div/>
					<br/>
					<input type="submit" name="save" value="save">
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>
