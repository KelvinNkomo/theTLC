using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Synergince
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string field1 = (string)(Session["field1"]);
            //lblStudNum.Text = field1;
        }
        public void Availability(string course, string time, string date)
        {
            string message = "Booking already exists";
            string query = "Select Course, Time, Date From Bookings Where [Course=@course] and [Time=@time] and [Date=@date];";
            using (SqlCommand command = new SqlCommand(query, connection.con))
            {
                command.Parameters.Add("@course", SqlDbType.NVarChar, 50).Value = course;
                command.Parameters.Add("@time", SqlDbType.NVarChar, 50).Value = time;
                command.Parameters.Add("@date", SqlDbType.DateTime, 50).Value = date;
               // connection.con.Open();
                command.ExecuteNonQuery();
                using (SqlDataReader dr = command.ExecuteReader())
                {
                    if (dr.Read())
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);

                    dr.Close();
                }
                //connection.con.Close();
            }
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            string course = drpCourse.SelectedValue;
            string dtime = calDate.SelectedDate.ToString("d");
            string times = rblTime.SelectedValue;
            string description = txtDescription.Text;
            string studNum = (lblStudNum.Text);
            string siname = lblSIName.Text;
            string siemail= lblEmail.Text;

            try
            {
                try
                {
                    connection.con.Open();
                    string sql = "select * from SI where CourseCode=" + course;

                    SqlCommand cmd = new SqlCommand(sql, connection.con);
                    SqlDataReader read = cmd.ExecuteReader();

                    while (read.Read())
                    {
                        siname = read["Name"].ToString();
                        siemail = read["Email"].ToString();
                    }
                    read.Close();
                   // connection.con.Close();
                }

                finally
                {
                    try
                    {
                        //Availability(course, times, dtime);


                        string query = "INSERT into Bookings(Course,Date,Time,Description,SIName,StudentNumber)" + "VALUES(@Cours,@Date,@Time,@StudentNumber,@Description,@SIName)";

                        //create command
                        using (SqlCommand cmd = new SqlCommand(query, connection.con))
                        {
                            //add parameters into the database
                            cmd.Parameters.Add("@Cours", SqlDbType.NVarChar, 50).Value = course;
                            cmd.Parameters.Add("@Date", SqlDbType.Date).Value = dtime;
                            cmd.Parameters.Add("@Time", SqlDbType.NVarChar, 50).Value = times;
                            cmd.Parameters.Add("@StudentNumber", SqlDbType.Int).Value = studNum;
                            cmd.Parameters.Add("@Description", SqlDbType.NVarChar, 50).Value = description;
                            cmd.Parameters.Add("@SIName", SqlDbType.NVarChar, 50).Value = siname;

                            //connection.con.Open();
                            cmd.ExecuteNonQuery();
                            //connection.con.Close();
                        }
                    }

                    catch
                    {
                        lblError.Text = "Error occured somewhere";
                    }
                }
            }

            catch 
            {
                lblError.Text = "Error occured somewhere";
            }

            finally
            {
                if (connection.con.State == ConnectionState.Open)
                    connection.con.Close();

                //MailMessage mail = new MailMessage();
                ////mail.To.Add(studNum + "@ufh.ac.za");
                ////mail.To.Add(siemail);
                //mail.To.Add("nkomokelvin@gmail.com");
                //mail.From = new MailAddress("nkomokelvin@gmail.com");
                //mail.Subject = "Consultation Booking Details";

                //string body = "Good Day" +

                //              "Please look at the details below for a new consultation booking" +

                //              "Student:" + studNum +
                //              "SI:" + siname +
                //              "Course:" + course +
                //              "Date:" + dtime +
                //              "Time:" + times +
                //              "Description:" + description;

                //mail.Body = body;
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                //smtp.Credentials = new System.Net.NetworkCredential("nkomokelvin@gmail.com", "busisizwe");
                //smtp.EnableSsl = true;
                //smtp.Send(mail);

             }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

    }
}