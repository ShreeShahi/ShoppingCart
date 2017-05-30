<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.jumbotron {
	background-color: white;
	color: #27A4F7;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
}
</style>
</head>
<body>


<div class="container" style="color: #1F618D">
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Edit  your product</h3>
			<form action="afteredit"class="form-horizontal"  method="post"   role="form" name="product">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Id of the Product:</label> 
					<input class="form-control"  type="text"  id="id" name="pid" value="${product.productId}" readonly>
				</div>

			
				<%-- <div style="color: #27A4F7" class="form-group">
					<label for="text">category:</label> 
					<input class="form-control" placeholder="category" type="text"  id="name" name="category" value="${product.category}" readonly>
				</div> --%>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Product Name:</label> 
					<input name="name" class="form-control" placeholder="Description" type="text"  id="name"  value="${product.productName}" >
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description about Product:</label> 
					<input name="description" class="form-control" placeholder="Description" type="text"  id="description"  value="${product.description}" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Price</label> 
					<input class="form-control" placeholder="product" type="text"  id="name" name="price" value="${product.price}">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Quantity</label> 
					<input class="form-control" placeholder="product" type="text"  id="name" name="quantity" value="${product.quantity}" >
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Category:</label>
					<input name="description" class="form-control" placeholder="Description" type="text"  id="category"  value="${product.category}">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Supplier Name:</label>
					<input name="description" class="form-control" placeholder="Description" type="text"  id="suppliername"  value="${product.suppliername}">
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>
</div></div>
</body>
</html>