<%@ Page Language="C#"  %>

<script runat="server">
void add(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txt1.Text);
        int b = Convert.ToInt32(txt2.Text);
        int c = a + b;
		Label1.Text = c.ToString();
    }

</script>
<!DOCTYPE html>
<html>
<head runat="server">

</head>

<body>

<title>W06E03</title>

<head><h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Basic Addition Calculator in ASPX </h1></head>

<body>

<p>
    This is a basic ASPX Addition Program <br />
    I've used form elements- labels and textboxes to display the boxes in form of text.<br /> 
    The program calculates the sum of two numbers <br />
This can be modified further to make a calculator <br />

</p>
    <br />
    <p>
        <b>Code Snippet:</b><br />
    void add(object sender, EventArgs e) <br/>
    {<br/>
        int a = Convert.ToInt32(txt1.Text);<br/>
        int b = Convert.ToInt32(txt2.Text);<br/>
        int c = a + b;<br/>
		Label1.Text = c.ToString();<br/>
    }<br/>

</p>

<form id="form1" runat="server">

First Number:
<asp:TextBox id="txt1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="Please enter a number"></asp:RequiredFieldValidator>
<br/>
<br/>

Second Number:
<asp:TextBox id="txt2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2" ErrorMessage="Please enter a number"></asp:RequiredFieldValidator>
<br/>
<br/>

<asp:Button id="Button1" OnClick="add" Text="Add" runat="server" />
<p><asp:Label id="Label1" runat="server" text="Answer"/></p>

</form>
<footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_6/W06E03.aspx" target="_blank">ASPX Code</a><h3>References:</h3><a href="https://msdn.microsoft.com/en-us/library/system.convert.toint32%28v=vs.110%29.aspx" target="_blank"> MSDN </a> <br />
    
    </footer>
</body>
</html>