<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style="color: #1F618D">
		<div class="jumbotron" style="background-color:">
			
			<h3 align="center" style="color: #27A4F7">Edit  your ShippingAddress</h3>
			<form action="editShippingaddress"class="form-horizontal"  method="post" role="form" name="Shippingaddress                                                                              ">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Id of the ShippingAddress:</label> 
					<input class="form-control"  type="text"  id="id" name="id" value="${Shippingaddress.shippingId}" readonly>
				</div>
                    <div style="color: #27A4F7" class="form-group">
					<label for="text">Username</label> 
					<input class="form-control" placeholder="Username" type="text"  id="user_name" name="user_name" value="${Shippingaddress.user_name}" >
				</div>
			
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Email Id</label> 
					<input class="form-control" placeholder="Email" type="text"  id="email" name="email" value="${Shippingaddress.email}">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Contact</label> 
					<input name="contact_no" class="form-control" placeholder="Contact" type="text"  id="contact_no"  value="${Shippingaddress.contact_no}" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Address</label> 
					<input class="form-control" placeholder="Address" type="text"  id="address" name="address" value="${Shippingaddress.address}" >
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Zipcode</label> 
					<input class="form-control" placeholder="Zipcode" type="text"  id="zip_code" name="zip_code" value="${Shippingaddress.zip_code}" >
				</div>
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form></div></div>
</body>
</html>