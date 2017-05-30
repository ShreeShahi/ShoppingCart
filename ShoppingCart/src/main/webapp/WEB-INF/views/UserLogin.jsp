<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link href='//fonts.googleapis.com/css?family=Satisfy' rel='stylesheet'> 
<title>Insert title here</title>
<!-- <style type="text/css">
 /* navbar light-green */
.navbar-light-green {
background-color: #30bd37;
border: none;
}
/* change logo text color and hover color */
.navbar-light-green .navbar-brand {
color: #fff
}
.navbar-light-green .navbar-brand:hover, .navbar-light-green .navbar-brand:focus {
color:#ccc
}
/* Change nav links color */
.navbar-light-green .navbar-nav > li > a {
color:#fff
}
.navbar-light-green .navbar-nav > li > a:hover {
color:#fff
}
/* change visited color */
.navbar-light-green .navbar-nav > li > a:focus {
color:#fff
}
/* form */
.navbar-light-green .form-control {
border-radius:4;
border:none
}
.navbar-light-green .form-control {
border:1px solid #1da224
}
.navbar-light-green .btn {
border:1px solid #1da224
}
/* open drop down background color */
.navbar-light-green .navbar-nav .open .dropdown-menu {
background:#fff
}
/* mobile toggle nav icon */
.navbar-light-green .navbar-toggle {
border-color:#e7e7e7
}
.navbar-light-green .navbar-toggle .icon-bar {
background-color:#e7e7e7
}
.navbar-light-green .navbar-toggle:focus, .navbar-light-green .navbar-toggle:hover {
background-color:#fff
}
.navbar-light-green .navbar-toggle:focus .icon-bar, .navbar-light-green .navbar-toggle:hover .icon-bar {
background-color:#3b5998
}  */

</style> -->
</head>
<body>
Welcome User

<jsp:include page="Menu.jsp"></jsp:include>

<c:choose>

<c:when test="${ isUserClickedMoreInfo=='true'}">
<jsp:include page="productDetails.jsp"></jsp:include>
</c:when>  
 <c:when test="${ isUserClickedShippingAddressClicked=='true'}">
   <jsp:include page="Shippingaddress.jsp"></jsp:include>
  </c:when>
  <c:when test="${isUserClickedAddtocart=='true'}">
  <jsp:include page="addCart.jsp"></jsp:include>
  </c:when>
  <c:when test="${isUserClickedproductDetails=='true' }">
  </c:when>
  <c:otherwise>
  <jsp:include page="Productlist.jsp"></jsp:include>
  </c:otherwise>
  
</c:choose>
</body>
</html>