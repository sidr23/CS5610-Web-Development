<%@ Page Language="C#" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>
    
<!DOCTYPE html>
<html>
<title>W06E05</title>
<head> <h1> Connecting to the Database Server</h1></head>

<body>
<p>
This database is retrieved from the Northwind DB that is open to everyone in the MSSQL2005.development.ccs.neu.edu server <br/>

<b> Query: </b><br/>
select OrderId,EmployeeId, OrderDate, RequiredDate, ShippedDate from NorthWind.dbo.Orders where EmployeeId=9; <br/>
</p>
<hr />

<form id="dbform" runat="server">

<asp:GridView ID="GridView1" DataSourceID="Source1" runat="server" AllowSorting="true" CellPadding="10" >
</asp:GridView>

<asp:SqlDataSource ID="Source1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthWindCS %>" 
 SelectCommand="select OrderId,EmployeeId, OrderDate, RequiredDate, ShippedDate from NorthWind.dbo.Orders where EmployeeId=9">

</asp:SqlDataSource>

</form>
              
<footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_6/W06E05.aspx" target="_blank">ASPX Code</a><h3>References:</h3>
    <a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm" target="_blank"> Connection Strings </a> <br />
    <a href="http://net4.ccs.neu.edu/home/rasala/experiments/sql_test/sqltables1.aspx" target="_blank"> Prof's SQL Experiment </a> <br />
</footer>
</body>
</html>