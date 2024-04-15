using CosmesticWebsiteDemo.Extension;
using CosmesticWebsiteDemo.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace CosmesticWebsiteDemo.ViewComponents
{
    //(1) Tạo ViewComponent
    public class CartSummaryViewComponent : ViewComponent
    {
        //public CartSummaryViewComponent() { }
        //public IViewComponentResult Invoke()
        //{
        //    List<CartItem> cart = GetCartItems();
        //    CartItem viewModel = new CartItem();
        //    viewModel.NumberOfItems = cart.Count;
        //    return View(viewModel);
        //}
        //List<CartItem> GetCartItems()
        //{
        //    var sessionCart = HttpContext.Session.GetString("cart");
        //    if (sessionCart != null)
        //    {
        //        return JsonConvert.DeserializeObject<List<CartItem>>(sessionCart);
        //    }
        //    return new List<CartItem>();
        //}




        public IViewComponentResult Invoke()
        {
            var cart = HttpContext.Session.GetObjectFromJson<ShoppingCart>("Cart");
            var totalQuantity = cart?.Items.Sum(item => item.Quantity) ?? 0;
            return View(totalQuantity);
        }

    }
}

