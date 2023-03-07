<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Redirecting ...</title>
</head>
<body>

<div class="timer">
  <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 300 300" preserveAspectRatio="none" style="width:300px; height:300px; top:0; left:0;">
    <circle cx="100" cy="150" r="57" id="pink-halo" fill="none" stroke="#ffcc33" stroke-width="10" stroke-dasharray="0, 361" transform="rotate(-90,100,100)" />
    <text id="myTimer" text-anchor="middle" x="150" y="100" style="font-size: 40px; fill:#343434;"></text>
    <text text-anchor="middle" x="150" y="120" style="font-size: 14px; fill:#343434;">Redirecting...</text>
</svg>
</div>

<!--  dasharray size 2*r*pi, first number 0-->
<!-- transform rotate is here because svg begins right on 3 o'clock initialy -->


<style>

html, body {
	height: 100%;
}

.timer {
  	display:flex;
 	align-items:center;
  	justify-content:center;
  	height:100%;
  	width:100%;
}

</style>

<script>

(function () {
    var circle = document.getElementById('pink-halo');
    var myTimer = document.getElementById('myTimer');
    var t = 5;
    var interval = 30;
    var angle = 0;
    var angle_increment = 360/t;
    var intervalCounter = 0;
  
    window.timer = window.setInterval(function () {
      intervalCounter ++;    
        circle.setAttribute("stroke-dasharray", angle + ", 361");
     
       myTimer.innerHTML = t - parseInt((angle/360)*t);

        if (angle >= 360) {
            window.clearInterval(window.timer);
        }

      angle += angle_increment/(1000/interval);
    }.bind(this), interval);
})()

</script>


</body>
</html>