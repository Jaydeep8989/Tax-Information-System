<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="property.aspx.cs" Inherits="TaxInfo.property" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

       body {
           background-image:url(tax.jpg);
           background-size:1400px 760px;
           background-repeat:no-repeat;
           background-color:lightblue;
           margin-top:250px;
           }
        .auto-style2 {
            width: 114px;
            height: 139px;
        }
    </style>
    </head>
<body style="margin-top: 0px">
 
    <!--<a href="login.aspx">logout</a>img src="img/logout.jpg" class="auto-style2" /></a>-->
     <form id="form1" runat="server">
         
    <asp:Button ID="Button5" runat="server" Text="Logout" BackColor="Gray" ForeColor="Yellow" Font-Bold="True" Height="50px" Width="150px" OnClick="Button5_Click"/>       
    
        <center>
          
          <p style="color:red; font-size:30px;"> 
             If You are Insert , Update or Delete properties. Also see the current Tax. </p>
           <br />
           <br />
           
           <asp:Button ID="Button1" runat="server" Text="Insert" BackColor="Gray" ForeColor="Yellow" Font-Bold="True" Height="60px" Width="255px" OnClick="Button1_Click1" Font-Size="20pt" /> 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="Gray" ForeColor="Yellow" Font-Bold="True" Height="60px" Width="255px" OnClick="Button3_Click" Font-Size="20pt"/>
           <br />
           <br />
           <asp:Button ID="Button2" runat="server" Text="Update" BackColor="Gray" ForeColor="Yellow" Font-Bold="True" Height="60px" Width="255px" OnClick="Button2_Click" Font-Size="20pt"/>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button4" runat="server" BackColor="Gray" Font-Bold="True" ForeColor="Yellow" Height="60px" Text="Tax-Information" Width="255px" OnClick="Button4_Click" Font-Size="20pt" />
       
       </center>
    </form>
</body>
</html>
