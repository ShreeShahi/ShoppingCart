<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<!-- <style>
.txt {
	color: white;
	margin-top: 170px;
	padding: 14px 13px;
}

</style> -->
<body>
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
<jsp:include page="Newproducts.jsp"></jsp:include>
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
 <td><a href="editProduct?id=${product.productId}">Edit</a></td>
<td><a href="deleteProduct?id=${product.productId}">Delete</a></td> 
</tr> 
</c:forEach>
</table>
</div>
</body>
