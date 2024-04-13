using System.ComponentModel.DataAnnotations;

namespace CosmesticWebsiteDemo.Models
{
    public class PaymentMethod
    {
        public int MethodId { get; set; }
        [Required, StringLength(50)]
        public string NameMethod { get; set; }
        public List<OrderDetail>? OrderDetails { get; set; }
    }
}
