using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Create_items
{
    public class DBManager
    {
        public static string OraConnString()
        {

            return String.Format("Server=.; Database=firstTestProject;User ID=sa;Password=123;Pooling=False;Trusted_Connection=False;");

        }
    }
}