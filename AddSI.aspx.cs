using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.IO;

namespace Synergince
{
    public partial class Add_SI : System.Web.UI.Page
    {
        //create connection string
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["tlcString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddSI_Click(object sender, EventArgs e)
        {
             // declare variables
            string time = rblTime.SelectedValue;
            string days = rblDay.SelectedValue;
            string course = drpCourse.SelectedValue;
            string image = FileUpload1.ToString();
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            string name = txtName.Text;
            string surname = txtSurname.Text;
            int phonenumber = Int32.Parse(txtPhoneNum.Text);
            string email = txtEmail.Text;
            string SI = "SI";
            string message = "Successfully added";
            string error = "Username already exists";


            try
            {
                //open connection
                con.Open();

                //verify if entered username does not match any existing one
                SqlCommand command = new SqlCommand("select Username from SI where Username like @username", con);
                command.Parameters.AddWithValue("@username", "%" + username + "%");
                SqlDataReader dr = command.ExecuteReader();

                if (dr.HasRows)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + error + "');", true);
                    txtUserName.Text = " ";
                    rblTime.SelectedIndex = -1;
                    rblDay.SelectedIndex = -1;
                    txtEmail.Text = " ";
                    txtName.Text = " ";
                    txtPassword.Text = " ";
                    txtPhoneNum.Text = " ";
                    txtSurname.Text = " ";
                    FileUpload1.Dispose();
                }

                else
                {
                    con.Close();
                    //get image filepath
                    string filepath = FileUpload1.PostedFile.FileName;
                    string filename = Path.GetFileName(filepath);
                    string ext = Path.GetExtension(filename);

                    string contentType = String.Empty;

                    //read file extension to make sure its a picture
                    switch (ext)
                    {
                        case ".jpg":
                            contentType = "image/jpg";
                            break;
                        case ".png":
                            contentType = "image/png";
                            break;
                        case ".exif":
                            contentType = "image/exif";
                            break;
                        case ".tiff":
                            contentType = "image/tiff";
                            break;
                        case ".gif":
                            contentType = "image/gif";
                            break;
                        case ".bmp":
                            contentType = "image/bmp";
                            break;
                        case ".heif":
                            contentType = "image/heif";
                            break;
                        case ".bat":
                            contentType = "image/bat";
                            break;
                        default:
                            break;
                    }

                    //checks if the image was uploaded before saving information into the database
                    if (contentType != String.Empty)
                    {
                        Stream fs = FileUpload1.PostedFile.InputStream;
                        BinaryReader br = new BinaryReader(fs);
                        Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        //insert querry with parameters
                        string query = "INSERT into SI(Times,Days,CourseCode,Image,Username,Password,Name,Surname,PhoneNumber,Email)" + "VALUES(@Times,@Days,@CourseCode,@Image,@Username,@Password,@Name,@Surname,@PhoneNumber,@Email)";
                        

                        //create command
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            //add parameters into the database
                            cmd.Parameters.Add("@Times", SqlDbType.VarChar, 50).Value = time;
                            cmd.Parameters.Add("@Days", SqlDbType.VarChar, 50).Value = days;
                            cmd.Parameters.Add("@CourseCode", SqlDbType.VarChar, 50).Value = course;
                            cmd.Parameters.Add("@Image", SqlDbType.VarBinary, 8000).Value = bytes;
                            cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = username;
                            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = password;
                            cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = name;
                            cmd.Parameters.Add("@Surname", SqlDbType.VarChar, 50).Value = surname;
                            cmd.Parameters.Add("@PhoneNumber", SqlDbType.Int).Value = phonenumber;
                            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = email;

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }

                        Roles.AddUserToRole(username, SI);
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                        Response.Write("Error occured");
                }
            }


            catch
            {
                Response.Write("Error. Please try again");
            }

        
        }
    }
}