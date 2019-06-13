<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TaxInfo.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
 
            .auto-style1 {
                width: 805px;
                height: 230px;
            }
 
            </style>
</head>
<body backg>
    
    <form id="form1" runat="server">
         <p align="center"> <b style="font-size:35px; color:black; margin-top:250px; background-color:skyblue;">Login</b></p>
        <table align="center" color="lightyellow" >
           <tr>
               </td>
           </tr>
           
            <tr>
               <td> <b style="font-size:25px;"> Username : </b><td>  <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px" ForeColor="Black" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Double" Font-Bold="True"></asp:TextBox>
                </td> </td>
           </tr>
           
            <tr> 
                <td> <b style="font-size:25px;">Password : </b><td> <asp:TextBox ID="txtpass" runat="server" type="password" Height="30px" Width="200px" ForeColor="Black" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Double" Font-Bold="True"></asp:TextBox>
                </td></td>
           </tr>
            </table>
            <br />
            <center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="Pink" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Size="12pt" Font-Strikeout="False" ForeColor="Blue" Height="45px" Width="80px" />
                
            &nbsp;&nbsp;
                
                <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label> </center>
        </div>
           
    <p>
        <center><img class="auto-style1" src="img/tax.jpg" /></center></p>
       
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:informationConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
           
    </form>
       
    </body>
</html>
