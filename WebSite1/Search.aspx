<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Aramak İstediğiniz Avukatın Baro No&#39;sunu Giriniz<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Ara" />
    
    </div>
        <p>
            <span class="auto-style1">Name</span>&nbsp; <span class="auto-style1">Surname</span>&nbsp; <span class="auto-style1">Address</span>&nbsp;&nbsp; <span class="auto-style1">Phone</span></p>
        <p>
            <asp:Label ID="Label1" runat="server" BackColor="#3399FF" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
