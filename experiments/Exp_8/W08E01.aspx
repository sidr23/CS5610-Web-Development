<%@ Page Language="C#" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
    
<!DOCTYPE html>
<html>
<title>W08E01</title>
<head> <h1> Creating a Database,Populating it and uploading to Server</h1></head>

<body>
<p>
This database is retrieved from the a DB named test that I have created in the MSSQL2005.development.ccs.neu.edu under my provided database server<br/>

<b> Query: </b><br/>
select * from sidr.test; <br/>
</p>
<hr />

<form id="dbform" runat="server">

<asp:GridView ID="GridView1" DataSourceID="Source1" runat="server" AllowSorting="true" CellPadding="10" >
</asp:GridView>

<asp:SqlDataSource ID="Source1" runat="server" ConnectionString="<%$ ConnectionStrings:sidrCS %>" 
 SelectCommand="select * from sidr.test">

</asp:SqlDataSource>

</form>
              
<footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_8/W08E01.aspx" target="_blank">ASPX Code</a><h3>References:</h3>
    <a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm" target="_blank"> Connection Strings </a> <br />
    <a href="http://net4.ccs.neu.edu/home/rasala/experiments/sql_test/sqltables1.aspx" target="_blank"> Prof's SQL Experiment </a> <br />
</footer>
</body>
</html>