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
    public class BFiles
    {
        public static List<Files> getFiles()
        {
            return Facade.FFiles.getFiles();
        }
        public static void InsertFile(int file_no, string court_name, int p_id, int d_id, int l_id, DateTime dOT)
        {
            FFiles.InsertFile(file_no, court_name, p_id, d_id, l_id, dOT);
        }
        public static void UpdateFile(int file_no, string court_name, int p_id, int d_id, int l_id, DateTime dOT)
        {
            FFiles.UpdateFile(file_no, court_name, p_id, d_id, l_id, dOT);
        }
        public static void DeleteFile(int file_no)
        {
            FFiles.DeleteFile(file_no);
        }

        public static void getFile(int file_no, DataTable dt)
        {
            FFiles.getFile(file_no, dt);
        }
        public static void getFileByLawyerName(string name, DataTable dt)
        {
           FFiles.getFileByLawyerName(name, dt);
        }

        public static void getFileByLawyer(int baro_no, DataTable dt)
        {
            FFiles.getFileByLawyer(baro_no, dt);
        }

        
        public static void getDateOfTrialByLawyerName(string name, DataTable dt)
        {
            FFiles.getDateOfTrialByLawyerName(name, dt);
        }

        public static void getFileByCustomerTc(int tc_no, DataTable dt)
        {
            FFiles.getFileByCustomerTc(tc_no, dt);
        }

    }
}
