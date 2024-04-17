using Microsoft.AspNetCore.Mvc;

namespace CosmesticWebsiteDemo.Controllers
{
    public class AboutController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
