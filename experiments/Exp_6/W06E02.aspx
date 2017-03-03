<%@ Page Language="C#" %>

<script runat="server">
void Button1_Click(Object sender, EventArgs e) 
{ 
    Label1.Text = "Clicked at " + DateTime.Now.ToString();
}
</script>


<html>
    <title>W06E02</title>

    <head> <h1> Fetching data from server using asp button</h1></head>

<body>
<p>
    In the experiment I fetch get the date and time from the server. <br />
    I have tried to implement the razor feature wherein the asp page would display a dynamic response according to the date and time. <br />
</p>
<p>
    Code Snippet:<br />
void Button_fun(Object sender, EventArgs e) <br />
{ <br />
    Label1.Text = "Clicked at " + DateTime.Now.ToString();<br /> 
}<br />

</p>
<form runat="server">
<div>

    <asp:Label id="Label1" runat="server" Text="Label"> </asp:Label><br />

    <p>Click on the button below</p>
    <asp:Button id="Button1" runat="server" onclick="Button1_Click" Text="Button"></asp:Button>
</div>
  </form>
    
    <footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_6/W06E02.aspx" target="_blank">ASPX Code</a><h3>References:</h3><a href="http://net4.ccs.neu.edu/home/rasala/experiments/basic/" target="_blank">Prof's ASPX Experiment</a> <br />
    <a href="http://www.w3schools.com/aspnet/razor_syntax.asp" target="_blank"> W3School's ASPX Web Forms </a> <br />
    </footer>

</body>
</html>