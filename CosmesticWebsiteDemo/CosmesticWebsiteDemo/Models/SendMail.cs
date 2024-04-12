
using Microsoft.AspNetCore.Identity.UI.Services;
using System.Net.Mail;
namespace CosmesticWebsiteDemo.Models
{
    public class SendMail : IEmailSender
    {
        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            using (MailMessage message = new MailMessage())
            {
                message.From = new MailAddress("");
                message.Subject = subject;
                message.Body = email + htmlMessage;
                message.IsBodyHtml = true;
                message.To.Add(new MailAddress(email));
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = "";
                NetworkCred.Password = "";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                await smtp.SendMailAsync(message);
            }
        }
    }
}