<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
* {
  box-sizing: border-box;
}
.title{
  font-size:60px;
  padding:20px 0px;
}
body {
  font-family: 'Lato', sans-serif;
  background-color:#eaeaea;
}
.container{
  width:900px;
  margin:0px auto;
}
/* Float three columns side by side */
.column {
  align-items:center;
  float: left;
  width: 200px;
  height: 300px;
  padding: 0 5px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 700px) {
  
 .container{
  width: 100%;
}
  
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 5px;
  text-align: center;
  background-color: #fff;
  border-radius:10px;
  cursor:pointer;
}
.card .profile{
   border-radius:10px;
   transition: 0.2s;
}
.card:hover .profile{
  transform:scale(1.4);
  border-top-right-radius:50px;
  border-top-left-radius:50px;
}

.card .content{
  width:100%;
  height:100%;
  position:relative;
  overflow:hidden;
}
.card .content .back{
  position:absolute;
  width:100%;
  height:100%;
  background-color: #f1f1f1e6;
  transition:1s;
  
  z-index:1;
  padding:10px;
}

.from-left{
  top:0;
  left:-100%;
}
.card:hover .content .from-left {
   left:0%;
}

.from-bottom{
  top:100%;
  left:0;
}
.card:hover .content .from-bottom {
   top:0%;
}

.from-right{
  top:0%;
  right:-100%;
}
.card:hover .content .from-right {
   right:0;
}

.card .content .back h3{
  font-size:15px;
  letter-spacing:2px;
}
.card .content .back .tem-img{
  border-radius:100%;
}

.card .content .back .des{
  font-size:13px;
  padding:20px 0px;
}
.card .content .back .social-icon{
  list-style:none;
  margin:0px;
  padding:0px;
}
.card .content .back .social-icon li{
  display:inline-block;
}

.card .content .back .social-icon li a{
  display:block;
  background:#333;
  color:#fff;
  width:40px;
  height:40px;
  text-align:center;
  line-height:40px;
  border-radius:100%;
}


</style>
</head>
<body>
<div class="container">

  <center>
    <h5 class="title">STAR OF LIGA</h5>
  </center>



  <div class="row">
   
        <div class="column">
      <div class="card">
        <div class="content">
          <div class="front">
            <img class="profile" width="100%" src="https://www.wallpapertip.com/wmimgs/7-73002_marco-reus-wallpaper-4k.jpg" alt="reus">
            <h2>Marco Reus</h2>
          </div>
          <div class="back from-left">
            <h2>Marco Reus</h2>
            <h3>10</h3>
            <h3>DOR | GER</h3>
            <img style="height: 50px;width: 50px" class="tem-img" src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000007.svg" alt=""> &nbsp;
            <img style="height:35px; width: 35px " class="tem-img" src="https://www.bundesliga.com/assets/country-flags/de.png" alt="">  <br>       
          </div>
        </div>
      </div>
    </div>


    <div class="column">
      <div class="card">
        <div class="content">
          <div class="front">
            <img class="profile" width="100%" src="https://i.pinimg.com/736x/27/c9/9d/27c99d2466a7d7b4204a84b49cd6e56a.jpg" alt="neuer">
            <h2>Manuel Neuer</h2>
          </div>
          <div class="back from-bottom">
            <h2>Manuel Neuer</h2>
            <h3>1</h3>
            <h3>FCB | GER</h3>
            <img style="height: 50px;width: 50px" class="tem-img" src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000G.svg" alt=""> &nbsp;
            <img style="height:35px; width: 35px " class="tem-img" src="https://www.bundesliga.com/assets/country-flags/de.png" alt="">  <br>
            <p class="des"></p>
          </div>
        </div>
      </div>
    </div>
    
     <div class="column">
      <div class="card">
        <div class="content">
          <div class="front">
            <img class="profile" width="100%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4Bh9flz9kodeUFEeI9GBokRQqVHwmnx3TFNEG08blrlQUULkKCAN4G-G2ablZ-Nxumc&usqp=CAU" alt="muller">
            <h2>Thomas Muller</h2>
          </div>
          <div class="back from-bottom">
            <h2>Thomas Muller</h2>
            <h3>25</h3>
            <h3>FCB | GER</h3>
            <img style="height: 50px;width: 50px" class="tem-img" src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000G.svg" alt=""> &nbsp;
            <img style="height:35px; width: 35px " class="tem-img" src="https://www.bundesliga.com/assets/country-flags/de.png" alt="">  <br>
            <p class="des"></p>
          </div>
        </div>
      </div>
    </div>
    
     <div class="column">
      <div class="card">
        <div class="content">
          <div class="front">
            <img class="profile" width="100%" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSLeyUDh4TdY6H9dywXJEe7lgalQso02WpXw&usqp=CAU" alt="kimmich">
            <h2>Joshua Kimmich</h2>
          </div>
          <div class="back from-right">
            <h2>Joshua Kimmich</h2>
            <h3>6</h3>
            <h3>FCB | GER</h3>
            <img style="height: 50px;width: 50px" class="tem-img" src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000G.svg" alt=""> &nbsp;
            <img style="height:35px; width: 35px " class="tem-img" src="https://www.bundesliga.com/assets/country-flags/de.png" alt="">  <br>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<br>
</body>
</html>