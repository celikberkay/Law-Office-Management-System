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
    public class BEmployee
    {
        public static List<Employee> getEmployee()
        {
            return Facade.FEmployee.getEmployees();
        }
        public static void InsertEmployee(int tc_no, string name, string surname, string type, string address, int phone)
        {
            FEmployee.InsertEmployee(tc_no, name, surname, type, address, phone);
        }
        public static void UpdateEmployee(int tc_no, string name, string surname, string type, string address, int phone)
        {
            FEmployee.UpdateEmployee(tc_no, name, surname, type, address, phone);
        }
        public static void DeleteEmployee(int tc_no)
        {
            FEmployee.DeleteEmployee(tc_no);
        }

        public static void getEmployee(int tc_no, DataTable dt)
        {
            FEmployee.getEmployee(tc_no, dt);
        }

    }
}
