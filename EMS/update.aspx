<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="EMS.update" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="update.css" rel="stylesheet" />

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
                 <div class="form">
     <div class="logo">
         </div>
              <h1>UPDATE EMPLOYEE</h1>

 <div class ="batch1">
                         <div class="label">

            <asp:Label ID="Label3" runat="server" Text="Username" ForeColor="White"></asp:Label>
                         </div>
                         <div class="text">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="lab"></asp:TextBox>
                         </div>
     </div>
                     <div class ="batch2">

                         <div class="label">

            <asp:Label ID="Label7" runat="server" Text="First Name"></asp:Label>
                         </div>
                         <div class="text">

            <asp:TextBox ID="TextBox3" runat="server" CssClass="lab"></asp:TextBox>
                         </div>
                     </div>

                     <div class ="batch3">
                         <div class="label">

            <asp:Label ID="Label6" runat="server" Text="Last Name"></asp:Label>
                         </div>
                         <div class="text">

            <asp:TextBox ID="TextBox2" runat="server" CssClass="lab"></asp:TextBox>
                         </div>

                     </div>

                     <div class ="batch4">
                         <div class="label">

            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                         </div>
                         <div class="text">

            <asp:TextBox ID="TextBox4" runat="server" CssClass="lab"></asp:TextBox>
                         </div>

                     </div>

                     <div class ="batch5">
                         <div class="label">

            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                         </div>
                         <div class="text">

            <asp:TextBox ID="TextBox5" runat="server" CssClass="lab"></asp:TextBox>
                         </div>

                     </div>

           </div>
        <div class="btn">
            <asp:Button ID="Button1" runat="server" Text="UPDATE" Height="38px" Width="84" OnClick="Button1_Click" CssClass="but" BorderWidth="0px"/>
        </div>
        </form>
        </div>

            </div>
</body>
</html>
