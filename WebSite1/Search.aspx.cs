using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        searchuser su = new searchuser();
        DataConnection dct = new DataConnection();
        su.searching_baro_no = Convert.ToInt32(TextBox1.Text);
        su.baro_no = Convert.ToInt32(TextBox1.Text);
        su.searchLawyer();
        Label1.Text = su.name + "  " + su.surname + "  " + su.address + "  " + su.phone + "  ";
        Label1.Visible = true;
    }
}