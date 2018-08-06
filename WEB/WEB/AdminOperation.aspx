<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="AdminOperation.aspx.cs" Inherits="WEB.AdminOperation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .listAdmin {
            float: left;
            width: 20%;
        }

        .AvukatIslemler {
            float: left;
            width: 12%;
        }

        .PersonelIslemler {
            float: left;
            width: 12%;
        }

        .DosyaIslemler {
            float: left;
            width: 12%;
        }

        .IslemlerEkle {
            float: right;
            width: 67%;
            margin-top: 0px;
        }

        .IslemlerSil {
            float: right;
            width: 67%;
            margin-top: 0px;
        }

        .IslemlerAra {
            float: right;
            width: 67%;
            margin-top: 0px;
        }

        .IslemlerGuncelle {
            float: right;
            width: 67%;
            margin-top: 0px;
        }

        .IslemlerListele {
            float: right;
            width: 67%;
            margin-top: 0px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
        .auto-style3 {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        
            <div class="listAdmin">
                <div>
                    <asp:Button ID="BtnAvukat" runat="server" Text="Avukat İşlemleri" Width="90%"
                        OnClick="BtnAvukat_Click" />
                    <asp:Button ID="BtnPersonel" runat="server" Text="Personel İşlemleri" Width="90%"
                        OnClick="BtnPersonel_Click" />
                    <asp:Button ID="BtnDosya" runat="server" Text="Dosya İşlemleri" Width="90%"
                        OnClick="BtnDosya_Click" />

                </div>

            </div>

            <div class="AvukatIslemler" id="AvukatIslemler" runat="server">
                <div>
                    <asp:Button ID="BtnAEkle" runat="server" Text="Ekle" Width="90%"
                        OnClick="BtnAEkle_Click" />
                    <asp:Button ID="BtnASil" runat="server" Text="Sil" Width="90%"
                        OnClick="BtnASil_Click" />
                    <asp:Button ID="btnAAra" runat="server" Text="Ara" Width="90%"
                        OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text="Güncelle" Width="90%"
                        OnClick="Button6_Click" />
                    <asp:Button ID="BtnAListele" runat="server" Text="Listele" Width="90%"
                        OnClick="BtnAListele_Click" />
                </div>
            </div>
            <div class="PersonelIslemler" id="PersonelIslemler" runat="server">
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Ekle" Width="90%" 
                        OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Sil" Width="90%" 
                        OnClick="Button2_Click"  />
                    <asp:Button ID="Button7" runat="server" Text="Ara" Width="90%" 
                        OnClick="Button7_Click"  />
                    <asp:Button ID="Button8" runat="server" Text="Güncelle" Width="90%" 
                        OnClick="Button8_Click"  />
                </div>
            </div>
            <div class="DosyaIslemler" id="DosyaIslemler" runat="server">
                <div>
                    <asp:Button ID="Button9" runat="server" Text="Ekle" Width="90%"
                        OnClick="Button9_Click" />
                    <asp:Button ID="Button10" runat="server" Text="Sil" Width="90%"
                        OnClick="Button10_Click" />
                    <asp:Button ID="Button11" runat="server" Text="Ara" Width="90%"
                        OnClick="Button11_Click" />
                    <asp:Button ID="Button12" runat="server" Text="Güncelle" Width="90%"
                        OnClick="Button12_Click" />

                </div>
            </div>

            <div class="IslemlerEkle" id="IslemlerEkle" runat="server">
                <span>Baro No</span>
                <asp:TextBox ID="TextBox1" TextMode="Number" runat="server"></asp:TextBox>
                <span>&nbsp; İsim&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <span>Soyisim&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <span>&nbsp; Adres</span>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                <span>Telefon&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox5" TextMode="Number" runat="server"></asp:TextBox>
                <span>&nbsp; Şifre&nbsp;&nbsp; </span>
                &nbsp;<asp:TextBox ID="TextBox6" TextMode="Number"  runat="server"></asp:TextBox><br />
                <asp:Button ID="BtnAKaydet" runat="server" Text="KAYDET"
                    OnClick="BtnAKaydet_Click" />
            </div>


            <div class="IslemlerSil" id="IslemlerSil" runat="server">
                <span>Baro Numarası</span>
                <asp:TextBox ID="TextBox7" TextMode="Number"  runat="server"></asp:TextBox>
                <asp:Button ID="BtnASilK" runat="server" Text="SİL"
                    OnClick="BtnASilK_Click" />
            </div>



            <div class="IslemlerAra" id="IslemlerAra" runat="server">
                <span>Avukat İsmi</span>
                <asp:TextBox ID="TextBoxBaroAra" runat="server"></asp:TextBox>
                <asp:Button ID="ButtonAAra" runat="server" Text="ARA"
                    OnClick="BtnAAra_Click" />
                <asp:GridView ID="GridViewAAra" runat="server"></asp:GridView>
                
            </div>

            <div class="IslemlerGuncelle" id="IslemlerGuncelle" runat="server">
                <span>Baro Numarası</span>&nbsp;
                <asp:TextBox ID="TextBoxGuncelle" TextMode="Number" runat="server"></asp:TextBox>
                <asp:Button ID="ButtonAGuncelle" runat="server" Text="Güncelle"
                    OnClick="BtnAGuncelle_Click" />
                <br />

                <span>İsim&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <span>&nbsp; Soyisim</span>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox><br />
                <span>Adres</span>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <span>&nbsp; Telefon&nbsp; </span><asp:TextBox ID="TextBox12" TextMode="Number" runat="server"></asp:TextBox><br />
                <span>Şifre</span>&nbsp;&nbsp;  
                <asp:TextBox ID="TextBox13" TextMode="Number" runat="server"></asp:TextBox>
            </div>

       
       <div class="IslemlerListele" id="AvukatListele" runat="server">

           <asp:DataList ID="DataList2" runat="server" BackColor="White" 
               BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
               GridLines="Horizontal">
               <FooterStyle BackColor="White" ForeColor="#333333" />
               <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
               <HeaderTemplate>
                   <table class="auto-style1">
                       <tr>
                       <td class="auto-style3">Baro No</td>
                           <td class="auto-style3">İsim</td>
                           <td class="auto-style3">Soyisim</td>
                       </tr>
                   </table>
               </HeaderTemplate>
               <ItemStyle BackColor="White" ForeColor="#333333" />
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                       <td class="auto-style3"><%# Eval("baro_no1") %></td>
                        <td class="auto-style3"><%# Eval("name1") %></td>
                        <td class="auto-style3" ><%# Eval("Surname1") %></td>
                       </tr>
                   </table>
               </ItemTemplate>
               <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           </asp:DataList>
       </div>












        <div class="IslemlerAra" id="personelEkle" runat="server">

            <span>TC no</span>&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox34" TextMode="Number" runat="server"></asp:TextBox>
            <span>İsim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox><br />
            <span>Soyisim</span>
            <asp:TextBox ID="TextBox29" TextMode="Number" runat="server"></asp:TextBox>
            <span>Görev&nbsp; </span>
            &nbsp;<asp:TextBox ID="TextBox30" runat="server"></asp:TextBox><br />
            <span>Adres</span>&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            <span>Telefon </span>&nbsp;<asp:TextBox ID="TextBox31" TextMode="Number" runat="server"></asp:TextBox><br />

            <asp:Button ID="personelEklebtn" runat="server" Text="EKLE" 
                OnClick="personelEklebtn_Click" />
        </div>

        <div class="IslemlerAra" id="personelSil" runat="server">
            <span>TC no </span>&nbsp;<asp:TextBox ID="TextBox32" TextMode="Number"  runat="server"></asp:TextBox>
            <asp:Button ID="personelSilbtn" runat="server" Text="SİL" 
                OnClick="personelSilbtn_Click" />
        </div>
        <div class="IslemlerAra" id="personelAra" runat="server">
            <span>TC no </span>&nbsp;<asp:TextBox ID="TextBox35" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button ID="personelArabtn" runat="server" Text="ARA" 
                OnClick="personelArabtn_Click" />
            <asp:GridView ID="GridView3" runat="server">
            </asp:GridView>
            
        </div>
        <div class="IslemlerAra" id="personelGüncelle" runat="server">
            <span>TC no</span>&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox36" TextMode="Number"  runat="server"></asp:TextBox>
            <span>&nbsp;İsim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox><br />
            <span>Soyisim</span>
            <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
            <span>&nbsp;Görev&nbsp; </span>
            &nbsp;<asp:TextBox ID="TextBox39" runat="server"></asp:TextBox><br />
            <span>Adres</span>&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
            <span>&nbsp;Telefon </span>&nbsp;<asp:TextBox ID="TextBox41" TextMode="Number" runat="server"></asp:TextBox><br />

            <asp:Button ID="Button3" runat="server" Text="GÜNCELLE" 
                OnClick="Button3_Click" />
        </div>



        <div class="IslemlerEkle" id="Div1" runat="server">
            <span>Dosya No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox8" TextMode="Number" runat="server"></asp:TextBox>
            <span>&nbsp;Mahkeme İsmi </span><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <span>Davacı TC No</span>
            <asp:TextBox ID="TextBox15" TextMode="Number" runat="server"></asp:TextBox>
            <span>&nbsp;Davalı TC No </span>
            &nbsp;<asp:TextBox ID="TextBox16" TextMode="Number" runat="server"></asp:TextBox><br />
            <span>Baro No</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox17" TextMode="Number" runat="server"></asp:TextBox>
            <span>&nbsp;Duruşma Tarihi</span>
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox><br />
            <asp:Button ID="BtnDKaydet" runat="server" Text="KAYDET" />
        </div>
        <div class="IslemlerSil" id="Div2" runat="server">
            <span>Dosya No</span>
            <asp:TextBox ID="TextBox19" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button ID="BtnDSilK" runat="server" Text="SİL" OnClick="BtnDSilK_Click" />
        </div>



        <div class="IslemlerAra" id="Div3" runat="server">
            <span>Dosya No</span>
            <asp:TextBox ID="TextBox20" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonDAra" runat="server" Text="ARA" 
                OnClick="ButtonDAra_Click" />
            <asp:GridView ID="GridView1" runat="server" BackColor="White"
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            
        </div>

        <div class="IslemlerGuncelle" id="Div4" runat="server">
            <span>Dosya No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            &nbsp;<asp:TextBox ID="TextBox21" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonDGuncelle" runat="server" Text="Güncelle" 
                OnClick="ButtonDGuncelle_Click" />


            <br />


            <span>Mahkeme İsmi</span>
            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox><br />
            <span>Davacı TC No</span>
            <asp:TextBox ID="TextBox23" TextMode="Number" runat="server"></asp:TextBox>
            <span>&nbsp; Davalı TC No&nbsp;&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox24" TextMode="Number" runat="server"></asp:TextBox><br />
            <span>Baro No</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  
            <asp:TextBox ID="TextBox25" TextMode="Number" runat="server"></asp:TextBox>
            <span>&nbsp; Duruşma Tarihi</span>&nbsp;&nbsp;  
            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
        </div>
        <div class="IslemlerListele" id="IslemlerListele" runat="server">
            <span>Kişi TC No</span>
            <asp:TextBox ID="TextBox27" TextMode="Number" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonCustomerTC" runat="server" Text="ARA" />
            <asp:GridView ID="GridView2" runat="server" BackColor="White"
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            
        </div>




        <br />
        <br />
    </form>

</asp:Content>
