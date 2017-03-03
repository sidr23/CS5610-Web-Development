<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
<style type="text/css">
table { 
  width: 100%; 
  border-collapse: collapse; 
}

th 
{ 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
td, th 
{ 
  padding: 5px; 
  border: 1px solid #ccc; 
  text-align: left;
}


@media only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  
{
    table, thead, tbody, th, td, tr 
    { 
        display: block; 
    }
    
    thead tr 
    { 
        position: absolute;
        top: -9999px;
        left: -9999px;
    }
    
    tr 
    {
         border: 1px solid #ccc;
    }
    
    td 
    { 
        border: none;
        border-bottom: 1px solid #eee; 
        position: relative;
        padding-left: 50%; 
    }
    
    td:before 
    { 
        position: absolute;
        top: 6px;
        left: 6px;
        width: 45%; 
        padding-right: 10px; 
        white-space: nowrap;
    }
    td:nth-of-type(1):before { content: "Title"; }
    td:nth-of-type(2):before { content: "Author"; }
    td:nth-of-type(3):before { content: "Publisher"; }
    td:nth-of-type(4):before { content: "Published Date"; }
    td:nth-of-type(5):before { content: "Description"; }
    td:nth-of-type(6):before { content: "Image"; }
    td:nth-of-type(7):before { content: "Preview Link"; }
    td:nth-of-type(8):before { content: "Info Link"; }
}

    </style>  

<script type = "text/javascript" src="../../javascript/P3.js">
</script>

<h3>Rendering JSON Data from GoogleBooks</h3>
<hr />
<p>
        This is an advanced experiment demonstrating how data can be fetched from GoogleBooks using JSON Parsing.
</p>

</head>
<body>
    <form id="form1" runat="server">
    <h2>Get Book Information</h2>
   <div>
            <input type="text" id="search" />
            <input type="button" value="search" id="button1"/> <select id="booksearch">
                <option value="10">10 results</option>
                <option value="20">20 results</option>  </select>
   </div>
        <br />
        <table id="table1">
            <thead>
                <tr>
                    <td>Title</td>
                    <td>Authors</td>
                    <td>Publisher</td>
                    <td>Published Date</td>
                    <td>Description</td>
                    <td>Image</td>
                    <td>Preview Link</td>
                    <td>Info Link</td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>

        </table>
    </form>
<footer>
    <p>
        <h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Project_Experiments/P3.aspx" target="_blank">ASPX Code</a><br />
        <a href="../../fileview/Default.aspx?~/javascript/P3.js" target="_blank">JS Source Code</a><br />
        <h3>References:</h3><a href="https://developers.google.com/books/" target="_blank">Google Books API</a> <br />
        <a href="http://net4.ccs.neu.edu/home/rasala/experiments/rottentomatoes/index2comments.html" target="_blank">Professor Rasala's Rotten Tomatoes Experiments</a> <br />
</footer>
</body>
</html>