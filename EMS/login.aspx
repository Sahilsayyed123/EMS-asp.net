<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EMS.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <div class="main">
      
    <div class="container">

    <form id="form1" runat="server">
        <div class="form">
            <div class="logo">
                <img src="images/Logo.png" alt="Alternate Text" /></div>
            <h1>LOG IN</h1>
            <div class="batch1">

            <div class="label">
            <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>
            </div>
            <div class="text">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="lab"></asp:TextBox>
            </div>
            </div>
            <div class="batch2">

            <div class="label">
            <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label>
            </div>
            <div class="text">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="lab"></asp:TextBox>
            </div>
            </div>
            <div class="con">
            <asp:Label ID="Label3" runat="server" Text="" CssClass="invalid"></asp:Label>
            </div>

            <div class="btn">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Height="38px" BorderWidth="0px" CssClass="but" Width="84px" />
            </div>
        </div>
    </form>
        </div>
        </div>


</body>
</html>
