using CosmesticWebsiteDemo.Models;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;

namespace CosmesticWebsiteDemo.Controllers
{
    public class ContactController : Controller
    {
        private readonly IEmailSender _emailSender;

        public ContactController(IEmailSender emailSender)
        {
            _emailSender = emailSender;
        }

        [HttpGet]
        public IActionResult ContactMail()
        {

            return View();
        }
        [HttpPost]
        public async Task<IActionResult> ContactMail(Contact contact)
        {
            var msg = contact.Name + "" + contact.Message;
            await _emailSender.SendEmailAsync(contact.Email, "Contact Mail", msg);
            ViewBag.ConfirmMsg = "Thanks for your Mail";
            return View();
        }
    }
}