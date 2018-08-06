using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Facade;
using Entity;
using System.Data;

namespace Business
{
  public  class BClient
    {
        public static List<Client> getClients()
        {
            return Facade.FClient.getClients();
        }
        public static void InsertClient(int tc_no, string name, string surname, string address, int phone, int status)
        {
            FClient.InsertClient(tc_no, name, surname, address, phone, status);
        }
        public static void UpdateClient(int tc_no, string name, string surname, string address, int phone, int status)
        {
            FClient.UpdateClient(tc_no, name, surname, address, phone, status);
        }
        public static void DeleteClient(int tc_no)
        {
            FClient.DeleteClient(tc_no);
        }

        public static void getClient(int tc_no, DataTable dt)
        {
            FClient.getClient(tc_no, dt);

        }

    }
}
