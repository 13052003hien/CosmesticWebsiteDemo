using CosmesticWebsiteDemo.DataAccess;
using CosmesticWebsiteDemo.Models;
using Microsoft.EntityFrameworkCore;

namespace CosmesticWebsiteDemo.Repositories
{
    public class EFContactRepository : IContactRepository
    {
        private readonly ApplicationDbContext _context;
        public EFContactRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<IEnumerable<Contact>> GetAllAsync()
        {
            return await _context.Contacts.ToListAsync();
        }   
        public async Task AddContactAsync(Contact contact)
        {
            _context.Contacts.Add(contact);
            await _context.SaveChangesAsync();
        }
    }
}
