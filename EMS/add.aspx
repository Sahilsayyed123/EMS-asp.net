<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="EMS.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="add.css" rel="stylesheet" />
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

            <h1>ADD EMPLOYEE</h1>
             <div class="elements">

             <div class ="batch1">
            <div class="label">

            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox1" runat="server" CssClass="lab"></asp:TextBox>
            </div>

             </div>
             <div class ="batch2">
            <div class="label">

            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox2" runat="server" CssClass="lab"></asp:TextBox>
            </div>

             </div>           
                       <div class ="batch3">

            <div class="label">

            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox3" runat="server" CssClass="lab"></asp:TextBox>
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

            <asp:Label ID="Label5" runat="server" TextMode="Password" Text="Password"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox5" runat="server" CssClass="lab"></asp:TextBox>
            </div>

             </div>    
             <div class ="batch6">

            <div class="label">

            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
            </div>
            <div class="text">

            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" CssClass="lab"></asp:TextBox>
            </div>
             </div>       
             <div class ="btn">

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Height="38px" BorderWidth="0px" CssClass="but" Width="84px" />
             </div>    
             </div>
                 
    </div>

             </form>
    </div>
        </div>

</body>
</html>
