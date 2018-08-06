using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using Facade;

namespace Business
{
    public class BAdmin
    {

        public static Admin LoginAdmin(string username, int password)
        {
            return FAdmin.getAdmin(username, password);
            
        }

        public static void UpdateAdmin(string username, int password)
        {
            FAdmin.UpdateAdmin(username, password);
        }

    }
}
