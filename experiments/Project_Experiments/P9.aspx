<%@ Page Language="C#"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    
<head>

<link rel="stylesheet" href="../../css/project/bookevents.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"> </script>
<script type="text/javascript" src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../javascript/P9.js"></script>

<h3>Rendering JSON Data from HARPER COLLINS</h3>
<hr />
<p>
        This is an advanced experiment demonstrating how data can be fetched from HARPER COLLINS API.
</p>

</head>
<body>
    <form id="form1" runat="server">
    <h2>Get Book Events Information</h2>
   <div>
<label id="State" value="Select your state"> Select your state</label>
<select id="statebox">
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
                    <td>TITLE</td>
                    <td>AUTHOR</td>
                    <td>STARTDATE</td>
                    <td>ENDDATE</td>
                    <td>LOCAL TIME</td>
                    <td>VENUE</td>
                    <td>LOCATION</td>
                    <td>CITY</td>
                </tr>
            </thead>
        
        <tbody id="BookResults"></tbody>
        
        </table>
    </form>

<footer>
    <p>
        <h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Project_Experiments/P9.aspx" target="_blank">ASPX Code</a><br/>
         <a href="../../fileview/Default.aspx?~/javascript/P9.js" target="_blank">JS Code</a><br/>
         <a href="../../fileview/Default.aspx?~/css/project/bookevents.css" target="_blank">CSS Code</a><br/>
        <h3>References:</h3>
        <a href="http://net4.ccs.neu.edu/home/rasala/experiments/rottentomatoes/index2comments.html" target="_blank">Professor Rasala's Rotten Tomatoes Experiments</a> <br />
        <a href="http://developer.harpercollins.com/page" target="_blank">Harper Collins OpenBook API</a> <br />
</footer>
</body>
</html>
