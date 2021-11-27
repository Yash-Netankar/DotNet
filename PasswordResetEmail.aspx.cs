using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace ERPAssignmentModule
{
    public partial class PasswordResetEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMail_Click(object sender, EventArgs e)
        {
            //string email = "ruchita.dubey.col@dpu.edu.in";
            string em = email.Text.Trim();
            string senderEmail = "yash.netankar.col@dpu.edu.in";
            string mailBody = "Hello your request for password reset has been approved,<br>Below is the link to reset the password<br/>" +
                "https://localhost:44339/PasswordReset.aspx?email="+em;

            MailMessage message = new MailMessage(senderEmail, em);
            message.Subject = "Password Reset";
            message.Body = mailBody;
            //message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(senderEmail, "yadh12345678909");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                forgetPasslbl.ForeColor = System.Drawing.Color.Green;
                forgetPasslbl.Text = "Password reset link has been sent to you mail";
            }

            catch (Exception ex)
            {
                forgetPasslbl.ForeColor = System.Drawing.Color.Red;
                forgetPasslbl.Text = "Cannot update password because " + ex.Message;
            }
        }
    }
 }

//send email as query string in link in mail to validate it again