<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="TaxInfo.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">

        .auto-style1 {
            width: 140px;
        }
        .auto-style2 {
            margin-left: 52px;
        }
        </style>

</head>
<body style="background-color:lightblue">
    <form id="form1" name="myform" runat="server">
        <p align="center"> <b style="font-size:35px; color:red; margin-top:250px; background-color:skyblue;">If You are Delete the property Details Enter Only ID </b></p>
        <table align="center" border="1"style="margin-top=250px;"> 
            <tr>
                <td> <b>ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </b><td>
                <asp:TextBox ID="id" runat="server" Height="30px" Width="250px" ></asp:TextBox>
            </tr>
                        
        </table>  
        <br />
        <center>  
        <table class="auto-style2">
        <tr>
        <td class="auto-style1">
            <asp:Button ID="back" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="back_Click"></asp:Button>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Delete"  BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="Button1_Click"></asp:Button>
        </td>
    </tr> 
    </table>
        </center>
    </center>
  
        <br />
  <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="317px" Width="540px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="por_name" HeaderText="por_name" SortExpression="por_name" />
                <asp:BoundField DataField="deed" HeaderText="deed" SortExpression="deed" />
                <asp:BoundField DataField="amount_deed" HeaderText="amount_deed" SortExpression="amount_deed" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:informationConnectionString %>" SelectCommand="SELECT * FROM [taxinfo]"></asp:SqlDataSource>
  &nbsp;</center>
    </form>
</body>
</html>
