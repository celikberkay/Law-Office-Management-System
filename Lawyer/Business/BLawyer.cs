using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Entity;
using Facade;

namespace Business
{
    public class BLawyer
    {
       
        public static List<Lawyer> getLawyers()
        {
            return Facade.FLawyer.getLawyers();
        }
        public static void InsertLawyer(int baro_no, string name, string surname, string address, int phone, int password)
        {
           FLawyer.InsertLawyer(baro_no, name, surname, address, phone, password);
        }
        public static void UpdateLawyer(int baro_no, string name, string surname, string address, int phone, int password)
        {
            FLawyer.UpdateLawyer(baro_no, name, surname, address, phone, password);
        }
        public static void DeleteLawyer(int baro_no)
        {
           FLawyer.DeleteLawyer(baro_no);
        }


        public static Lawyer getLawyer(int baro_no)
        {
            return FLawyer.getLawyer(baro_no);
        }

        public static void getLawyerByName(string name, DataTable dt)
        {
            FLawyer.getLawyerByName(name, dt);
        }

        public static void getLawyerBySurname(string surname, DataTable dt)
        {
            FLawyer.getLawyerBySurname(surname, dt);
        }





         public static Lawyer LoginLawyer(int baro_no, int password)
        {
            Lawyer lawyer = null;
            List<Lawyer> list = Facade.FLawyer.getLawyers();
            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].baro_no1 == baro_no &&list[i].password1 == (password) )
                {
                    lawyer = list[i];
                    return lawyer;
                }
            }
            return lawyer;
        }
    }

    }
