using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using CosmesticWebsiteDemo.Models;
using CosmesticWebsiteDemo.Repositories;

namespace WebXeHoi.Controllers
{

    public class HomeController : Controller
    {
        private readonly IProductRepository _productRepository;
       

        public HomeController(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        public async Task<IActionResult> Index(Product product)
        {
            // Ki?m tra xem TempData c� ch?a th�ng b�o th�nh c�ng kh�ng
            if (TempData.ContainsKey("SuccessMessage"))
            {
                ViewBag.SuccessMessage = TempData["SuccessMessage"];
                ViewBag.DisplayTime = TempData["DisplayTime"];
            }
            var products = await _productRepository.GetAllAsync();
            return View(products);
        }
    }
}
