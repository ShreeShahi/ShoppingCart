<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
<br>
<br>
<br>
<div class="container">
		
		

	<div class="txt">
	
		<table class="table">

			<tr>
				
				<th>Product Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total</th>
			</tr>
			<c:forEach items="${cartList}" var="product" varStatus="status">
				<tr>
					
					<td>${product.productName}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.total}</td>
					
				</tr>
			</c:forEach>
			
			</table></div></div>

</body>
</html>