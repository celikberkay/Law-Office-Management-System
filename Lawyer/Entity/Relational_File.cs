using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
  public  class Relational_File
    {
        private int r_id;

        public int R_id
        {
            get { return r_id; }
            set { r_id = value; }
        }

        private int file_no;

        public int File_no
        {
            get { return file_no; }
            set { file_no = value; }
        }

        private string court_name;

        public string Court_name
        {
            get { return court_name; }
            set { court_name = value; }
        }

    }
}
