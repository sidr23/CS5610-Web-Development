<%@ Page Language="C#" %>
<%@ Import Namespace="edu.neu.ccis.rasala" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>    
<!DOCTYPE html>

<script runat="server">
    static String connstring = ConfigurationManager.ConnectionStrings["sidrCS"].ConnectionString;
    protected void on_click(object sender, EventArgs e)
    {
        string name =  nametag.Text;

        SqlConnection connection = new SqlConnection(connstring);

       try
            {
                using (SqlConnection connection3 = new SqlConnection(connstring))
            {
   
                string queryString = "DELETE FROM sidr.test WHERE name=@name";
                SqlCommand command3 = new SqlCommand(queryString, connection3);
                SqlParameter nameparam = new SqlParameter("@name", SqlDbType.VarChar);
                command3.Parameters.Add(nameparam);
                nameparam.Value = name;    
	  connection3.Open();
                int rows = command3.ExecuteNonQuery();
                connection3.Close();
                GridView.DataBind();
            }

        }
        catch (Exception ex)
        {
            string text =ex.ToString();
        }
        }
</script>

<html>
<title>W08E03</title>
<head> <h1>Deleting elements from Database</h1></head>

<body>
<p>
Delete elements from the Database. Enter a name and that record would be deleted from the database. The database test under the username sidr in the MSSQL ccs development server has been used <br/>
<br />
<b> Function required to run this code: </b><br/>

    static String connstring = ConfigurationManager.ConnectionStrings["sidrCS"].ConnectionString;<br />
    protected void on_click(object sender, EventArgs e)<br/>
    {<br/>
        string name =  nametag.Text;<br/>

        SqlConnection connection = new SqlConnection(connstring);<br/>

       try<br/>
            {<br/>
                using (SqlConnection connection3 = new SqlConnection(connstring))<br/>
            {<br/>
   
                string queryString = "DELETE FROM sidr.test WHERE name=@name";<br/>
                SqlCommand command3 = new SqlCommand(queryString, connection3);<br/>
                SqlParameter nameparam = new SqlParameter("@name", SqlDbType.VarChar);<br/>
                command3.Parameters.Add(nameparam);<br/>
                nameparam.Value = name;<br/>    
	  connection3.Open();<br/>
                int rows = command3.ExecuteNonQuery();<br/>
                connection3.Close();<br/>
                GridView.DataBind();<br/>
            }<br/>

        }<br/>
        catch (Exception ex)<br/>
        {<br/>
            string text = "SQL Error: " + ex.Message;<br/>
        }<br/>
        }<br/>

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
	        <br/>
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
                <asp:GridView ID="GridView" AutoGenerateColumns="False" DataSourceID="SqlSource1" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource  ID="SqlSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sidrCS %>"
                        SelectCommand="SELECT * FROM sidr.test"></asp:SqlDataSource>

        </form>

</div>
              
<footer>
    <p><h3>Source Code:</h3><a href="../../fileview/Default.aspx?~/experiments/Exp_8/W08E03.aspx" target="_blank">ASPX Code</a><h3>References:</h3>
    <a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm" target="_blank"> Connection Strings </a> <br />
    <a href="https://www.youtube.com/watch?v=u6X2TmOtaNY" target="_blank"> Video </a> <br />
</footer>
</body>
</html>