<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="taxinformation.aspx.cs" Inherits="TaxInfo.taxinformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       .gv{
           margin-top:250px;
       }
        .auto-style1 {
            position: absolute;
            top: 757px;
            left: 567px;
            z-index: 1;
            color:red;
            font-size:20px;
        }
        .auto-style2 {
            width: 374px;
            height: 213px;
            position: absolute;
            top: 121px;
            left: 458px;
            z-index: 1;
        }
        .auto-style3 {
            width: 404px;
            height: 138px;
            position: absolute;
            top: 407px;
            left: 454px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 40px;
            left: 783px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 44px;
            left: 473px;
            width: 85px;
        }
        .auto-style8 {
            position: absolute;
            top: 88px;
            left: 601px;
            z-index: 1;
            height: 23px;
        }
    </style>
</head>
<body style="background-color:lightblue">
    <form id="form1" runat="server">
        </div>
        <asp:Button ID="Button3" runat="server" BackColor="Silver" BorderColor="Gray" BorderStyle="None" CssClass="auto-style4"  Text="Search" Font-Bold="true" Font-Size="Medium" OnClick="Button3_Click1" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style8" ForeColor="Red"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Font-Bold="true" Font-Size="large"></asp:Label>
    <table class="auto-style2">
         <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Width="140px" Font-Bold="True" Height="30px">Property</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Address" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Amount of deed" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Percentage" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Total Tax" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="140px" Font-Bold="True" Height="30px" style="margin-left: 0px" OnClick="Button_Click"></asp:Button>
        </td>
    </tr>
   
    </table>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" style="z-index: 1; position: absolute; top: 39px; left: 604px; width: 146px">
        </asp:DropDownList>

        <div> <center>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CssClass="auto-style3" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:informationConnectionString %>" SelectCommand="SELECT * FROM [taxinfo] ORDER BY [percentage] DESC"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:informationConnectionString %>" SelectCommand="SELECT [Id] FROM [taxinfo] ORDER BY [Id]"></asp:SqlDataSource>
        </div></center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <center>&nbsp;&nbsp;&nbsp; 
            </center>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
