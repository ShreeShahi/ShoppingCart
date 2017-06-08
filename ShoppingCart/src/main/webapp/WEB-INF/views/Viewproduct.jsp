<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <meta charset="utf-8">
 <!--  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  </head>
  <style>

table {
    border-collapse: collapse;
    width:50%;
    }

th, td {
    text-align: left;
    padding: 6px;
}



th {
    background-color: #4CAF50;
    color: white;
}
table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
}
</style>

<body>
<br><br><br>
<div class="container">
  <br><br>
  <!-- <a href="CategoryPage" class="btn btn-info" role="button">ADD</a>
  <a href="ViewcategoryPage" class="btn btn-info" role="button">VIEW</a>
  <a href="#" class="btn btn-info" role="button">EDIT</a> -->
 <!--  <button type="button" class="btn btn-info">VIEW</button>
  <button type="button" class="btn btn-info">EDIT</button> -->
 <!--  <input type="button" class="btn btn-info" value="Input Button">
  <input type="submit" class="btn btn-info" value="Submit Button"> -->
</div>

<div class="txt">
	
	<table class="table">
		<thead>
			<tr>
				<th>Product id</th>
				<th>Product name</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Category</th>
				<th>SupplierName</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
	
	<c:forEach items="${productList}" var="product" >
<tr>

<td>${product.productId}</td>
<td>${product.productName}</td>
<td>${product.description}</td>
<td>${product.quantity}</td>
<td>${product.price}</td>
<td>${product.category}</td>
<td>${product.suppliername}</td>
 <td><a href="editProduct?id=${product.productId}"> <span class="glyphicon glyphicon-edit"></span></a></td>
<td><a href="deleteProduct?id=${product.productId}"><span class="glyphicon glyphicon-trash"></span></a></td> 
</tr> 
</c:forEach>
</table>
</div>
</body>
