﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using CosmesticWebsiteDemo.DataAccess;
using CosmesticWebsiteDemo.Extension;
using CosmesticWebsiteDemo.Models;
using CosmesticWebsiteDemo.Repositories;
using Newtonsoft.Json;
using CosmesticWebsiteDemo.Services;


namespace CosmesticWebsiteDemo.Controllers
{
    [Authorize]
    public class ShoppingCartController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IProductRepository _productRepository;
        private readonly IVnPayService _vnPayService;
        //public ShoppingCartController(IProductRepository productRepository)
        //{
        //    _productRepository = productRepository;

        //}
        public ShoppingCartController(ApplicationDbContext context, UserManager<ApplicationUser> userManager, 
            IProductRepository productRepository, IVnPayService vnPayService)
        {
            _context = context;
            _userManager = userManager;
            _productRepository = productRepository;
            _vnPayService = vnPayService;
           
        }
        public IActionResult Checkout()
        {
            return View(new Order());
        }
        [HttpPost]
        public async Task<IActionResult> Checkout(Order order, string payment = "COD")
        {
            var user = await _userManager.GetUserAsync(User);
            var cart =
       HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart");
            if (payment == "Thanh toán VnPay")
            {
                var vnPayModel = new VnPaymentRequestModel
                {
                    Amount = (double)cart.Items.Sum(p => p.Price * p.Quantity),
                    CreatedDate = DateTime.Now,
                    Description = "Đơn hàng thành công",
                    FullName = "Khách hàng",
                    OrderId = new Random().Next(100, 1000)
                };
                if (cart == null || !cart.Items.Any())
                {
                    // Xử lý giỏ hàng trống...
                    return RedirectToAction("Index");
                }  
                order.UserId = user.Id;
                order.OrderDate = DateTime.UtcNow;
                order.TotalPrice = cart.Items.Sum(i => i.Price * i.Quantity);
                order.OrderDetails = cart.Items.Select(i => new OrderDetail
                {
                    ProductId = i.ProductId,
                    Quantity = i.Quantity,
                    Price = i.Price
                }).ToList();
                _context.Orders.Add(order);
                await _context.SaveChangesAsync();
                HttpContext.Session.Remove("Cart");
                return Redirect(_vnPayService.CreatePaymentUrl(HttpContext, vnPayModel));
            }
            if (cart == null || !cart.Items.Any())
            {
                // Xử lý giỏ hàng trống...
                return RedirectToAction("Index");
            }
            order.UserId = user.Id;
            order.OrderDate = DateTime.UtcNow;
            order.TotalPrice = cart.Items.Sum(i => i.Price * i.Quantity);
            order.OrderDetails = cart.Items.Select(i => new OrderDetail
            {
                ProductId = i.ProductId,
                Quantity = i.Quantity,
                Price = i.Price
            }).ToList();
            _context.Orders.Add(order);
            await _context.SaveChangesAsync();
            HttpContext.Session.Remove("Cart");
            return View("OrderCompleted",order.Id); // Trang xác nhận hoàn thành đơn hàng
        }
        public IActionResult PaymentSuccess()
        {
            return View("OrderCompleted");
        }
        public async Task<IActionResult> AddToCart(int productId, int quantity)
        {
            // Giả sử bạn có phương thức lấy thông tin sản phẩm từ productId
            var product = await GetProductFromDatabase(productId);
            var cartItem = new CartItem
            {
                ProductId = productId,
                Name = product.Name,
                Price = product.Price,
                Quantity = quantity
            };
            var cart =
           HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart") ?? new
           ShoppingCart();
            cart.AddItem(cartItem);
            HttpContext.Session.SetObjectAsJson("Cart", cart);

            // Đặt nội dung thông báo vào TempData
            TempData["SuccessMessage"] = "Sản phẩm đã được thêm vào giỏ hàng thành công!";
            // Đặt thời gian hiển thị của thông báo (ví dụ: 5 giây)
            TempData["DisplayTime"] = 2000; // Thời gian được tính bằng milliseconds
            return RedirectToAction("Index", "Product");

        }
        public IActionResult Index()
        {
            var cart = HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart") ?? new ShoppingCart();
            var carts = GetCartItems();
            ViewBag.TongTien = carts.Sum(p => p.Price * p.Quantity);
            ViewBag.TongSoLuong = carts.Sum(p => p.Quantity);
            return View(cart);
        }
        // Các actions khác...
        private async Task<Product> GetProductFromDatabase(int productId)
        {
            // Truy vấn cơ sở dữ liệu để lấy thông tin sản phẩm
            var product = await _productRepository.GetByIdAsync(productId);
            return product;
        }
        public IActionResult RemoveFromCart(int productId)
        {
            var cart =
           HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart");
            if (cart is not null)
            {
                cart.RemoveItem(productId);

                // Lưu lại giỏ hàng vào Session sau khi đã xóa mục
                HttpContext.Session.SetObjectAsJson("Cart", cart);
            }
            return RedirectToAction("Index");
        }
        List<CartItem>? GetCartItems()
        {
            string jsoncart = HttpContext.Session.GetString("cart");
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
            }
            return new List<CartItem>();
        }
        void SaveCartSession(List<CartItem> ls)
        {
            string jsoncart = JsonConvert.SerializeObject(ls);
            HttpContext.Session.SetString("cart", jsoncart);

        }
        public async Task<IActionResult> UpdateToCart(int productId, int quantity)
        {
            // Giả sử bạn có phương thức lấy thông tin sản phẩm từ productId

            var cart =
           HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart") ?? new
           ShoppingCart();
            cart.UpdateQuantity(productId, quantity);
            HttpContext.Session.SetObjectAsJson("Cart", cart);
            return RedirectToAction("Index");
        }

        [Authorize]
        public IActionResult PaymentFail()
        {
            return View();
        }

        [Authorize]
        public IActionResult PaymentCallBack(Order order)
        {
            var response = _vnPayService.PaymentExecute(Request.Query);

            if (response == null || response.VnPayResponseCode != "00")
            {
                TempData["Message"] = $"Lỗi thanh toán VN Pay: {response.VnPayResponseCode}";
                return RedirectToAction("PaymentFail");
            }


            // Lưu đơn hàng vô database
            TempData["Message"] = $"Thanh toán VNPay thành công";
            return View("OrderCompleted");
        }
    }
}