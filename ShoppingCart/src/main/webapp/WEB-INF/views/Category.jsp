<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<title>Insert title here</title>


</head> --%>
<body>

 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <a href="ViewcategoryPage" class="btn btn-info" role="button">VIEW</a>
  <a href="editcategoryPage" class="btn btn-info" role="button">EDIT</a>
<br><br>

<div class="login-wrap">
    <div class="Login-html"><div class="Login-form">
        
            <div class="Absolute-Center is-Responsive">
      <div id="logo-container"></div>
      <div class="col-sm-12 col-md-10 col-md-offset-1">
        <form action="newCategory" method="post">
          
           <div class="form-group input-group">
            <span class="input-group-addon"></span>
            <input class="form-control" type="text" name='category_name' placeholder="Categoryname"/>     
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"></span>
            <input class="form-control" type="text" name='category_Description' placeholder="Description"/>     
          </div>
         
          <div class="form-group">
            <button type="submit" class="btn btn-def btn-block">ADD</button>
          </div>
<!--           <div class="form-group text-center"><br> -->
<!--            <span class="glyphicon glyphicon-log-out"></span> -->
<!--           <input type="button" value="Log-out" onclick="history.back(-1)">  -->
<!--           </div> -->
          </form>
          </div>
        
         
          </div>  
   
      </div>  
      
    </div> 
       
  </div>
    
</body>
<!-- </html> -->