<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="EMS.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="home.css" rel="stylesheet" />
</head>

<body>
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
    <div class="header">
        <h1>EMPLOYEE TABLE</h1>
    </div>
    <div class="body">

    <form id="form1" runat="server">
        <div class="table-container">
            <div class="table1">   
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="315px" Width="592px" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
            <div class="table2">
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="315px" Width="592px" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
       </div>
                <div class="btn">
                    <div class="btn-container">

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show More" Height="40px"   Width="100px" CssClass="but" BorderWidth="0px"/>
                    </div>
                    <div class="btn-container">

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Less" Height="40px" Width="100px" CssClass="but" BorderWidth="0px"/>
                    </div>
            
                </div>
    </form>
    </div>


</body>
</html>
