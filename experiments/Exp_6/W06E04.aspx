<!DOCTYPE html>
<html>
<body>
<%
    Response.Write("<h2>Some common asp elements implementation</h2>")
%>

<%
    Response.Write("<p style='color:#0000ff'>This experiment is completely developed using ASP </p>")
%>


<%
    Response.Write("<p>Controls Like response.write, listitem ordering for radio, styling html tags,form and the get method for forms have been explored  </p>")
%>
<form runat="server" action="http://net4.ccs.neu.edu/home/sidr/experiments/Exp_6/W06E04.aspx" method="get">

Your name: <input type="text" name="fname" size="20" />
<%
dim fname
fname=Request.QueryString("fname")
If fname<>"" Then
     	Response.Write("Hello " & fname)
     	Response.Write("How are you today?")
End If
%>
<input type="submit" value="Submit"/>

<p>Select any item </p>
            
<asp:RadioButtonList id="list1" runat="server">

<asp:listitem value="Cookie" />
<asp:listitem value="Candy" />
<asp:listitem value="Chocolate" />

</asp:RadioButtonList>

<%
    Response.Write("<p>On entering the name it displays a greeting posted back from the server </p>")
%>

</form>
<footer>
    <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_6/W06E04.aspx" target="_blank">ASPX Code</a><h3>References:</h3><a href="http://net4.ccs.neu.edu/home/rasala/experiments/basic/" target="_blank">Prof's ASPX Experiments</a> <br />
    <a href="http://www.w3schools.com/asp/asp_inputforms.asp" target="_blank"> W3School's ASPX Layouts </a> <br />
</footer>

</body>

</html>