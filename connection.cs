using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace Synergince
{
    public class connection
    {
        public static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tlcString"].ConnectionString);
        public static SqlCommand cmd = new SqlCommand();
        public static SqlDataReader reader;
    }
}