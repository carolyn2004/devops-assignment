<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Games</title>
<style >
 
.image{
  position: center;
    width: 800x; 
    height: 400px; 
   margin-left: 22rem;
   margin-right: 22rem;
}
.row {
margin-bottom:-5rem;
padding-top: -100px;

}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
html {
  box-sizing: border-box;
}
*, *:before, *:after {
  box-sizing: inherit;
}
.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 80px;
}

.container {
  padding: 0 16px;
}
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}
.title {
  color: grey;
}
@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

</style>
</head>
<body>
<%@ include file = "header.jsp" %>
<div>
<img class="image" src="https://i.postimg.cc/6pMCZ991/image.png">
</div>

<h2 style="text-align:center">Featured games</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/fyyvhXLZ/image.png" alt="image1" style="width:100%">
      <div class="container">
        <h2>Elden ring</h2>
        <p class="title">Elden Ring is a 2022 action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment.</p>
        <br>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/mgByb0h8/image.png" alt="image2" style="width:100%">
      <div class="container">
        <h2>God of War</h2>
        <p class="title">God of War is an action-adventure game franchise created by David Jaffe at Sony's Santa Monica Studio.</p> <br>
      <br>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/bvgRb9V0/image.png" alt="image3" style="width:100%">
      <div class="container">
        <h2>Minecraft</h2>
        
        <p class="title">Minecraft is a sandbox video game developed by Mojang Studios. The game was created by Markus "Notch" Persson in the Java programming language.</p>
       <br>
      </div>
    </div>
  </div>
</div>


<div class="row" style="">
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/q7SxsgMv/image.png" alt="image1" style="width:100%">
      <div class="container">
        <h2>Mario Kart</h2>
        <p class="title">Mario Kart is a series of racing games developed and published by Nintendo. Players compete in go-kart races while using various power-up items.</p>
        <br>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/bw2BKXDr/image.png" alt="image2" style="width:100%">
      <div class="container">
        <h2>Pokemon Unite</h2>
        <p class="title">Pokémon Unite is a free-to-play, multiplayer online battle arena video game published by The Pokémon Company. </p> <br>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/XvXFq3Wc/image.png" alt="image3" style="width:100%">
      <div class="container">
        <h2>Warframe</h2>
        <p class="title">Warframe is a free-to-play action role-playing third-person shooter multiplayer online game.</p>
       <br><br>
      </div>
    </div>
  </div>
</div>

<!-- new row -->

<div class="row" style="">
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/6qWqZCSZ/image.png" alt="image1" style="width:100%">
      <div class="container">
        <h2>Overcooked</h2>
        <p class="title">Overcooked (stylised as Overcooked!) is a 2016 cooking simulation video game developed by Ghost Town Games and published by Team17.</p>
        <br>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/J0YrBvjw/image.png" alt="image2" style="width:100%">
      <div class="container">
        <h2>Cooking mama</h2>
        <p class="title">Cooking Mama is a Japanese video game series and media franchise owned by Cooking Mama Limited. </p> <br>
      <br>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/135dd4xK/image.png" alt="image3" style="width:100%">
      <div class="container">
        <h2>Final Fantasy: Endwalker</h2>
        <p class="title">Final Fantasy XIV: Endwalker is the fourth expansion pack to Final Fantasy XIV, a multiplayer online role-playing game.</p>
        
   <br><br>
      </div>
    </div>
  </div>
</div>

<!-- new row -->

<%@ include file = "footer.jsp" %>
</body>
</html>