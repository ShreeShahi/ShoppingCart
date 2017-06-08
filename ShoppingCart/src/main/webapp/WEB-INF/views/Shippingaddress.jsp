<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Satisfy);
/*panel heading*/
h1 {
    text-align:center;
    font-size: 28px;
    font-family: 'Satisfy';
}
/*panel align center*/
.col-centered{
    float: none;
    margin: 0 auto;
    padding-top:5px;
}
/*property for the bootstrap panel*/
.panel  {
-webkit-box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
-moz-box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
}

.panel-default > .panel-heading {
  color: #000 !important;
  background: #80bfff; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left top, #80bfff, #ffffff); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(bottom right, #80bfff, #ffffff); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(bottom right, #80bfff, #ffffff); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to bottom right, #80bfff, #ffffff); /* Standard syntax */
  border-color: #99ccff !important;
  height:80px;
}

/*property for the HTML input placeholder*/
input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; } /* FF 4-18 */
input:focus::-moz-placeholder { color:transparent; } /* FF 19+ */
input:focus::-moz-placeholder { color:transparent; } /* FF 19+ */
input:focus:-ms-input-placeholder { color:transparent; } /* IE 10+ */

/*property for reset button*/
button[type="reset"]    {
    background-color:transparent;
    border:1px solid black;
}

/*Glyphicon color*/
.blue   {
    color: #80bfff;
}

</style>













</head>
<body>
	
<br>
<br>
<br>
 <a href="address"  type="submit" class="btn btn-info pull-right">New Shipping Address </a>
 
 
  <div class="container">
            <div class="row">
            	<c:forEach items="${shippingList}" var="Shippingaddress" varStatus="status">
                <div class="col-sm-3 col-left"> 
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                            <h1>Shipping Address     <a href="deleteshippingAddress?shippingId=${Shippingaddress.shippingId}">
          <span class="glyphicon glyphicon-trash"></span>
        </a></h1>
                        </div>
                    <form action="" method="POST">
             
                          <div class="form-group">
                            <div class="input-group">
				


                   
                             
                               
                   &nbsp Name   :  ${ Shippingaddress.user_name}<br>
                   &nbsp Email  :  ${ Shippingaddress.email}<br>
                   &nbsp Phone  :  ${Shippingaddress.contact_no }<br>
                   &nbsp Address:  ${Shippingaddress.address }<br>
                   &nbsp Zipcode:  ${Shippingaddress.zip_code }<br>
                            
                          
                        <div class="">
                        <a href ="shippingAddress?shippingId=${Shippingaddress.shippingId}" button type="submit" class="btn btn-info pull-right">DELIVER HERE <span class="glyphicon glyphicon-send"></span></a>
                            <button type="" value="" name="EDIT" class="btn">EDIT <span class="glyphicon glyphicon-edit"></span></button>
                   </div></div></div></form></div></div>
                     </c:forEach>
                   
                   </div></div>
					
	</body>
</html>