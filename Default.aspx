<%@ Page Language="C#" %>

<script runat="server">
    <%-- This demo page has no server side script --%>
</script>

<!DOCTYPE HTML PUBLIC "-//W3C/DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sid Homepage</title>
<link rel="stylesheet" type="text/css" href="css/homepage.css" /> 
</head>
<body>
    <div id="menu1">
        <ul class="master_navigation">
            <li class="sitestatistics"><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
            <li class="statistics"><a href="statistics/" target="_blank">Statistics</a></li>
            <li class="source"><a href="source/" target="_blank">Source</a></li>
            <li class="search"><a href="search/" target="_blank">Search</a></li>
            <li class="searchtree"><a href="searchtree/" target="_blank">SearchTree</a></li>
            <li class="textview"><a href="textview/" target="_blank">TextView</a></li>
            <li class="filelist"><a href="filelist.aspx" target="_blank">FileList</a></li>
            <li class="autofile"><a href="autofile.aspx" target="_blank">AutoFile</a></li>
            <li class="autoimage"><a href="images/autoimage.aspx" target="_blank">Images</a></li>
            <li class="blog"><a href="blog/" target="_blank">Blog</a></li>
            <li class="experiments"><a href="./story/index.htm?../experiments/" target="_blank">Experiments</a></li>
            <li class="project"><a href="./project/Homepage.aspx" target="_blank">Project</a></li>
            <li class="documentation"><a href="./story/index.htm?../project/" target="_blank">Documentation</a></li>            
        </ul>
    </div>
    <br />
    <div id="logo">
            <img class="display" src="images/photos/logo.png" /> 
    </div>
    <p id="p1">SIDDHARTH RAMANATHAN</p>
    <center>
        <ul>
            <li>                <a href="https://www.linkedin.com/in/sidr23/" target="_blank"><img src="images/photos/linkedin_icon.gif" alt="Linkedin" /></a>                <a href="https://www.facebook.com/siddharth.ramanathan.23" target="_blank"><img src="images/photos/facebook_icon.gif" alt="Facebook" /></a>                <a href="https://google.com/+SiddharthRamanathan23" target="_blank"><img src="images/photos/googleplus_icon.png" alt="Googleplus"/></a>        </ul>
    </center>
    <div id="content">
            <img class="infoimg" src="images/photos/Sid2.jpg" height=300 width=450 />
        <div id="info">
            <p>Hi!</p>
            <p>
                I am Siddharth and this is my website for the course CS 5610 Web Development under <a href="http://net4.ccs.neu.edu/home/rasala/"
                                                                                                      target="_blank">Prof. Richard Rasala</a>.
            </p>
            <p>
                I have done my experiments and project for the course here.
                I have worked on HTML, CSS, ASP, .NET, AJAX, Jquery,Javascript, SQL and many exciting technologies thanks to Prof Rasala.
                It is through this course I have had an opportunity to work on Web technologies and hone required skills.<br/>
                Copyright © - Siddharth Ramanathan - Spring 2015 - Web Development - CS 5610<br/>
            </p>
        </div>

    </div>
    <div id="menu2">
        <div class="menu2" id="experiments">
            <p id="p2"><a href="./story/index.htm?../experiments/" target="_blank"> Experiments </a></p>

        </div>
        <div class="menu2" id="project">
            <p id="p2"><a href="./project/Homepage.aspx" target="_blank"> Project </a></p>
        </div>
        <div class="menu2" id="documentation">
            <p id="p2"><a href="./story/index.htm?../project/" target="_blank"> Documentation</a> </p>
        </div>
    </div>
</body>
</html>
