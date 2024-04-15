using CosmesticWebsiteDemo.Models;

namespace CosmesticWebsiteDemo.Repositories
{
    public interface IContactRepository
    {
        Task AddContactAsync(Contact contact);
    }
}
