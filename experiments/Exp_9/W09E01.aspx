<!DOCTYPE html PUBLIC "-//W3C/DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>Project</title>
 
  <script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
function ShowSub(object)
 {
   $(object).children().show();
 
}
function CloseSub(object)
{
 $(object).children().hide();
}
</script>
<script language="javascript" type="text/javascript">
var timerid = 0;
var images = new Array(	"../../images/photos/background.jpg",
			"../../images/photos/background2.jpg",
			"../../images/photos/background3.jpg");
var countimages = 0;
function startTime()
{
	if(timerid)
	{
		timerid = 0;
	}
	var tDate = new Date();
	
	if(countimages == images.length)
	{
		countimages = 0;
	}
	if(tDate.getSeconds() % 4 == 0)
	{
		document.getElementById("img1").src = images[countimages];
	}
	countimages++;
	
	timerid = setTimeout("startTime()", 1000);
}
</script>


<link rel="stylesheet" type="text/css" href="../../css/project-homepage.css" />
<style>

div.transbox
  {
  top:33%;
  left:25%;
  position:absolute;
  width:50%;
  height:6%;

  background-color:#708090;
  border:1px solid black;
   opacity:0.5;

  }

p.p3
{
font-size:15px;
margin-right:2%;
margin-left:2%;
margin-top:2%;
line-height:150%;
font-weight:italics;
font-family:georgia;
color:white;
}
img.img1
{
top:39%;
left:25%;
width:50%;
height:50%;
position:absolute;
border:1px solid black;
}
p.p1
{
font-weight:bold; 
margin-right:10px;
margin-left:10px;
top:33%;
left:78%
width:20%;
height:6%;
}

#class

{

font-weight:italics;

color:blue;
text-decoration:none;
}


div.updates_right
{
left:78%;
top:39%;
width:20%; 
height:50%; 
background:#afcadd; 
position:absolute;
 border:1px solid black;
overflow:auto;
}
p.p1
{
font-weight:bold; 
margin-right:10px;
margin-left:10px;
}

div.updates
  {
  top:33%;
  left:78%;
  position:absolute;
  width:20%;
  height:6%;
  background-color:#18191A;
  border:1px solid black;
   opacity:1.0;
overflow:auto;  
}
div.info
  {
  top:33%;
  left:1%;
  position:absolute;
  width:20%;
  height:6%;
  background-color:#18191A;
  border:1px solid black;
   opacity:1.0;
overflow:auto;
  }
div.info_left
{
left:1%;
top:39%;
width:20%; 
height:50%; 
background:#afcadd; 
position:absolute;
 border:1px solid black;
overflow:auto;
}
p.p4
{

margin-right:10px;
margin-left:10px;
}
</style>
</head>
<body onLoad="startTime();">

	<div id="logosection">
		<img  class="logo" src="../../images/photos/Background.jpg" height=100 width=350 />
		<img  class="neulogo" src="../../images/photos/Sid.jpg" height=200 width=250 /> 
	</div>
	<div class="menu">
		<ul id="menu1">
			    <li class=home><a href="#">Home</a></li>
			    <li class=About_us><a href="#">About Us</a>
			        <ul>
            				<li><a href="#">Functionalities</a></li>
            				<li><a href="#">Vision</a></li>
        			        </ul>
    			</li>
			<li class=initiatives><a href="#">Operations</a>
			        <ul>    			
				<li> <a href="#">Search for Information</a> </li>
				<li> <a href="#">Search for Videos</a> </li>
				<li> <a href="#">Search for Books</a></li>
 			       </ul>

	</div>
		<div class="transbox" onMouseOver="intro.stop();" onMouseOut="intro.start();">


			<p class="p3">
				<marquee  id= "intro" direction="left" scrollamount="2" scrolldelay="1">
					Welcome to My Project
				</marquee>

			</p> 
		</div>

		<div class="info">
			<p class="p3" align="center">
				Info about my project
			</p>
		</div>
	
		<div class="info_left">
		<p class="p4">
		<pre>
            Based on the API I'd use,the project topic would be finalized soon.
		</pre>
		
		</p>
		</div>
		<img src="../../images/photos/background.jpg" class="img1" id="img1"/>

		<div class="updates">
			<p class="p3" align="center">Updates</p>
		</div>
		<div class="updates_right">
		<p class="p1">
		<pre>
        Exploring options to incorporate RSS Feeds here.
		</p></div>

		<div id="footer">
			<b>Website developed by Siddharth Ramanathan</b></span>
		</div>
</body>
</html>