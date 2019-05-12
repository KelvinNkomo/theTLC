using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Synergince
{
    public static class MessageBox
    {
         public static void Show(this Page Page, String Message)
      {
           Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language = 'javascript'>alert('" + Message + "');</script>");
      }


         internal static void Show(string p)
         {
             throw new NotImplementedException();
         }
    }
}