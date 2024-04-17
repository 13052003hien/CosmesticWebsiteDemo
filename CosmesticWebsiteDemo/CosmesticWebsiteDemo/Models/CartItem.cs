namespace CosmesticWebsiteDemo.Models
{
    public class CartItem
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public string? Image { get; set; }
        public string? Status { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public int NumberOfItems {  get; set; }

    }
}
