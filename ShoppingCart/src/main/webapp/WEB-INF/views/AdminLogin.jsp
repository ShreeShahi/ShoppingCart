<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Insert title here</title>
</head>
<body>
Welcome Admin

<jsp:include page="Menu.jsp"></jsp:include>
<c:choose>
<c:when test="${isUserClickedCATEGORY=='true'}">
<jsp:include page="Category.jsp"></jsp:include>
</c:when>




<c:when test="${isUserClickedPRODUCTS=='true'}">
<jsp:include page="Newproducts.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickedSUPPLIER=='true'}">
<jsp:include page="Supplier.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickedViewcategory=='true'}">
<jsp:include page="Viewcategory.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickedViewproduct=='true'}">
<jsp:include page="Viewproduct.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickedViewsupplier=='true' }">
<jsp:include page="Viewsupplier.jsp"></jsp:include>
</c:when>
<c:when  test ="${isAdminClickedEdit=='true'}">
<jsp:include page="editCategory.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickededit=='true' }">
<jsp:include page="editProduct.jsp"></jsp:include>
</c:when>
<c:when test="${isAdminClickededits=='true' }">
<jsp:include page="editSupplier.jsp"></jsp:include>
</c:when>
</c:choose>
  <!-- <br><br>
  <a href="CategoryPage" class="btn btn-info" role="button">ADD</a>
  <a href="ViewcategoryPage" class="btn btn-info" role="button">VIEW</a>
  <a href="#" class="btn btn-info" role="button">EDIT</a></div> -->
</body>
<!-- Slider -->
</html>