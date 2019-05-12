using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Synergince
{
    public partial class StudentBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnSI_Click(object sender, EventArgs e)
        {
            grdLWAPBook.Visible = false;
            grdSIBook.Visible = true;
        }

        protected void lbtnLWAP_Click(object sender, EventArgs e)
        {
            grdLWAPBook.Visible = true;
            grdSIBook.Visible = false;
        }
    }
}