<%@ Page Language="C#" %>
    
<script  runat="server">
    void submit(object sender, EventArgs e)
    {
        Label1.Text = "Your feedback: " + txt4.Text;
    }
</script>

<!DOCTYPE html>
<html>

<title>W06E02</title>

<head><h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Basic Form with validation </h1></head>

<body>

<p>
    This is a basic ASPX Form with validation.<br />
    I've used form elements- labels and textboxes to display the form.<br /> 
    Here whatever the user has commented
    is displayed back to him using the function submit that does the work of returning back the user feedback to the user.
</p>
    <br />
    <p>
        <b>Code Snippet:</b><br />
    void submit(object sender, EventArgs e) <br />
    {<br />
        Label1.Text = "Your feedback: " + txt4.Text;<br />
    }<br />

    </p>
        <h2> Enter your details into the form below: </h2>
    <br />
<form runat="server">

UserName:
<asp:TextBox id="txt1" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="Please enter your Name"></asp:RequiredFieldValidator>

<br/>
<br/>

Password:
<asp:TextBox id="txt2" TextMode="password" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2" ErrorMessage="Please enter your Password"></asp:RequiredFieldValidator>     

<br/>
<br/>

Email:
<asp:TextBox id="txt3" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt3" ErrorMessage="Enter valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt3" ErrorMessage="Please enter your Email"></asp:RequiredFieldValidator> 
<br/>
<br/>

Feedback:
<asp:TextBox id="txt4" TextMode="multiline" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt4" ErrorMessage="No feedback provided"></asp:RequiredFieldValidator>
<br/>
<br/>

<asp:Button OnClick="submit" Text="Submit" runat="server" />
<p><asp:Label id="Label1" runat="server" /></p>

</form>
    <footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_6/W06E01.aspx" target="_blank">ASPX Code</a><h3>References:</h3><a href="http://net4.ccs.neu.edu/home/rasala/experiments/basic/CopyUserInput1.aspx" target="_blank">Prof's ASPX Experiment</a> <br />
    <a href="http://www.w3schools.com/aspnet/aspnet_viewstate.asp" target="_blank"> W3School's ASPX Web Forms </a> <br />
    </footer>
</body>
</html>