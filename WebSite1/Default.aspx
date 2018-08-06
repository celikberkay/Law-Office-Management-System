<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 559px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </center>
    
    </div>
        <asp:TextBox ID="txtbno" runat="server" TextMode="Number">
</asp:TextBox>
        
        BARO NO<center>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Güncelleme Ekranı" />
        </center>
        <p>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            İSİM</p>
        <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox>
        SOYİSİM<p> <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            ADRES<p><asp:TextBox ID="txtphone" runat="server"></asp:TextBox>TELEFON</p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Avukat Ekle" />
        <asp:Label ID="Labeladd" runat="server" Text="Avukat Eklendi" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Avukat Arama Ekranı" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="txtdelete" runat="server"></asp:TextBox>
            BARO NO</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Avukat Sil" Width="168px" />
        </p>
        <p>
            <asp:Label ID="Labeldelete" runat="server" Text="Avukat Silindi" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
