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

</head>
<body>




<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						<center>
							<img id="item-display" src="resources/images/Product/${product.productId}.jpg" alt="${product.productId}" width="250" height="300"></img>
						</center>
					</div>
					
				<%-- 	<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a id="item-1" class="service1-item">
								<img src="resources/images/Product/${product.id}.jpg" alt=""></img>
							</a>
							<a id="item-2" class="service1-item">
								<img src="resources/images/Product/${product.id}.jpg" alt=""></img>
							</a>
							<a id="item-3" class="service1-item">
								<img src="resources/images/Product/${product.id}.jpg" alt=""></img>
							</a>
						</center>
					</div>
				</div> --%>
					
				<div class="col-md-7">
					<div class="product-title">${product.productName}</div>
					<div class="product-desc"> ${product.description}</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">${product.price }</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<a href="addCart?productId=${product.productId}" button type="button" class="btn btn-success" >
						
							Add to cart </a>
						</button>
					</div>
					<div class="btn-group wishlist">
						<button type="button" class="btn btn-danger">
							Add to wishlist 
						</button>
					</div>
				</div>
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								

								<h3>Specifications:</h3>
								<li>Style Code      228S323</li>
								<li>Pattern         Striped</li>
								<li>Pack of         1</li>
								<li>Hand Embroidery No</li>
								
							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
								
						</section>
						
					</div>
					<div class="tab-pane fade" id="service-three">
												
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>