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
				<a class="navbar-brand">Todo List</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
				<h2>The open items are as follows:</h2>
				<table class="table table-hover table-striped table-responsive table-condensed">
					<thead> 
						<tr> 
							<th>Id</th> 
							<th>Task</th> 
							<th>Last edited by</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr> 
					</thead>
					<tbody>
						%for row in rows:
						<tr>
							%for col in row:
		 					<td>{{col}}</td>
							%end
							<td><button onclick="redirectToEditItem(this)">Edit Item</button></td>
							<td><button onclick="redirectToDeleteItem(this)">Delete Item</button></td>
						</tr>
						%end
					</tbody>
				</table>
				<br/>
				<div class="container-flow text-center">
					<h3>Add a new task to the ToDo list:</h3>
					<form action="/new" method="GET" class="form-inline">
						<div class="form-group">
							<label for="task">Task:</label>
							<input type="text" maxlength="100" name="task" class="form-control">
						</div>
						<input type="submit" name="save" value="save"/>
					</form>	
				</div>
			<div class="col-sm-1"></div>
		</div>
	</div>
	<script type="text/javascript">
		function redirectToEditItem(e){
			// retrieving item number from button's row clicked and then redirect to edit item page
			var no = e.parentNode.parentNode.childNodes[1].innerText; 
			if (no) window.location.href='/edit/' + no;
		};
		
		function redirectToDeleteItem(e){
			// retrieving item number from button's row clicked and then redirect to delete item page
			var no = e.parentNode.parentNode.childNodes[1].innerText; 
			if (no) window.location.href='/delete/' + no;
		};
	</script>
</body>
</html>
