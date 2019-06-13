<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="TaxInfo.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 140px;
        }
        .auto-style2 {
            margin-left: 520px;
        }
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            margin-left: 80px;
        }
        .auto-style5 {
            margin-left: 560px;
        }
    </style>
</head>
<body style="background-color:lightblue">
    <form id="form1" runat="server">
       <p align="center"> <b style="font-size:35px; color:red; margin-top:250px; background-color:skyblue;"> Update Your Properties Detail Properly</b></p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style2">
        <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
          </td><td>  <asp:TextBox ID="txtid" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Property Name" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td class="auto-style1">    <asp:TextBox ID="pname" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="Address" Width="140px" Font-Bold="True" Height="30px" style="margin-top: 1px"></asp:Label>
            </td><td><asp:TextBox ID="address" runat="server" Width="220px" BorderColor="#999999" Height="28px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Amount of deed" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="amount" runat="server"  Width="220px" BorderColor="#999999" Height="28px"  OnTextChanged="amount_TextChanged" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="Percentage" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="percentage" runat="server"  Width="220px" BorderColor="#999999" Height="28px" OnTextChanged="percentage_TextChanged" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
          <tr>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Tax" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="tex" runat="server"  Width="220px" BorderColor="#999999" Height="28px" ReadOnly="true" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style1">
            <asp:Button ID="back" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="back_Click"></asp:Button>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Update"  BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="Button1_Click"></asp:Button>
        </td>
    </tr> 
        <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="lbl1" runat="server" ForeColor="Red" Font-Bold="True" Width="313px" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" Height="220px" Width="348px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="por_name" HeaderText="por_name" SortExpression="por_name" />
                    <asp:BoundField DataField="deed" HeaderText="deed" SortExpression="deed" />
                    <asp:BoundField DataField="amount_deed" HeaderText="amount_deed" SortExpression="amount_deed" />
                    <asp:BoundField DataField="percentage" HeaderText="percentage" SortExpression="percentage" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:informationConnectionString %>" SelectCommand="SELECT * FROM [taxinfo] ORDER BY [percentage] DESC"></asp:SqlDataSource>
    </center>
            </form>
</body>
</html>
