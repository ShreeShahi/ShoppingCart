<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<style>

table,td,th{
border:1px solid black;
}

</style>

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
<jsp:include page="Supplier.jsp"></jsp:include>
<div class="txt">
	
	<table class="table">
		<thead>
			<tr>
			<th>S.No</th>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Contact</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>
		</thead>
	
	<c:forEach items="${supplierList}" var="supplier" varStatus="status">
<tr>
<td>${status.count}</td>
<td>${supplier.id}</td>
<td>${supplier.suppliername}</td>
<td>${supplier.email_id}</td>
<td>${supplier.address}</td>
<td>${supplier.phone_no}</td>
 <td><a href="editSupplier?id=${supplier.id}">Edit</a></td>
<td><a href="deleteSupplier?id=${supplier.id}">Delete</a></td> 
</tr> 
</c:forEach>
</table>
</div>
</body>
