<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
<title>Insert title here</title>
<style type="text/css">
body{
    background: #fff;
}
.navbar, .dropdown-menu{
background:#09ba32;
border: none;

}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a, .dropdown-menu>li{
  border-bottom: 3px solid transparent;
}
.nav>li>a:focus, .nav>li>a:hover,.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
  border-bottom: 3px solid transparent;
  background: rgba(154, 154, 154, 0.27);
}
.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .navbar-toggle{
 color: #fff;
}
.dropdown-menu{
      -webkit-box-shadow: none;
    box-shadow:none;
}

.nav li:hover:nth-child(8n+1), .nav li.active:nth-child(8n+1){
  border-bottom: #b6f423 4px solid;
}
.nav li:hover:nth-child(8n+2), .nav li.active:nth-child(8n+2){
  border-bottom: #82e2ea 4px solid;
}
.nav li:hover:nth-child(8n+3), .nav li.active:nth-child(8n+3){
  border-bottom: #f8b42c 4px solid;
}
.nav li:hover:nth-child(8n+4), .nav li.active:nth-child(8n+4){
  border-bottom: #fd594a 4px solid;
}
.nav li:hover:nth-child(8n+5), .nav li.active:nth-child(8n+5){
  border-bottom: #e8479d 4px solid;
}
.nav li:hover:nth-child(8n+6), .nav li.active:nth-child(8n+6){
  border-bottom: #a12eeb 4px solid;
}
.nav li:hover:nth-child(8n+7), .nav li.active:nth-child(8n+7){
  border-bottom: #4785d9 4px solid;
}
.nav li:hover:nth-child(8n+8), .nav li.active:nth-child(8n+8){
  border-bottom: #2aed9a 4px solid;
}

.navbar-toggle .icon-bar{
    color: #fff;
    background: #000000;
}

/* Credit to bootsnipp.com for the css for the color graph 
 ESTO SOLO ES PARA EL FORMULARIO DE LOGIN
*/
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>

<script type="text/javascript">
	function formRegister() {
		// Make quick references to our fields
		var productname = document.getElementById('productName');
		var price = document.getElementById('price');
		var description = document.getElementById('description');
		var quantity = document.getElementById('quantity');
		
		
		
		
		
		// Check each input in the order that it appears in the form!

		if (notEmpty(productName, "ProductName Should not be empty")) {
			
				if (isAlphabet(productName,
						"Please enter only letters for ProductName")) {
					if (notEmpty(price, "Price Should not be empty")) {
						if (isNumeric(price,
								"Numbers Only for Price")) {
							if (notEmpty(quantity,
									"Quantity Should not be empty")) {
								if (isNumeric(quantity,
										"Please enter only number for Quantity")) {
											if (notEmpty(description,
													"Description Should not be empty")) {
												
														return true;
													}
												}
											}
										}
									}
								}
							

		return false;
	}
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>
</head>
<body>

<div class="container">
    
<div class="row" style="margin-top:60px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form role="form" action="newProducts" method="post" enctype="multipart/form-data" onsubmit="return formRegister()">
			<fieldset>
				<h2>Add Products</h2>
				<hr class="colorgraph">
				<div class="form-group">


             <input class="form-control input-lg" type="text" name='productName' placeholder="Productname"/> 
                  
          </div>
           <div class="form-group ">
           
            <input class="form-control input-lg" type="text" name='price' placeholder="Productprice"/>     
          </div>
          <div class="form-group">
           
            <input class="form-control input-lg" type="text" name='description' placeholder="Description"/>     
          </div>
          <div class="form-group ">
           
            <input class="form-control input-lg" type="text" name='quantity' placeholder="Quantity"/>     
          </div>
      
      
			<div class="form-group">
			<label class="control-label col-sm-2"></label>
				<select name="category" class="form-control input-lg">
				<option value="">Select Category</option>
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.category_name}">${category.category_name}</option>
				
				</c:forEach>
				</select>
</div>
						<div class="form-group">
			<label class="control-label col-sm-2"></label>
			
			
				<select name="suppliername" class="form-control input-lg">
				<option value="">Select Supplier</option>
				<c:forEach items="${supplierList}" var="supplier">
				<option value="${supplier.suppliername}">${supplier.suppliername}</option>
				
				</c:forEach>
				</select>
			</div>

  
   
    <!--  <div class="form-group input-group">  
 Category <select name="Category">
    <option value="Clothing">Clothing</option>
    <option value="Accessories">Accessories</option>
    </select>
    </div> -->
          <div class="form-group">
           
            <input class="form-control input-lg" type="file" name='image' placeholder=""/>     
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-lg btn-success btn-block">ADD</button>
          </div>
<!--           <div class="form-group text-center"><br> -->
<!--            <span class="glyphicon glyphicon-log-out"></span> -->
<!--           <input type="button" value="Log-out" onclick="history.back(-1)">  -->
<!--           </div> -->
          </fieldset></form></div></div></div>
    
</body>
</html>
