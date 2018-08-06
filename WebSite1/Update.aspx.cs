using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        updateuser uu = new updateuser();

        uu.updating_baro_no = Convert.ToInt32(TextBox6.Text);
        uu.baro_no = Convert.ToInt32(TextBox1.Text);
        uu.name = TextBox2.Text;
        uu.surname = TextBox3.Text;
        uu.address = TextBox4.Text;
        uu.phone = TextBox5.Text;
        uu.updateLawyer();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        Label1.Visible = true;
    }
}