<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>About</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
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
  margin: 8px;
}
.about-section {
  padding: 50px;
  text-align: center;
  background-color: #8fa1d8;
  color: white;
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
<div class="about-section" >
  <h1>About Us</h1>
  <p>You might be wondering who are we and what do we do?</p>
  <p>Scroll down to learn more about our company!</p>
</div>

<h2 style="text-align:center">What we do</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/3xKN5dJV/undraw-video-game-night-8h8m-1.png" alt="image1" style="width:100%">
      <div class="container">
        <h2>Who are we</h2>
        <p class="title">We are a company named, 'Just Play Lah'. </p>
        <p >We are a small company and we love what we do. We aspire to grow bigger as a company and always aim to provide the best for our users.</p>
        <p> Our co-founders Richard Aw and Carolyn Mohanty love to game and we created this website to share our love for gaming with others. </p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/t4QSXn1q/image.png" alt="image2" style="width:100%">
      <div class="container">
        <h2>What do we do</h2>
        <p class="title">We review games.</p>
        <p>We review all kinds of games ranging from MOBA games to FPS games. You can count on us for reliable and authentic reviews.
        
      <p>  Just Play Lah takes pride that our reviews are independent and free from any commercial considerations. 
      We never take money for reviews or for placements in our best lists. </p>
        
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="https://i.postimg.cc/J0SX5JwG/image.png" alt="image3" style="width:100%">
      <div class="container">
        <h2>How can you contact us?</h2>
        <p class="title">Designer</p>
        <p>You may contact us via our email for business enquiries and collaborations.</p> 
        <p>Have any ideas for the improvement for our website? We are all ears. </p> 
        <a href="justplaylah@gmail.com">justplaylah@gmail.com</a><br></br>
      
      </div>
    </div>
  </div>
</div>
<div>
	<h2 style="text-align:center">What we do</h2>
	<p style="padding:2rem; line-height: 3; text-align:center">More about us
	Thank you for visiting our about page to learn more about our website. Let us share more about our vision of Just Play Lah. We aim to provide our customers with authentic and unbiased gaming reviews from people all across Singapore. Even if we have collaborations with other companies we make sure that our reviews are as truthful as it can be. Real-time strategy (RTS)
	Shooters (FPS and TPS),
	Multiplayer online battle arena (MOBA), and even
	Role-playing (RPG, ARPG, and More), you name it we got it. We aim to give what our customers want. For any suggestions do contact us. We are a small company but we love collabarations. What are our plans to expand in the future? This is a common question we get asked. We hope to create gaming review magazines in the future. 
	<br>If you would be interested in helping in the effort of creating this do drop us an email! 
	<br> Cheers, Just Play Lah team
</p>
</div>

<%@ include file = "footer.jsp" %>
</body>
</html>
