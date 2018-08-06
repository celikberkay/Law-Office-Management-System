using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
  public  class Admin
    {
        private string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        private int password;

        public int Password
        {
            get { return password; }
            set { password = value; }
        }

    }
}
