
<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<title>SearchBooks</title>    
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
<link rel="stylesheet" type="text/css" href="../css/project/project-homepage2.css"/>
<link rel="Stylesheet" type="text/css" href="../css/project/searchbooks.css" /> 

<script src="../javascript/project/searchbooks.js"> 
</script>
</head>
<body>
<div>
<img src="../images/project/BookWorld.png" alt="logo" class="logo" />
</div>
    <div id="menu1">
<div class="menubar">
		<ul id="menu">
			    <li> <a href="Homepage.aspx">Home</a></li>
                <li> <a href="SearchBooks.aspx">Search Books</a></li>
		        <li> <a href="AuthorSearch.aspx">Search by Author</a> </li>
			    <li> <a href="Bestsellers.aspx">Bestsellers</a></li>
                <li> <a href="BookEvents.aspx">Book Events</a> </li>
			    <li> <a href="BookNews.aspx">Book News</a> </li>			
			    <li> <a href="contact.html">Contact</a></li>
                <li> <a href="http://net4.ccs.neu.edu/home/sidr/story/index.htm?../project/" target="_blank">Documentation</a> </li>
		</ul>


	</div>
</div>
<br />
    <form id="form1" runat="server">
    <center><h2>Get Book Information</h2>
        <p>Enter the name of the book you want to search and number of results you wish to see</p>
   <div>
            <input type="text" id="search" />
            <select id="booksearch">
                <option value="10">10 results</option>
                <option value="20">20 results</option>  
                <option value="30">30 results</option>
                <option value="40">40 results</option>
                <option value="50">50 results</option>  
            </select>
            <input type="button" value="search" id="button1"/>
   </div>
    </center>
        <p id="p1"></p>
        <br />
        <table id="table1">
            <thead>
                <tr>
                    <td><b>Title</b></td>
                    <td><b>Authors</b></td>
                    <td><b>Publisher</b></td>
                    <td><b>Published Date</b></td>
                    <td><b>Description</b></td>
                    <td><b>Image</b></td>
                    <td><b>Preview Link</b></td>
                    <td><b>Info Link</b></td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>

        </table>
    </form>

</body>
</html>
