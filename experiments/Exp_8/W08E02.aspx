<%@ Page Language="C#" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
    
<!DOCTYPE html>

<script runat="server">
    static String connstring = ConfigurationManager.ConnectionStrings["sidrCS"].ConnectionString;
    protected void on_click(object sender, EventArgs e)
    {

        string name = nametag.Text;
        int id =  int.Parse(idtag.Text);

        SqlConnection connection = new SqlConnection(connstring);

       try
            {
                using (SqlConnection connection2 = new SqlConnection(connstring))
            {
   
                string queryString = "INSERT INTO sidr.test VALUES('" + name + "','" + id + "')";

                SqlCommand command2 = new SqlCommand(queryString, connection2);
                connection2.Open();
                int rows = command2.ExecuteNonQuery();
                connection2.Close();
	  GridView.DataBind();
            }

        }
        catch (Exception ex)
        {
            string text = "SQL Error: " + ex.Message;
        }
        }
</script>

<html>
<title>W08E02</title>
<head> <h1>Inserting elements into a Database</h1></head>

<body>
<p>
Insert elements into the Database. Enter a name and id for inserting a new element into a database I've created named test under the username sidr in the MSSQL ccs development server<br/>
<br />
<b> Function required to run this code: </b><br/>

    static String connstring = ConfigurationManager.ConnectionStrings["sidrCS"].ConnectionString;<br />
    protected void on_click(object sender, EventArgs e)<br />
    {<br />

        string name = nametag.Text;<br />
        int id =  int.Parse(idtag.Text);<br />

        SqlConnection connection = new SqlConnection(connstring);<br />

       try<br />
            {<br />
                using (SqlConnection connection2 = new SqlConnection(connstring))<br />
            {<br />
   
                string queryString = "INSERT INTO sidr.test VALUES('" + name + "','" + id + "')";<br />

                SqlCommand command2 = new SqlCommand(queryString, connection2);<br />
                connection2.Open();<br />
                int rows = command2.ExecuteNonQuery();<br />
                connection2.Close();<br />
	  GridView.DataBind();<br />
            }<br />

        }<br />
        catch (Exception ex)<br />
        {<br />
            string text =ex.ToString();<br />
        }<br />
        }<br />

</p>
<hr />

<div>
<form id="form1" runat="server">
            
                <table>

                    <tr>

	       <td>
                            <asp:Label ID="Namelabel" runat="server" Text="NameLabel">Name:</asp:Label>
                    </td>
	         
                    <td>
                     <asp:TextBox ID="nametag" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametag" ErrorMessage="Please enter the Name"></asp:RequiredFieldValidator>                            
                    </td>

                    </tr>
		
	      <br/>
                    <tr>
         	          <td>
                            <asp:Label ID="Idlabel" runat="server" Text="IdLabel">Id:</asp:Label>
                        </td>

                      <td>
                        <asp:TextBox ID="idtag" runat="server"></asp:TextBox>
	          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="idtag" ErrorMessage="Please enter the Id"></asp:RequiredFieldValidator>
                      </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="submit" OnClick="on_click" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>

            <asp:Label ID="output" runat="server" Text=" "></asp:Label>
                <hr />
                <asp:GridView
                    ID="GridView" AutoGenerateColumns="False" DataSourceID="SqlSource1" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sidrCS %>"
                    SelectCommand="SELECT * FROM sidr.test"></asp:SqlDataSource>

        </form>

</div>
              
<footer>
    <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_8/W08E02.aspx" target="_blank">ASPX Code</a><h3>References:</h3>
    <a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm" target="_blank"> Connection Strings </a> <br />
    <a href="https://www.youtube.com/watch?v=u6X2TmOtaNY" target="_blank"> Video </a> <br />
</footer>
</body>
</html>