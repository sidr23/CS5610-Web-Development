<!DOCTYPE html PUBLIC "-//W3C/DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>Project</title>
 
  <script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="../javascript/childnodes.js"></script>
<%--<script src="../javascript/project/Book_News.js"> </script>--%>

<script src="../javascript/project/imageswitch.js">
</script>


<link rel="stylesheet" type="text/css" href="../css/project-homepage2.css"/>
<%--<link rel="stylesheet" type="text/css" href="../css/project-p2.css"/> --%>

</head>
<body onLoad="startTime();">
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
<br />
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
	<%--<div id="logosection">
		<img  class="logo" src="../images/project/BookWorld.png" height=125 width=220 />
	</div>
	<div class="menu">
		<ul id="menu1">
			    <li class="home"><a href="Homepage.aspx">Home</a></li>
                <li class="initiatives"><a href="#">Book Search</a>
			        <ul>    			
				        <li> <a href="SearchBooks.aspx">Search for Books</a> </li>
				        <li> <a href="AuthorSearch.aspx">Search for Authors</a> </li>
 			        </ul>
			    </li>
			    <li class="About_us"><a href="Bestsellers.aspx">Bestsellers</a>
			        
    			</li>
			
			    <li class="contact"><a href="contact.html">Contact</a>
    			</li>
		</ul>


	</div>
		<div class="transbox" onMouseOver="intro.stop();" onMouseOut="intro.start();">


			<p class="p3">
				<marquee  id= "intro" direction="left" scrollamount="2" scrolldelay="1">
					Welcome to the world of Books
				</marquee>

			</p> 
		</div>

		<div class="info">
			<p class="p3" align="center">
				Info about the Project
			</p>
		</div>
	
		<div class="info_left">
        <p>Welcome! <br />
        Browse through the world of books with ease! <br />
        You can search for books, by authors or check out the best sellers.
        If you like any book, feel free to preview and buy it.<br />
        Enjoy the experience
        </p>
		</div>
		<img src="../images/project/background.jpg" class="img1" id="img1"/>
        
		<div class="updates">
			<p class="p3" align="center">Book News</p>
		</div>
		<div class="updates_right">
		</div>

		<div id="footer">
			<b>Website developed by Siddharth Ramanathan</b>
		</div>--%>
</body>
</html>