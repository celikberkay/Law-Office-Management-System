using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        newuser nu = new newuser();

        nu.baro_no = Convert.ToInt32(txtbno.Text);
        nu.name = txtname.Text;
        nu.surname = txtsurname.Text;
        nu.address = txtaddress.Text;
        nu.phone = txtphone.Text;
        nu.addLawyer();
        txtname.Text = "";
        txtsurname.Text = "";
        txtaddress.Text = "";
        txtphone.Text = "";
        txtbno.Text = "";
        Labeladd.Visible = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        deleteuser du = new deleteuser();
        du.baro_no = Convert.ToInt32(txtdelete.Text);
        du.deleteLawyerWithBaroNo();
        Labeldelete.Visible = true;
        txtdelete.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Update.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("Search.aspx");
    }
}