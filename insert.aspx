<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="TaxInfo.insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        b {
            font-size:25px;
        }
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            width: 378px;
            height: 298px;
            position: absolute;
            top: 101px;
            left: 610px;
            z-index: 1;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style4 {
            height: 38px;
            width: 140px;
        }
        .auto-style5 {
            width: 140px;
            margin-left: 200px;
        }
    </style>
</head>
<body style="background-color:lightblue"> 
    <form id="form1" runat="server" >
        <p align="center"> <b style="font-size:35px; color:red; margin-top:250px; background-color:lightskyblue;"> Insert Your New Propertie Details Properly</b></p>
      <table class="auto-style2">
        <tr>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="ID" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
          </td><td>  <asp:TextBox ID="txtid" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Property Name" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td class="auto-style1">    <asp:TextBox ID="pname" runat="server" Width="220px" BorderColor="#999999" Height="28px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="Address" Width="140px" Font-Bold="True" Height="30px" style="margin-top: 1px"></asp:Label>
            </td><td><asp:TextBox ID="address" runat="server" Width="220px" BorderColor="#999999" Height="28px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Amount of deed" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="amount" runat="server"  Width="220px" BorderColor="#999999" Height="28px"  OnTextChanged="amount_TextChanged" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Percentage" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="percentage" runat="server"  Width="220px" BorderColor="#999999" Height="28px" OnTextChanged="percentage_TextChanged" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
          <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Tax" Width="140px" Font-Bold="True" Height="30px"></asp:Label>
        </td><td>  <asp:TextBox ID="tex" runat="server"  Width="220px" BorderColor="#999999" Height="28px" ReadOnly="true" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td class="auto-style3">
            <asp:Button ID="signup" runat="server" Text="Back" BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="signup_Click"></asp:Button>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Add"  BackColor="Silver" BorderColor="Gray" BorderStyle="Solid" Width="132px" Font-Bold="True" Height="30px" OnClick="Button1_Click"></asp:Button>
        </td>
    </tr> 
        <tr>
        <td class="auto-style5" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl1" runat="server" ForeColor="Red" Font-Bold="True" Width="313px" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    </table>
    </form>
    &nbsp;&nbsp;
    </body>
</html>