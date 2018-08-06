using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
   public class Files
    {

        private int file_no;

        public int file_no1
        {
            get { return file_no; }
            set { file_no = value; }
        }

       private string court_name;

        public string court_name1
        {
            get { return court_name; }
            set { court_name = value; }
        }
        
        private int plaintiff_id;

        public int plaintiff_id1
        {
            get { return plaintiff_id; }
            set { plaintiff_id = value; }
        }
        private int defendant_id;

        public int defendant_id1
        {
            get { return defendant_id; }
            set { defendant_id = value; }
        }

        private int lawyer_id;

        public int lawyer_id1
        {
            get { return lawyer_id; }
            set { lawyer_id = value; }
        }


        private DateTime dateOfTrial;

        public DateTime dateOfTrial1
        {
            get { return dateOfTrial; }
            set { dateOfTrial = value; }
        }


    }
}
