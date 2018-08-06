using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
   public class Partnership
    {
        private int tax_no;

        public int Tax_no
        {
            get { return tax_no; }
            set { tax_no = value; }
        }

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string officer_name;

        public string Officer_name
        {
            get { return officer_name; }
            set { officer_name = value; }
        }

        private string officer_surname;

        public string Officer_surname
        {
            get { return officer_surname; }
            set { officer_surname = value; }
        }

        private int officer_phone;

        public int Officer_phone
        {
            get { return officer_phone; }
            set { officer_phone = value; }
        }

    }
}
