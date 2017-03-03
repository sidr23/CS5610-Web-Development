<%@ Page Language="C#" %>
    
<script  runat="server">

protected void Onclick(object sender, EventArgs e)
{
StringBuilder str = new StringBuilder();
   
if (FileUpload1.HasFile)
{
  try
      {
         str.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);
         FileUpload1.SaveAs(Server.MapPath("~/experiments/Exp_8/" + FileUpload1.FileName));
         Label1.Text = "File upload successful";
      }catch (Exception ex)
      {
          Label1.Text = "Upload failed due to: " + ex.Message;         
      }
   }
   else
   {
      Label1.Text = str.ToString();
   }
}
</script>

<!DOCTYPE html>
<html>
<title>W08E04</title>
<head> <h1> Saving files to the server</h1></head>

<body>
<p>
    In the experiment try to upload a file to the server. <br />
    I have tried to implement the upload feature in the asp page where user can store files <br />
    Exploring more services that provide a free server to test file uploads. <br>
    Thinking of including something on the lines of uploading file to the server and parsing it to return parts of it in my project. This can be saved into the database as a BLOB for parsing.<br/> 
</p>
<p>
    Code Snippet:<br />
protected void Onclick(object sender, EventArgs e)<br>
{
StringBuilder str = new StringBuilder();<br>
   
if (FileUpload1.HasFile)<br>
{
  try
      {<br>
         str.AppendFormat(" Uploading file: {0}", FileUpload1.FileName);<br>
         FileUpload1.SaveAs(Server.MapPath("~/experiments/Exp_8/" + FileUpload1.FileName));<br>
         Label1.Text = "File upload succesful"; <br>
         <br>
      }catch (Exception ex) <br>
      {<br>
        Label1.Text = "Upload failed due to: " + ex.Message;  <br>
      }
   }<br>
   else<br>
   {
      Label1.Text = str.ToString();<br>
   }
}
<br />

</p>

<form id="form1" runat="server">
   
<div>
<h3> File Upload:</h3>
<br />
<asp:FileUpload ID="FileUpload1" runat="server" />
<br /><br />
<asp:Button ID="Save" runat="server" onclick="Onclick"  Text="Save" />
<br /><br />

<asp:Label ID="Label1" runat="server" Text="Status: " />

</div>
      
</form>
<footer>
         <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_8/W08E04.aspx" target="_blank">ASPX Code</a><h3>References:</h3>
    <a href="http://support.microsoft.com/kb/323246" target="_blank"> Microsoft Support </a> <br />
    <a href="http://www.tutorialspoint.com/asp.net/index.htm" target="_blank"> Tutorials Point </a> <br />
</footer>
</body>
</html>