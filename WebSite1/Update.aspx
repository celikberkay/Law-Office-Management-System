<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Güncellemek istediğiniz baro no&#39;yu giriniz<br />
        <br />
        <br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        BARO NO<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        Yeni Bilgileri Giriniz<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        YENİ BARO NO<br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        YENİ İSİM</div>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            YENİ SOYİSİM</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            YENİ ADRES</p>
        <p>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            YENİ TELEFON</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Güncelle" Width="189px" />
            <asp:Label ID="Label1" runat="server" Text="Güncelleme Yapıldı" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
