<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div ng-app="">

<div style="margin-left: 15em;" align="center" >
	<form  action="shippingAddess" method="post" >
		<table align="center">
		<tr>
		<td colspan="1" align="center"><h3>Shipping Address </h3></td>
		</tr>
			
			<tr>
				<td>User Name :</td>			
				<td style="width: 25em;"><input class="form-control" type="text" name="username" id="user" />
			</tr>
			<tr>
				<td>First Name :</td>			
				<td style="width: 25em;"><input class="form-control" type="text" name="firstname" id="user" />
			</tr>
			<tr>
				<td>last Name :</td>			
				<td style="width: 25em;"><input class="form-control" type="text" name="lastname" id="user" />
			</tr>
			
			<tr>
				<td>Phone Number :</td>				
				<td><input class="form-control" type="text" name="phoneNo" id="ph"/>
			</tr>
			<tr>
				<td>State</td>				
				<td><input class="form-control" type="email" name="State" id="state"/>
			</tr>
			<tr>
				<td>Email</td>				
				<td><input class="form-control" type="email" name="email" id="email"/>
			</tr>
			
			<tr>
				<td>apartmentNumber</td>				
				<td><input class="form-control" type="text" name="apartmentNumber" id="apartmentNumber" /></td>
			</tr>
			<tr>
				<td>streetName</td>				
				<td><input class="form-control" type="text" name="streetName" id="apartmentNumber" /></td>
			</tr>
			<tr>
				<td>city</td>				
				<td><input class="form-control" type="text" name="city" id="apartmentNumber" /></td>
			</tr>
			<tr>
				<td>country</td>				
				<td><input class="form-control" type="text" name="country" id="country" /></td>
			</tr>
			
			<tr>
				<td>Zipcode</td>			
				<td><input class="form-control" type="text" name="zipcode" id="zip" /></td>
			</tr>
			<tr>
				
				<td align="left">
				<input class="btn btn-success" type="submit" value="submit" >
				<input class="btn btn-danger" type="button" value="Cancel"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>>