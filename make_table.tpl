%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<head>
	<title>Todo List</title>
</head>
<body>
	<p>The open items are as follows:</p>
	<table border="1">
		%for row in rows:
		<tr>
			%for col in row:
	 		<td>{{col}}</td>
			%end
			<td><button onclick="redirectToEditItem(this)">Edit Item</button></td>
		</tr>
		%end
	</table>
	<br/>
	<p>Add a new task to the ToDo list:</p>
	<form action="/new" method="GET">
		<input type="text" size="100" maxlength="100" name="task">
		<input type="submit" name="save" value="save">
	</form>
	<script type="text/javascript">
		function redirectToEditItem(e){
			// retrieving item number from button's row clicked and then redirect to edit page
			var no = e.parentNode.parentNode.childNodes[1].innerText; 
			if (no) window.location.href='/edit/' + no;
		};
	</script>
</body>
