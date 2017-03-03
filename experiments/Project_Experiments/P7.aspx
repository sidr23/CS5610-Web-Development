<html>
<head>
<style type="text/css">
body
{
background-color:lightcyan;
}
.logo {
    width: 220px;
    height: 120px;
    margin-top: 5px;
}

nav {
    display: block;
    width: 100%;
    height: 50px;
    margin-left:auto;
    margin-right:auto;
}

#menubar
{
    display: block;
    margin-left:auto;
    margin-right:auto;
    width: 100%;
border: 1px solid #000;
}

#menu 
{
    display: block;
    float:left;
    position: relative;
    z-index: 9999;
    margin-left:auto;
    margin-right:auto;
}
#menu li 
{
        display: block;
        float: left;
}

#menu li a 
{
display: block;
position: relative;
float: left;

padding: 0 15px;
font-size: 1.5em;
line-height: 40px;
text-decoration:none;
color: black;
background-color: lightblue;
}

#menu li a:hover
{
background-color: black;
color: yellow;
}

#menu ul li 
{
display: none;
position: absolute;
top: 70px;
width: 300px;
z-index: -1;

}

#info
{
 top:60%;
 width:100%;
 height:auto;
 float:left;
 background-color: black;
 display:table-cell;
 vertical-align:middle;
 position:relative;
 text-align:justify;
 color:white;
 margin-left:1%;
 margin-right:1%;
 margin-top:1%;
margin-bottom:1%; 
font-size: 1.2em;   
}

@media screen and (max-width : 677px) {
#menu{
        padding-left:100px;
    }
}

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

img.img1
{
top:39%;
left:25%;
width:50%;
height:50%;
position:absolute;
border:1px solid black;
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

@media (max-width: 767px) {

div.transbox
{
display:none;
}

img.img1
{
    display:block;
    top:70%;
    height:auto;
    width:100%;
    max-width:400px;
    float:left;
}
}

@media (max-width: 400px) 
{
img.img1
{
    display:block;
    top:100%;
    height:auto;
    width:100%;
    max-width:400px;
    float:left;
}
}

@media (max-width: 300px) 
{
img.img1
{
    display:block;
    top:120%;
    height:auto;
    width:100%;
    max-width:300px;
    float:left;
}
}

</style>

<script type="text/javascript">
var timerid = 0;
var images = new Array("../../images/project/background.jpg",
			"../../images/project/background2.jpg",
			"../../images/project/background3.jpg");
var countimages = 0;
function startTime() {
    if (timerid) {
        timerid = 0;
    }
    var tDate = new Date();

    if (countimages == images.length) {
        countimages = 0;
    }
    if (tDate.getSeconds() % 4 == 0) {
        document.getElementById("img1").src = images[countimages];
    }
    countimages++;

    timerid = setTimeout("startTime()", 1000);
}

</script>
</head>
<body>
<div>
<img src="../../images/project/BookWorld.png" alt="logo" class="logo" />
</div>
<nav>
<div id="menubar">
                <ul id="menu">
                    <li><a href="HomePage.aspx">Home</a></li>
                    <li>
                        <a href="SearchBooks.aspx">Search for Books</a>
                    </li>
                    <li>
                        <a href="AuthorSearch.aspx">Search By Author-name</a>
                    </li>

                    <li>
                        <a href="Bestsellers.aspx">Bestsellers</a>
                    </li>
                    <li>
                        <a href="News.aspx">Book News</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact Us</a>
                    </li>
                    
                     <li><a href="News.aspx">Documentation</a></li>
                </ul>
            </div>

</nav>

<div class="transbox" onMouseOver="intro.stop();" onMouseOut="intro.start();">


			<p class="p3">
				<marquee  id= "intro" direction="left" scrollamount="2" scrolldelay="1">
					Welcome to the world of Books
				</marquee>

			</p> 
</div>

<img src="../../images/project/background.jpg" class="img1" id="img1"/>

        <div id="info">
            <p>Hi!</p>
            <p>
              Welcome! 
Browse through the world of books with ease! 
You can search for books, by authors or check out the best sellers. <br/>
If you like any book, feel free to preview and buy it. Enjoy the experience!<br/>
Website developed by Siddharth Ramanathan under the guidance of Professor Richard Rasala, Northeastern University. 
	</p>
        </div>
</body>
</html>