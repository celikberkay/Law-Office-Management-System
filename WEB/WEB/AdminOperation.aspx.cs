using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class AdminOperation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AvukatIslemler.Visible = false;
            PersonelIslemler.Visible = false;
            DosyaIslemler.Visible = false;
            IslemlerEkle.Visible = false;
            IslemlerSil.Visible = false;
            IslemlerAra.Visible = false;
            IslemlerGuncelle.Visible = false;
            IslemlerListele.Visible = false;

            AvukatListele.Visible = false;

            personelEkle.Visible = false;
            personelSil.Visible = false;
            personelAra.Visible = false;
            personelGüncelle.Visible = false;
            Div1.Visible = false;
            Div2.Visible = false;
            Div3.Visible = false;
            Div4.Visible = false;
            DosyaIslemler.Visible = false;

        }

        protected void BtnAvukat_Click(object sender, EventArgs e)
        {
            AvukatIslemler.Visible = true;
        }

        protected void BtnPersonel_Click(object sender, EventArgs e)
        {
            PersonelIslemler.Visible = true;
        }

        protected void BtnDosya_Click(object sender, EventArgs e)
        {
            DosyaIslemler.Visible = true;
        }

        protected void BtnAEkle_Click(object sender, EventArgs e)
        {
            IslemlerEkle.Visible = true;

        }

        protected void BtnAKaydet_Click(object sender, EventArgs e)
        {

            int baro_no = Convert.ToInt16(TextBox1.Text);
            string name = TextBox2.Text;
            string surname = TextBox3.Text;
            string address = TextBox4.Text;
            int phone = Convert.ToInt16(TextBox5.Text);
            int password= Convert.ToInt16(TextBox6.Text);
            Business.BLawyer.InsertLawyer(baro_no, name, surname, address, phone, password);

            IslemlerEkle.Visible = false;

        }

        protected void BtnASil_Click(object sender, EventArgs e)
        {
            IslemlerSil.Visible = true;

        }

        protected void BtnASilK_Click(object sender, EventArgs e)
        {
            int baro_no = Convert.ToInt32(TextBox7.Text);
            Business.BLawyer.DeleteLawyer(baro_no);
            IslemlerSil.Visible = false;
        }

        protected void BtnAAra_Click(object sender, EventArgs e)
        {
            string name = TextBoxBaroAra.Text;
            DataTable dt = new DataTable();

            Business.BLawyer.getLawyerByName(name,dt);
            GridViewAAra.DataSource = dt;
            GridViewAAra.DataBind();
            IslemlerAra.Visible = true;
            TextBoxBaroAra.Text = null;
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            IslemlerAra.Visible = true;
        }

        protected void BtnAGuncelle_Click(object sender, EventArgs e)
        {
            int baro_no = Convert.ToInt32(TextBoxGuncelle.Text);
            string name = TextBox9.Text;
            string surname = TextBox10.Text;
            string address = TextBox11.Text;
            int phone = Convert.ToInt32(TextBox12.Text);
            int password = Convert.ToInt32(TextBox13.Text);
            Business.BLawyer.UpdateLawyer(baro_no,name,surname,address,phone,password);
            IslemlerGuncelle.Visible = false;

           
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            IslemlerGuncelle.Visible = true;
        }


        

        protected void Button9_Click(object sender, EventArgs e)
        {
            Div1.Visible = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Div2.Visible = true;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Div3.Visible = true;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Div4.Visible = true;
        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            personelSil.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            personelAra.Visible = true;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            personelGüncelle.Visible = true;
        }


        protected void personelSilbtn_Click(object sender, EventArgs e)
        {
            int tc_no = Convert.ToInt32(TextBox32.Text);
            Business.BEmployee.DeleteEmployee(tc_no);
            personelSil.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            personelEkle.Visible = true;
        }

        protected void personelEklebtn_Click(object sender, EventArgs e)
        {
            int tc_no = Convert.ToInt32(TextBox34.Text);
            string name = TextBox28.Text;
            string surname = TextBox29.Text;
            string type = TextBox30.Text;
            string address = TextBox33.Text;
            int phone = Convert.ToInt32(TextBox31.Text);
            Business.BEmployee.InsertEmployee(tc_no, name, surname, type, address, phone);
            personelEkle.Visible = false;
        }

        protected void personelArabtn_Click(object sender, EventArgs e)
        {
            int tc_no = Convert.ToInt32(TextBox35.Text);
            DataTable dt = new DataTable();
            Business.BEmployee.getEmployee(tc_no, dt );
            GridView3.DataSource = dt;
            GridView3.DataBind();

            personelAra.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int tc_no = Convert.ToInt32(TextBox36.Text);
            string name = TextBox37.Text;
            string surname = TextBox38.Text;
            string type = TextBox39.Text;
            string address = TextBox40.Text;
            int phone = Convert.ToInt32(TextBox41.Text);
            Business.BEmployee.UpdateEmployee(tc_no, name, surname, type, address, phone);
            personelEkle.Visible = false;
        }

        protected void ButtonDAra_Click(object sender, EventArgs e)
        {
            int file_no = Convert.ToInt32(TextBox20.Text);
            DataTable dt = new DataTable();

            Business.BFiles.getFile(file_no, dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Div3.Visible = true;
            TextBox20.Text = null;
        }

        protected void BtnDSilK_Click(object sender, EventArgs e)
        {
            int file_no = Convert.ToInt16(TextBox19.Text);
            Business.BFiles.DeleteFile(file_no);
            Div2.Visible = false;
            TextBox19.Text = null;
        }

        protected void ButtonDGuncelle_Click(object sender, EventArgs e)
        {
            int file_no = Convert.ToInt32(TextBox21.Text);
            string court_name = TextBox22.Text;
            int plaintiff_id = Convert.ToInt32(TextBox23.Text);
            int defendant_id = Convert.ToInt32(TextBox24.Text);
            int lawyer_id = Convert.ToInt32(TextBox25.Text);
            DateTime dateOfTrial = Convert.ToDateTime(TextBox26.Text);
            Business.BFiles.UpdateFile(file_no, court_name, plaintiff_id, defendant_id, lawyer_id, dateOfTrial);
            Div4.Visible = false;
        }

        protected void BtnAListele_Click(object sender, EventArgs e)
        {
            AvukatListele.Visible = true;
            DataList2.DataSource = Business.BLawyer.getLawyers();
            DataList2.DataBind();
            
        }
    

     

    }
}