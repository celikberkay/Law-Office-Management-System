using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;


public class DataConnection
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
	public DataConnection()
	{
        con= new SqlConnection (ConfigurationManager.ConnectionStrings["constr"].ToString());
	}

    public void addNewLawyer(newuser nu)
    {
        cmd = new SqlCommand("INSERT INTO employee(baro_no,name,surname,address,phone) values (@bno,@name,@sn,@adr,@pho)",con);
        cmd.Parameters.AddWithValue("@bno",nu.baro_no);
        cmd.Parameters.AddWithValue("@name", nu.name);
        cmd.Parameters.AddWithValue("@sn", nu.surname);
        cmd.Parameters.AddWithValue("@adr", nu.address);
        cmd.Parameters.AddWithValue("@pho", nu.phone);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void deleteLawyer(deleteuser du)
    {
        
        try
        {
            cmd = new SqlCommand("DELETE FROM Employee WHERE baro_no=@deleting_baro_no", con);
            cmd.Parameters.AddWithValue("@deleting_baro_no", du.baro_no);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch(SqlException se)
        {
        }
            
    }
    public void updateLawyer(updateuser uu)
    {
        cmd = new SqlCommand("UPDATE Employee  SET baro_no = @new_baro_no, name = @new_name, surname=@new_surname, address=@new_address, phone=@new_phone WHERE baro_no=@updating_baro_no;", con);
        cmd.Parameters.AddWithValue("@updating_baro_no", uu.updating_baro_no);
        cmd.Parameters.AddWithValue("@new_baro_no", uu.baro_no);
        cmd.Parameters.AddWithValue("@new_name", uu.name);
        cmd.Parameters.AddWithValue("@new_surname", uu.surname);
        cmd.Parameters.AddWithValue("@new_address", uu.address);
        cmd.Parameters.AddWithValue("@new_phone", uu.phone);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void searchLawyer(searchuser su)
    {
        SqlCommand myCommand = new SqlCommand("SELECT * FROM Employee  WHERE baro_no=@searching_baro_no", con);
        myCommand.Parameters.AddWithValue("@searching_baro_no", su.searching_baro_no);
        con.Open();
        SqlDataReader dr = myCommand.ExecuteReader();      
        if (dr.Read())
        {
            su.name = dr[1].ToString();
            su.surname = dr[2].ToString();
            su.address = dr[3].ToString();
            su.phone = dr[4].ToString();
        }
        con.Close();


        /*
          da = new SqlDataAdapter("SELECT * FROM Employee  WHERE baro_no=@searching_baro_no", con);
        cmd.Parameters.AddWithValue("@searching_baro_no", uu.updating_baro_no);
        ds = new DataSet();
        con.Open();
        da.Fill(ds, "employee");
        

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close(); 
         */
    }


}