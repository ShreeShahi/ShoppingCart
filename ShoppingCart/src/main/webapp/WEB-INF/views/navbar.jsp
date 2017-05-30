<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script src="resources/js/Header.js"></script>

<title>ShoppingCart</title>
<style>
.header-tp .navbar {
    position: relative;
	min-height: 50px;
	margin-bottom: 0px;
	border: 1px solid transparent;
}

.header-tp .navbar-default {
	background-color: #1DB9EC;
	border-color:transparent!important;
}
.header-tp .bdr li:nth-child(odd) 
{
	border-left: 1px solid rgba(255, 255, 255, 0.44);

}

.header-tp .bdr li:nth-child(even) 
{
	border-right: 1px solid rgba(255, 255, 255, 0.44);
	border-left: 1px solid rgba(255, 255, 255, 0.44);
}
.header-tp .bdr li
{
	padding:10px 0px;
}
.header-tp .bdr li a
{
	color:#fff!important;
}

.header-tp .pddr
{
	padding-top:5px;
}

.header-tp .navbar-right {
    float: right !important;
    margin-right: 30px;
}

.header-tp  .nav > li {
    position: relative;
    display: inline-block;
}

.btn-blu {
	display: inline-block;
	padding: 10px 35px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 0px;
	background-color: #0D4459;
	border-color: #0D4459;
	color: #fff;
}      
.mrgn-top
{
	margin-top:15px;
	margin-right:15px;
}    

.header-tp
{
    margin: 10px 0px;
}    

/*######################## LOGIN/SIGNUP PAGE START ##################################*/
.at-login-form .btn-fb
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 0px;
	background-color: #4568B2;
	width: 100%;
	margin-top: 10px;
	color:#fff;
}

.at-login-form .btn-gp
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid #eee;
	border-radius: 0px;
	background-color: #FFFFFF;
	width: 100%;
	margin-top: 10px;
	color:#000;
}

.at-login-form .btn-lgin
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid #eee;
	border-radius: 0px;
	background-color: #1DB9EC;
	width: 100%;
	margin-top: 10px;
	color:#fff;
}
.at-login-form .signup-or-separator {
	background: none;
	height: 34px;
	position: relative;
	text-align: center;
}
.at-login-form .signup-or-separator--text {
	background-color: #fff;
	display: inline-block;
	padding: 8px;
}

.at-login-form .h6 {
	font-size: 14px;
	font-weight: bold;
	color: #757575;
	line-height: 1.1;
	text-rendering: optimizelegibility;
}

.at-login-form .signup-or-separator hr {
    margin: -25px auto 10px;
    width: 100%;	
 }
 
 .at-login-form .form-control-form {
    display: block;
    width: 100%;
    height: 54px;
    padding: 15px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 0px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    margin-top: 3px;
}   
 .at-login-form .frgt-pswd
{
	margin: 5px 0 10px;
color: red;
}

 .at-login-form .btn-gst
{
	display: inline-block;
padding: 6px 12px;
margin-bottom: 0;
font-size: 14px;
font-weight: 400;
line-height: 1.42857143;
text-align: center;
white-space: nowrap;
vertical-align: middle;
-ms-touch-action: manipulation;
touch-action: manipulation;
cursor: pointer;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
user-select: none;
background-image: none;
border: 1px solid #000;
border-radius: 0px;
background-color: transparent;
}

 .at-login-form .ta-l
{
	text-align:left;
	margin-top: 5px;
}

 .at-login-form .modal-dialog {
    width: 500px;
    margin: 30px auto;
}

.at-login-form .modal-content
{
	padding: 0px 10px;
}

.at-login-form  .modal-header {
    padding: 10px 10px;
    border-bottom: 0px solid #e5e5e5;
}
.blue-bg-nav
{
    background-color:#1DB9EC;
/*######################## LOGIN/SIGNUP PAGE  END ##################################*/
</style>

</head>

<div class="blue-bg-nav">
<div class="container">
    <div class="row">
		<div class="col-md-12">
			<header class="header-tp">
							<nav class="navbar navbar-default navbar-static-top">
								<div class="container">
								    <div class="navbar-header">
    							    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
							       	</button>
							     
							    </div>  
									<div id="navbar" class="navbar-collapse collapse">
										<form class="form-inline">
											
										
											<a  href="#" class="btn-blu mrgn-top" data-toggle="modal" data-target="#at-helping">Help</a> 

											<ul class="nav navbar-nav navbar-right bdr">

												<li><a href="#" data-toggle="modal" data-target="#at-login">Sign in</a></li>


												
												<li ><a href="#" data-toggle="modal" data-target="#at-signup">Sign Up</a></li>
											</ul>
										</form>

</body>
</html>  --%>