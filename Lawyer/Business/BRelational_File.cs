using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using Facade;

namespace Business
{
    public class BRelational_File
    {
        public static List<Relational_File> getRelational_File(int file_no)
        {
            return Facade.FRelational_File.getRelational_File(file_no);
        }
        public static void InsertRelational_File(int r_id, int file_no, string court_name)
        {
            FRelational_File.InsertRelational_File(r_id, file_no, court_name);
        }
        public static void UpdateRelational_File(int r_id, int file_no, string court_name)
        {
            FRelational_File.UpdateRelational_File(r_id, file_no, court_name);
        }
        public static void DeleteRelational_File(int file_no)
        {
            FRelational_File.DeleteRelational_File(file_no);
        }


    }
}
