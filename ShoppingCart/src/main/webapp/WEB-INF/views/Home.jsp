<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link href='//fonts.googleapis.com/css?family=Satisfy' rel='stylesheet'>
<title>ShoppingCart</title>
<style>
body {
	font-family: "Satisfy";
	font-size: 17px;
	line-height: 3.429;
	color: #333;
	background: #fff;
}

.navbar, .dropdown-menu {
	background: #09ba32;
	
}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover,
	.dropdown-menu>li>a, .dropdown-menu>li {
	border-bottom: 3px solid transparent;
}

.nav>li>a:focus, .nav>li>a:hover, .nav .open>a, .nav .open>a:focus, .nav .open>a:hover,
	.dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover {
	border-bottom: 3px solid transparent;
	background: rgba(154, 154, 154, 0.27);
}

.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus,
	.dropdown-menu>li>a:hover, .navbar-toggle {
	color: #fff;
}

.dropdown-menu {
	-webkit-box-shadow: none;
	box-shadow: none;
}

.nav li:hover:nth-child(8n+1), .nav li.active:nth-child(8n+1) {
	border-bottom: #b6f423 4px solid;
}

.nav li:hover:nth-child(8n+2), .nav li.active:nth-child(8n+2) {
	border-bottom: #82e2ea 4px solid;
}

.nav li:hover:nth-child(8n+3), .nav li.active:nth-child(8n+3) {
	border-bottom: #f8b42c 4px solid;
}

.nav li:hover:nth-child(8n+4), .nav li.active:nth-child(8n+4) {
	border-bottom: #fd594a 4px solid;
}

.nav li:hover:nth-child(8n+5), .nav li.active:nth-child(8n+5) {
	border-bottom: #e8479d 4px solid;
}

.nav li:hover:nth-child(8n+6), .nav li.active:nth-child(8n+6) {
	border-bottom: #a12eeb 4px solid;
}

.nav li:hover:nth-child(8n+7), .nav li.active:nth-child(8n+7) {
	border-bottom: #4785d9 4px solid;
}

.nav li:hover:nth-child(8n+8), .nav li.active:nth-child(8n+8) {
	border-bottom: #2aed9a 4px solid;
}

.navbar-toggle .icon-bar {
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
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}

#imaginary_container {
	margin-top: 20%; /* Don't copy this */
}

.stylish-input-group .input-group-addon {
	background: white !important;
}

.stylish-input-group .form-control {
	border-right: 0;
	box-shadow: 0 0 0;
	border-color: #ccc;
}

.stylish-input-group button {
	border: 0;
	background: transparent;
}
li{
float:left;
}
</style>

</head>

<!-- <body class="background free-trail-form"
	background="resources/images/shpping.jpg"> -->
<body>



	<div class="navbar-wrapper">
		<div class="container-fluid">
			<nav class="navbar navbar-fixed-top">
			<div class="container">
				<br>
				<div class="col-sm-6 col-sm-offset-3">
					<div class="input-group stylish-input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon">
							<button type="submit">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</div><br>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#" class="">Home</a></li>
						<li class=" dropdown"><a href="#">Clothing</a></li>
						<li class=" dropdown"><a href="" class="dropdown-toggle active" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Accessories
						</a></li>
					</ul>
					<!-- <li class="dropdown"><a data-toggle="dropdown">CATEGORY</a>
							<ul class="dropdown-menu">
								<li><a href="ViewcategoryPage">View</a></li>
								<li><a href="CategoryPage">Add</a></li>

							</ul></li>

						<li class="dropdown"><a data-toggle="dropdown">PRODUCT</a>
							<ul class="dropdown-menu">
								<li><a href="ViewproductPage">View</a></li>
								<li><a href="NewproductsPage">Add</a></li>
								<li><a href="EditProductsPage">Edit</a></li>

							</ul></li>
						<li class="dropdown"><a data-toggle="dropdown">SUPPLIER</a>
							<ul class="dropdown-menu">
								<li><a href="ViewsupplierPage">View</a></li>
								<li><a href="ProductsPage">Add</a></li>
								<li><a href="EditProductsPage">Edit</a></li>

							</ul></li> -->
					<ul class="nav navbar-nav pull-right">
					<c:if test ="${pageContext.request.userPrincipal.name!=null}">
						<li class=" dropdown"><a href="mycart"
							class="dropdown-toggle active" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Cart</a>
						</li>
						<li><a href="logout">Logout</a></li>
						</c:if>
						<c:if test ="${pageContext.request.userPrincipal.name==null}">
						<li><a class="fa fa-bell" href="#">Notifications</a></li>&nbsp
						<li><a href="LoginPage" class="fa fa-sign-in">Login</a> </li>&nbsp
						<li><a href="SignupPage" class="fa fa-user-plus">Signup</a></li>&nbsp
						
</c:if>
<c:choose>


					<c:when test="${isUser=='true' }">
						<!-- <li class="dropdown"><a data-toggle="dropdown" href="#">HOME</a>
							<ul class="dropdown-menu">
								<li><a href=""></a></li>
								<li><a href="ProductsPage"></a></li>

							</ul></li> -->
						<!-- <li class="dropdown"><a data-toggle="dropdown" href="mycart">CART</a></li> -->
						<li><a href="mycart">CART</a></li>
						<!-- <li class=""><a href="logout">LOGOUT</a></li> -->
						<ul class="nav navbar-nav navbar-right">
                <li><a href="logout">LOGOUT</a></li>
            </ul>
					</c:when>
					<%-- <c:when test="${isAdmin=='true'}">
						<li class="dropdown"><a data-toggle="dropdown">CATEGORY</a>
							<ul class="dropdown-menu">
								<li><a href="ViewcategoryPage">View</a></li>
								<li><a href="CategoryPage">Add</a></li>

							</ul></li>

						<li class="dropdown"><a data-toggle="dropdown">PRODUCT</a>
							<ul class="dropdown-menu">
								<li><a href="ViewproductPage">View</a></li>
								<li><a href="NewproductsPage">Add</a></li>
								<li><a href="EditProductsPage">Edit</a></li>

							</ul></li>
						<li class="dropdown"><a data-toggle="dropdown">SUPPLIER</a>
							<ul class="dropdown-menu">
								<li><a href="ViewsupplierPage">View</a></li>
								<li><a href="ProductsPage">Add</a></li>
								<li><a href="EditProductsPage">Edit</a></li>

							</ul></li>
						<ul class="nav navbar-nav pull-right">
							<li class=""><a href="logout">LOGOUT</a></li>
						</ul>
					</c:when> --%>
					<c:otherwise>
					
		
		
					</c:otherwise>
				</c:choose>


					</ul>
				</div>

			</div>
			</nav>
		</div>
	</div>


	<!-- Condition -->
	<br>
	<br>
	<br>
	<%-- <jsp:include page="Slider.jsp"></jsp:include> --%>
	<jsp:include page="Productlist.jsp"></jsp:include>
	<c:if test="${isUserClickedHome=='true'}">

		<jsp:include page="Home.jsp"></jsp:include>

	</c:if>


	<c:if test="${isUserClickedLogin=='true'}">

		<jsp:include page="Login.jsp"></jsp:include>

	</c:if>
	<c:if test="${isUserClickedSignup=='true' }">
		<jsp:include page="Signup.jsp"></jsp:include>
	</c:if>
	<c:if test="${isUserClickedHome=='true' }">
		<jsp:include page="Home.jsp"></jsp:include>
	</c:if>
	<c:if test="${isUserClickedMen=='true' }">
		<jsp:forward page="Men.jsp"></jsp:forward>
	</c:if>




	<%-- <c:if test="${isUserClickedNewCategory=='true'}">
	<jsp:include page="Category.jsp"></jsp:include>
</c:if> --%>
	<c:if test="${isUserClickedClothing=='true'}">

		<jsp:include page="Clothing.jsp"></jsp:include>

	</c:if>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/Signup.js"></script>
	<script src="resources/js/navbar.js"></script>

</body>
</html>