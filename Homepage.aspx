<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="../javascript/childnodes.js"></script>
<link rel="stylesheet" type="text/css" href="../css/project/project-homepage2.css"/>
<script src="../javascript/project/imageswitch.js">
</script>
</head>
<body onLoad="startTime();">
<div>
<img src="../images/project/BookWorld.png" alt="logo" class="logo" />
</div>
<div id="menu1">
<div class="menubar">
		<ul id="menu">
			    <li> <a href="Homepage.aspx">Home</a></li>
                <li> <a href="SearchBooks.aspx">Search by BookName</a></li>
		        <li> <a href="AuthorSearch.aspx">Search by Author Name</a> </li>
			    <li> <a href="Bestsellers.aspx">Bestsellers</a>
			    <li> <a href="BookNews.aspx">Book News</a> </li>			
			    <li> <a href="contact.html">Contact</a></li>
                <li> <a href="http://net4.ccs.neu.edu/home/sidr/story/index.htm?../project/" target="_blank">Documentation</a> </li>
		</ul>


	</div>
</div>

<div class="transbox" onMouseOver="intro.stop();" onMouseOut="intro.start();">


			<p class="p3">
				<marquee  id= "intro" direction="left" scrollamount="2" scrolldelay="1">
					Welcome to the world of Books
				</marquee>

			</p> 
</div>

<img src="../images/project/background.jpg" class="img1" id="img1"/>

        <div id="info">
            <p>Hi!</p>
            <p>
              Welcome! 
Browse through the world of books with ease! 
You can search for books, by authors or check out the best sellers. <br/>
If you like any book, feel free to preview and buy it. Enjoy the experience!<br/> 
	</p>
        </div>
</body>
</html>
