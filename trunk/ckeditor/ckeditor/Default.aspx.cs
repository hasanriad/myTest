using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailBee;
using MailBee.SmtpMail;
using MailBee.Security;

namespace ckeditor
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string s = this.txtCkEditor.Text;

            MailBee.Global.LicenseKey = "MN100-ED252539258A258125B778113D87-982A";
            //Connect c = new Connect();
            //c.Login();
            //c.Getdata();
            //c.GetProfileIP();
            SendEmail();
        }

        private void SendEmail()
        {
            Smtp mailer = new Smtp();
            SmtpServer server = new SmtpServer("smtp.gmail.com", "thriad@gmail.com", "kjughkuh");
           // server.SslMode = SslStartupMode.UseStartTls;
            mailer.SmtpServers.Add(server);
            mailer.From.Email = "thriad@gmail.com";
            mailer.To.Add("thriad@gmail.com");
            mailer.Subject = "test";
            mailer.BodyHtmlText = "<p><img alt=\"\" src=\"cid: zsdf\" style=\"height: 500px; width: 550px\" /></p>";//CKEditorControl1.Text;
            string filepath = HttpContext.Current.Request.PhysicalApplicationPath + "Images\\zsdf.jpg";
            // bool s = mailer.Message.Attachments.Add(filepath);
            //mailer.AddAttachment(filepath);
            mailer.Send();
            

        } 
    }
}