<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Products Grid</title>
<link rel="stylesheet" type="text/css" href="style.css">

<meta name="viewport" content="width=device-width,initial-scale=1.0" />




<style type="text/css">
/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

body {
  padding-bottom: 40px;
  color: #5a5a5a;
  background:#eee;
}


/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  z-index: 20;
}

/* Flip around the padding for proper display in narrow viewports */
.navbar-wrapper > .container {
  padding-right: 0;
  padding-left: 0;
}
.navbar-wrapper .navbar {
  padding-right: 15px;
  padding-left: 15px;
}
.navbar-wrapper .navbar .container {
  width: auto;
}


/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
  
  height: 500px;
  margin:30px 0 60px 0;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
  height: 500px;
  background-color: #777;
}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 500px;
}


/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
  margin-bottom: 20px;
  text-align: center;
}
.marketing h2 {
  font-weight: normal;
}
.marketing .col-lg-4 p {
  margin-right: 10px;
  margin-left: 10px;
}


/* Featurettes
------------------------- */

.featurette-divider {
  margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */
.featurette-heading {
  font-weight: 300;
  line-height: 1;
  letter-spacing: -1px;
}


/* RESPONSIVE CSS
-------------------------------------------------- */

@media (min-width: 768px) {
  /* Navbar positioning foo */
  .navbar-wrapper {
    margin-top: 20px;
  }
  .navbar-wrapper .container {
    padding-right: 15px;
    padding-left: 15px;
  }
  .navbar-wrapper .navbar {
    padding-right: 0;
    padding-left: 0;
  }

  /* The navbar becomes detached from the top, so we round the corners */
  .navbar-wrapper .navbar {
    border-radius: 4px;
  }

  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 20px;
    font-size: 21px;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

@media (min-width: 992px) {
  .featurette-heading {
    margin-top: 120px;
  }
}


/* Carousel base class */
      .carousel {
        height: 550px;
        margin-bottom: 60px;
      
      }

      /* Since positioning the image, we need to help out the caption */
      .carousel-caption {
        z-index: 10;
      }

      /* Declare heights because of positioning of img element */
      .carousel .item {
        height: 500px;
        background-color: transparent;
      }
      .carousel-inner > .item > img {
        position: absolute;
        top: 0;
        left: 0;
        min-width: 100%;
        height: 500px;
      }

      .glyphicon-chevron-right:before {
          color: #333;
      }
      .glyphicon-chevron-left:before {
          color:#333;
      }

      .carousel-control.left, 
      .carousel-control.right {
          background-image:none!important;
      }

      .carousel_block {
        position: relative;
        height: 250px;
        margin: 0 0 20px;
        width: 100%;
        background: #fff;
        border: 1px solid #ccc;
      }
      .carousel_block img {
        display: block;
        margin: 35px auto;
       }
       .carousel_block h4 {
         font-size: 18px;
         color: #0099ff;
         text-align: center;
       }


</style>

</head>

<body>




    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      
      <div class="carousel-inner" role="listbox">
        
        <div class="item active">
       
          <div class="container">
            <div class="col-md-4">
             <div class="carousel_block">
              <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
              </div><!-- end .carousel_block -->
             </div><!-- end .col-md-4 -->
            <div class="col-md-4">
               <div class="carousel_block">
                <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
                <h4>Lorem titlu</h4>
               </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->


            <div class="col-md-4">
             <div class="carousel_block">
              <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
              </div><!-- end .carousel_block -->
             </div><!-- end .col-md-4 -->
            <div class="col-md-4">
               <div class="carousel_block">
                <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
               </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
          </div><!-- end .container -->

        </div><!-- end .item -->


        <div class="item">
          <div class="container">
            <div class="col-md-4 ">
             <div class="carousel_block">
              <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
             <div class="carousel_block">
              <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->

            <div class="col-md-4">
             <div class="carousel_block">
              <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
              </div><!-- end .carousel_block -->
             </div><!-- end .col-md-4 -->
            <div class="col-md-4">
               <div class="carousel_block">
                <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
                 <h4>Lorem titlu</h4>
               </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
          </div><!-- end .container -->

        </div><!-- end .item -->

        <div class="item">
          <div class="container">
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
                <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
                <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
               <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->

            <div class="col-md-4">
             <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
             </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->
            <div class="col-md-4">
              <div class="carousel_block">
               <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
               <h4>Lorem titlu</h4>
              </div><!-- end .carousel_block -->
             </div><!-- end .col-md-4 -->
            <div class="col-md-4">
               <div class="carousel_block">
                <img src="http://i63.tinypic.com/2j3mpeu.png" alt="">
                <h4>Lorem titlu</h4>
               </div><!-- end .carousel_block -->
            </div><!-- end .col-md-4 -->

          </div><!-- end .container -->

        </div><!-- end .item -->

      </div>

      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>


    </div><!-- /.carousel -->



</body>
</html>
