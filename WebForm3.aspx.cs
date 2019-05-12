using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;


namespace Synergince
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        //Create connection string
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tlcString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCourse_Click(object sender, EventArgs e)
        {
            string code = txtCourseCode.Text;
            string name = txtCourseName.Text;
            string error = "Username already exists";
            string unsuccess = "Error occured. Please enter details correctly";
            string success = "Course was added";

            try
            {
                //verify if entered coursecode does not match an existing one
                SqlCommand command = new SqlCommand("select CourseCode from Course where CourseCode like @CourseCode", con);
                command.Parameters.AddWithValue("@CourseCode", "%" + code + "%");
                SqlDataReader dr = command.ExecuteReader();

                if (dr.HasRows)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + error + "');", true);
                    txtCourseCode.Text = " ";
                    txtCourseName.Text = " ";
                }


                else
                {
                    string srtQuery = "Insert into Course(CourseCode,CourseName)" + "Values(@CourseCode,@CourseName)";
                    using (SqlCommand cmd = new SqlCommand(srtQuery, con))
                    {
                        cmd.Parameters.Add("@CourseCode", SqlDbType.VarChar, 50).Value = code;
                        cmd.Parameters.Add("@CourseName", SqlDbType.VarChar, 50).Value = name;

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + success + "');", true);
                Response.Redirect("~/Default.aspx");
            }

            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + unsuccess + "');", true);
            }

        }
    }
}