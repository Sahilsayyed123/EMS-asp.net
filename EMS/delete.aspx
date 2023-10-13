<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="EMS.WebForm1" %>

<!DOCTYPE html>
<link href="delete.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
            <div class="navbar">
        <div class="left">
            <div class="logo">
                <img src="images/Logo.png" alt="Alternate Text" class="img-logo"/></div>
            <a href="home.aspx">
            <div class="nav">HOME</div>
            </a>
            <a href="add.aspx">
            <div class="nav">ADD</div>
            </a>
            <a href="update.aspx">
            <div class="nav">UPDATE</div>
            </a>
            <a href="delete.aspx">
            <div class="nav">DELETE</div>
            </a>
           <a href="extra.aspx">
            <div class="nav">ADVANCED</div>
            </a>
        </div>
        <div class="right">
            <div class="log">
                <a href="login.aspx">
                    <img src="images/right-from-bracket-solid (2).svg" alt="Alternate Text" class="logout" />
                </a>
     </div>
        </div>
</div>
    <div class="main">
    <div class="container">
    <form id="form1" runat="server">
        <h1>DELETE EMPLOYEE</h1>
        <div class="batch1">
            <div class="label">

            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="lab"></asp:TextBox>
            </div>
        </div>
        <div class="btn">

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Height="38px"  BorderWidth="0px" Width="84px" Text="DELETE" CssClass="but"/>
        </div>
    </form>
        </div>
 </div>
</body>
</html>
