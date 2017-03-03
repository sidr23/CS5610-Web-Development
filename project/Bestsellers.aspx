<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<title>Bestsellers</title>    
<head>

<link rel="stylesheet" type="text/css" href="../css/project/bestsellers.css"/>
<link rel="stylesheet" type="text/css" href="../css/project/project-homepage2.css"/>
<%--<link rel="stylesheet" type="text/css" href="../css/project-p2.css"> --%>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
<script type="text/javascript" src="../javascript/project/bestsellers.js">

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
   <div>
<br />
<center><b>Select a particular Genre from the list:</b><select id="booksearch"></center>

  <option value="hardcover-fiction">Hardcover Fiction</option>
  <option value="combined-print-and-e-book-fiction">Print and Ebook Fiction</option>  
  <option value="trade-fiction-paperback">Trade Fiction Paperback</option>
  <option value="mass-market-paperback">Mass Market Paperback</option>  
  <option value="e-book-fiction">E-book Fiction</option>  
  <option value="hardcover-nonfiction">Hardcover NonFiction</option>
  <option value="combined-print-and-e-book-nonfiction">Print and Ebook NonFiction</option>
  <option value="paperback-nonfiction">Paperback Nonfiction</option>
  <option value="e-book-nonfiction">Ebook NonFiction</option>  
  <option value="picture-books">Picture Books</option>  
  <option value="chapter-books">Chapter Books</option> 
  <option value="childrens-middle-grade">Childrens Middle Grade</option> 
  <option value="paperback-books">Paperback Books</option>  
  <option value="series-books">Series Books</option> 
  <option value="hardcover-graphic-books">Hardcover Graphic books</option>
  <option value="paperback-graphic-books">Paperback Graphic books</option>  
  <option value="manga">Manga</option> 
  <option value="combined-print-fiction">Combined Hardcover & Paperback Fiction</option>      
  <option value="animals">Animals</option>
  <option value="business-books"> Business Books</option> 
  <option value="culture">Culture</option>
  <option value="education">Education</option>  
  <option value="family">Family</option> 
  <option value="food-and-fitness">Food and Fitness</option>      
  <option value="health">Health</option> 
  <option value="humor">Humor</option> 
  <option value="science">Science</option>      
  <option value="sports">Sports</option> 
                  
</select>

<input type="button" id="button1" value="search"/>
   </div>

        <table id="table1">
            <thead>
                <tr>
                    <td><b>Title</b></td>
                    <td><b>Authors</b></td>
                    <td><b>Publisher</b></td>
                    <td><b>Description</b></td>
                    <td><b>Buying Link</b></td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>

        </table>

    </form>

</body>
</html>
