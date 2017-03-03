<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
<head>

<link rel="stylesheet" href="../../css/P4.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../javascript/P4.js"></script>

<h3>Rendering JSON Data from NYTimes</h3>
<hr />
<p>
        This is an advanced experiment demonstrating how data can be fetched from NYTimes API.
</p>

</head>
<body>
    <form id="form1" runat="server">
    <h2>Get Book Information</h2>
   <div>
<%--            Booktype:<input type="text" id="booksearch" /><br />
            <input type="button" id="button1" value="search"/>--%>

Select a particular Genre: <select id="booksearch">

  <option value="hardcover-fiction">Hardcover Fiction</option>
  <option value="combined-print-and-e-book-fiction">Print and Ebook Fiction</option>  
  <option value="trade-fiction-paperback">Trade Fiction Paperback</option>
  <option value="mass-market-paperback">Mass Market Paperback</option>  
  <option value="e-book-fiction">E-book Fiction</option>  
  <option value="hardcover-nonfiction">Hardcover NonFiction</option>
  <option value="combined-print-and-e-book-nonfiction">Print and Ebook NonFiction</option>
  <option value="paperback-nonfiction">Paperback Nonfiction</option>
  <option value="e-book-nonfiction"> Ebook NonFiction</option>  
  <option value="picture-books"> Picture Books</option>  
  <option value="chapter-books"> Chapter Books</option> 
  <option value="childrens-middle-grade"> Childrens Middle Grade</option> 

</select>

<input type="button" id="button1" value="search"/>
   </div>

        <table id="table1">
            <thead>
                <tr>
                    <td>Title</td>
                    <td>Authors</td>
                    <td>Publisher</td>
                    <td>Description</td>
                    <td>Buying Link</td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>

        </table>
    </form>

<footer>
    <p>
        <h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Project_Experiments/P4.aspx" target="_blank">ASPX Code</a><br/>
         <a href="../../fileview/Default.aspx?~/javascript/P4.js" target="_blank">JS Code</a><br/>
         <a href="../../fileview/Default.aspx?~/css/P4.css" target="_blank">CSS Code</a><br/>
        <h3>References:</h3>
        <a href="http://net4.ccs.neu.edu/home/rasala/experiments/rottentomatoes/index2comments.html" target="_blank">Professor Rasala's Rotten Tomatoes Experiments</a> <br />
        <a href="http://developer.nytimes.com/docs/best_sellers_api" target="_blank">NYTimes API</a> <br />
</footer>
</body>
</html>
