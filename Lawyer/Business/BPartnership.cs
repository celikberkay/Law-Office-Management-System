using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using Facade;

namespace Business
{
    public class BPartnership
    {
        public static List<Partnership> getsPartnership()
        {
            return Facade.FPartnership.getsPartnership();
        }
        public static void InsertPartnership(int tax_no, string name, string officer_name, string officer_surname, int officer_phone)
        {
            FPartnership.InsertPartnership(tax_no, name, officer_name, officer_surname, officer_phone);
        }
        public static void UpdatePartnership(int tax_no, string name, string officer_name, string officer_surname, int officer_phone)
        {
            FPartnership.UpdatePartnership(tax_no, name, officer_name, officer_surname, officer_phone);
        }
        public static void DeletePartnership(int tax_no)
        {
            FPartnership.DeletePartnership(tax_no);
        }

        public static void getPartnership(int tax_no, DataTable dt)
        {
            FPartnership.getPartnership(tax_no, dt);

        }

    }
}
