using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.Security;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Synergince
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tlcString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string field1 = (string)(Session["field1"]);
            txtStudnumber.Text = field1;
            GetInformation(field1);
        }

        private void GetInformation(string username)
        {
            try
            {
                connection.con.Open();
                string sql = "select * from Student where StudentNumber=" + username;
                

                SqlCommand cmd = new SqlCommand(sql, connection.con);
                while (connection.reader.Read())
                {
                    txtEmail.Text = connection.reader["Email"].ToString();
                    txtName.Text = connection.reader["Name"].ToString();
                    txtPassword.Text = connection.reader["Password"].ToString();
                    txtPhonenum.Text = connection.reader["PhoneNumber"].ToString();
                    txtSurname.Text = connection.reader["Surname"].ToString();
                    lblDisDegree.Text = connection.reader["Degree"].ToString();
                    lblDisFaculty.Text = connection.reader["Faculty"].ToString();
                    lblDisYear.Text = connection.reader["Level"].ToString();
                }
                connection.reader.Close();
            }

            catch
            {
                string wrongCredentials = "Oooops!! Well, this embarassing. We cant seem to get your user profile. Sorry";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongCredentials + "');", true);
            }

            finally
            {
                if (connection.con.State == ConnectionState.Open)
                    connection.con.Close();
            }
        }
        protected void btneditProfile_Click(object sender, EventArgs e)
        {
            btnSave.Visible = true;
            txtEmail.Enabled = true;
            txtName.Enabled = true;
            txtPassword.Enabled = true;
            txtPhonenum.Enabled = true;
            txtSurname.Enabled = true;
            drpDegree.Enabled = true;
            drpFaculty.Enabled = true;
            drpYearLevel.Enabled = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                
                string update = "update Student set StudentNumber=@snumber,Password=@password,Name=@name,Surname=@surname,Faculty=@faculty,Degree=@degree,Level=@level,PhoneNumber=@pnumber,Email=@email";
                connection.con.Open();
                using (SqlCommand command = new SqlCommand(update, connection.con))
                {
                    command.Parameters.AddWithValue("@password", txtPassword.Text);
                    command.Parameters.AddWithValue("@name", txtName.Text);
                    command.Parameters.AddWithValue("@surname", txtSurname.Text);
                    command.Parameters.AddWithValue("@faculty", lblDisFaculty.Text);
                    command.Parameters.AddWithValue("@degree", lblDisDegree.Text);
                    command.Parameters.AddWithValue("@level", lblDisYear.Text);
                    command.Parameters.AddWithValue("@pnumber", txtPhonenum.Text);
                    command.Parameters.AddWithValue("@email", txtEmail.Text);
                    command.ExecuteNonQuery();

                }
            }

            catch
            {
                string wrongCredential = "Oooops!! Well, this embarassing. We cant seem to update your profile. Sorry";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + wrongCredential + "');", true);
            }

            finally
            {
                if (connection.con.State == ConnectionState.Open)
                    connection.con.Close();
            }
        }

        protected void drpFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDisFaculty.Text = drpFaculty.SelectedValue;
        }

        protected void drpDegree_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDisDegree.Text = drpDegree.SelectedValue;
        }

        protected void drpYearLevel_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDisYear.Text = drpYearLevel.SelectedValue;
        }
    }
}