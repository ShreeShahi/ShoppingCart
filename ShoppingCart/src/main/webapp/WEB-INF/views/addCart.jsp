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
<br><br><br><br>
<div id="page">
<!-- <div class="row">
		<div class="qty-changer">
		 <input class="qty-input form-group" type="number" value="1"/> -->
<table style="width: 100%">

			<tr>
				<th align="left">S.No</th>
				<th align="left">Cart Id</th>
				<th align="left">Product Name</th>
				<th align="left">Price</th>
				<th align="left">Quantity</th>
				<th align="left">Total</th>
				<th align="left">Days</th>
				<th align="left">Remove</th>

</tr>
<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${cart. cartId}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.total}</td>
					<td>${cart.days}</td>
					<td><a href="removeCart?cartId=${cart.cartId}"><span class="glyphicon glyphicon-trash"></span></a></td>
				</tr>
				
</c:forEach>

		<tr>
				<td colspan="5">Grand Total :</td>
				<td colspan="2">${grandTotal}</td>
				<td></td>
			</tr>
			
		</table>
		</div>
		<p>
			<a href="proceed"><button align="left"
					class="w3-button w3-#009933">Proceed</button></a>
</p>

</body>
</html>