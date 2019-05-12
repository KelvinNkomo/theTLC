using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Synergince
{
    public partial class testingaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            //mail.To.Add(studNum + "@ufh.ac.za");
            //mail.To.Add(siemail);
            mail.To.Add("njarana@gmail.com");
            mail.From = new MailAddress("nkomokelvin@gmail.com");
            mail.Subject = "Consultation Booking Details";

            string body = "Good Day" +

                          "Please look at the details below for a new consultation booking" +

                          "Student:"  +
                          "SI:" +  
                          "Course:" +
                          "Date:" +
                          "Time:" +
                          "Description:";

            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("ufhtlc@gmail.com", "teachingandlearning");
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
    }
}