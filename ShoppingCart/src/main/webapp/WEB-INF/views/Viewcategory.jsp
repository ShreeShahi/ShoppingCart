<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<br>
		<br>
		<!-- <a href="CategoryPage" class="btn btn-info" role="button">ADD</a>
  <a href="ViewcategoryPage" class="btn btn-info" role="button">VIEW</a>
  <a href="#" class="btn btn-info" role="button">EDIT</a> -->
		<!--  <button type="button" class="btn btn-info">VIEW</button>
  <button type="button" class="btn btn-info">EDIT</button> -->
		<!--  <input type="button" class="btn btn-info" value="Input Button">
  <input type="submit" class="btn btn-info" value="Submit Button"> -->
	</div>

	<div class="txt">
		<h1>view category</h1>
		<table class="table">

			<tr>
				<th>Id</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>edit</th>
				<th>delete</th>
			</tr>


			<c:forEach items="${categoryList}" var="category" varStatus="status">
				<tr>
					
					<td>${category.id}</td>
					<td>${category.category_name}</td>
					<td>${category.category_Description}</td>
					<td><a href="editCategory?id=${category.id}">Edit</a></td>
					<td><a href="deleteCategory?id=${category.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>