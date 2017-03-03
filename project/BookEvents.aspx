<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<title>BookEvents</title>    
<head>

<link rel="stylesheet" type="text/css" href="../css/project/bookevents.css"/>
<link rel="stylesheet" type="text/css" href="../css/project/project-homepage2.css"/>
<%--<link rel="stylesheet" type="text/css" href="../css/project-p2.css"> --%>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
<script type="text/javascript" src="../javascript/project/bookevents.js">

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
<h3><center>Check out exciting Book Events and Launches by various authors</center></h3>
<p><center>Note: Data retrieval takes approximately 15 seconds. Please be patient. Thank you</center></p>
    <form id="form1" runat="server">
   <div>
<br />
<center><b>Select your state:</b>
    <select id="statebox"></center>
							<option value="AL" >Alabama</option>
							<option value="AK" >Alaska</option>
							<option value="AZ" >Arizona</option>
							<option value="AR" >Arkansas</option>
							<option value="CA">California</option>
							<option value="CO" >Colorado</option>
							<option value="CT" >Connecticut</option>
							<option value="DE" >Delaware</option>
							<option value="DC" >District of Columbia</option>
							<option value="FL" >Florida</option>
							<option value="GA" >Georgia</option>
							<option value="HI" >Hawaii</option>
							<option value="ID" >Idaho</option>
							<option value="IL" >Illinois</option>
							<option value="IN" >Indiana</option>
							<option value="IA" >Iowa</option>
							<option value="KS" >Kansas</option>
							<option value="KY" >Kentucky</option>
							<option value="LA" >Louisiana</option>
							<option value="ME" >Maine</option>
							<option value="MD" >Maryland</option>
							<option value="MA" >Massachusettes</option>
							<option value="MI" >Michigan</option>
							<option value="MN" >Minnesota</option>
							<option value="MS" >Mississippi</option>
							<option value="MO" >Missouri</option>
							<option value="MT" >Montana</option>
							<option value="NE" >Nebraska</option>
							<option value="NV" >Nevada</option>
							<option value="NH" >New Hampshire</option>
							<option value="NJ" >New Jersey</option>
							<option value="NM" >New Mexico</option>
							<option value="NY" >New York</option>
							<option value="NC" >North Carolina</option>
							<option value="ND" >North Dakota</option>
							<option value="OH" >Ohio</option>
							<option value="OK" >Oklahoma</option>
							<option value="OR" >Oregon</option>
							<option value="PA" >Pennsylvania</option>
							<option value="RI" >Rhode Island</option>
							<option value="SC" >South Carolina</option>
							<option value="SD" >South Dakota</option>
							<option value="TN" >Tennesse</option>
							<option value="TX" >Texas</option>
							<option value="UT" >Utah</option>
							<option value="VT" >Vermont</option>
							<option value="VA" >Virginia</option>
							<option value="WA" >Washington</option>
							<option value="WV" >West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY" >Wyoming</option>				
</select>
<input type="button" id="button1" value="search"/>
   </div>
        <p id="p1"></p>
        <table id="table1">
            <thead>
                <tr>
                    <td><b>Title</b></td>
                    <td><b>Author</b></td>
                    <td><b>Start Date</b></td>
                    <td><b>End Date</b></td>
                    <td><b>Local Time</b></td>
                    <td><b>Venue</b></td>
                    <td><b>Location</b></td>
                    <td><b>City</b></td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>
        
        </table>
    </form>

</body>
</html>
