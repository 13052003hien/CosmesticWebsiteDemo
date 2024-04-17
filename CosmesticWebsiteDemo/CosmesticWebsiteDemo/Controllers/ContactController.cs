using CosmesticWebsiteDemo.DataAccess;
using CosmesticWebsiteDemo.Models;
using CosmesticWebsiteDemo.Repositories;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;

namespace CosmesticWebsiteDemo.Controllers
{
    public class ContactController : Controller
    {
        private readonly IEmailSender _emailSender;
        private readonly ApplicationDbContext _context;
        private readonly IContactRepository _contactRepository;

        public ContactController(IEmailSender emailSender, ApplicationDbContext context, IContactRepository contactRepository)
        {
            _emailSender = emailSender;
            _context = context;
            _contactRepository = contactRepository;
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
            ViewBag.ConfirmMsg = "Cảm ơn bạn đã phản hồi";
            await _contactRepository.AddContactAsync(contact);
            return View();
        }
    }
} 