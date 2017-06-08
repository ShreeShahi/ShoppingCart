<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lobster);
/*panel heading*/
h1 {
    text-align:center;
    font-size: 28px;
    font-family: 'Lobster', cursive;
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
</style> -->
</head>
<body>
<br><br><br>
<div class="container">
            <div class="row">
                <div class="col-sm-6 col-centered">
                    <div class="panel panel-default">
                        <div class="panel-heading" >
                            <h1>New Shipping Address</h1>
                        </div>
                    <form action="address" method="POST">
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user blue"></i></span>
                                <input type="text" name="user_name" placeholder="Name" class="form-control" autofocus="autofocus" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope blue"></i></span>
                                <input type="email" name="email" placeholder="Email" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone blue"></i></span>
                                <input type="text" name="contact_no" placeholder="Phone" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope blue"></i></span>
                                <textarea name="address" rows="6"  placeholder="Address" class="form-control" type="text" required></textarea>
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope blue"></i></span>
                                <input type="text" name="zip_code" placeholder="Zipcode" class="form-control" required>
                            </div>
                        </div>
                        <div class="">
                         <button type="submit" class="btn btn-info pull-right">Send <span class="glyphicon glyphicon-send"></span></button>
                            <button type="reset" value="Reset" name="reset" class="btn">Reset <span class="glyphicon glyphicon-refresh"></span></button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        
        
</body>
</html>