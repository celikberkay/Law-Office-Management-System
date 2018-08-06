using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;


public class newuser
{
    public int baro_no {get; set; }
    public string name { get; set; }
    public string surname { get; set; }
    public string address { get; set; }
    public string phone { get; set; }
    DataConnection dc = new DataConnection();
    public void addLawyer()
    {
        dc.addNewLawyer(this);
    }
}
public class deleteuser
{
    public int baro_no {get; set; }
    DataConnection dcd = new DataConnection();
    public void deleteLawyerWithBaroNo()
    {
        dcd.deleteLawyer(this);
    }
}
public class updateuser
{
    public int updating_baro_no { get; set; }
    public int baro_no { get; set; }
    public string name { get; set; }
    public string surname { get; set; }
    public string address { get; set; }
    public string phone { get; set; }
    DataConnection dcu = new DataConnection();
    public void updateLawyer()
    {
        dcu.updateLawyer(this);
    }
}
public class searchuser
{
    public int searching_baro_no { get; set; }
    public int baro_no { get; set; }
    public string name { get; set; }
    public string surname { get; set; }
    public string address { get; set; }
    public string phone { get; set; }
    DataConnection dcs = new DataConnection();
    public void searchLawyer()
    {
        dcs.searchLawyer(this);
    }
}