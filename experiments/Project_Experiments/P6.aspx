<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>    

<script type = "text/javascript" src="../../javascript/P6.js">
</script>

<h3>Rendering JSON Data from GoogleBooks</h3>
<hr />
<p>
        This is an advanced experiment demonstrating how data can be fetched from GoogleBooks using JSON Parsing.
</p>

</head>
<body>
    <form id="form1" runat="server">
    <h2>Get Book Information Based on Authorname</h2>
   <div>
            <input type="text" id="search" />
            <input type="button" value="search" id="button1"/>
   </div>
        <table id="table1">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Author</td>
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
        <h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Project_Experiments/P6.aspx" target="_blank">ASPX Code</a><br />
                                            <a href="../../fileview/Default.aspx?~/javascript/P6.js" target="_blank">JS Code</a><br />
        <h3>References:</h3><a href="https://developers.google.com/books/" target="_blank">Google Books API</a> <br />
        <a href="http://net4.ccs.neu.edu/home/rasala/experiments/rottentomatoes/index2comments.html" target="_blank">Professor Rasala's Rotten Tomatoes Experiments</a> <br />

</footer>
</body>
</html>
