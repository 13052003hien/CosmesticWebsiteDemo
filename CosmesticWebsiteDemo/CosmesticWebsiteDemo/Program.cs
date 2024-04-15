using CosmesticWebsiteDemo.DataAccess;
using CosmesticWebsiteDemo.Models;
using CosmesticWebsiteDemo.Repositories;
using CosmesticWebsiteDemo.Services;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;


var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

//builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = true).AddEntityFrameworkStores<ApplicationDbContext>();

builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options =>
{
    //Cau hinh cac tuy cho cua identity
})
    .AddDefaultUI()
    .AddEntityFrameworkStores<ApplicationDbContext>()
    .AddDefaultTokenProviders();

builder.Services.AddRazorPages();
// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddScoped<UserManager<ApplicationUser>>();
builder.Services.AddScoped<IProductRepository, EFProductRepository>();
builder.Services.AddScoped<ICategoryRepository, EFCategoryRepository>();
builder.Services.AddScoped<IContactRepository, EFContactRepository>();

builder.Services.AddSingleton<IVnPayService, VnPayService>();

builder.Services.AddAuthentication()
    .AddFacebook(options =>
    {
        options.ClientId = "408427395243646";
        options.ClientSecret = "86a134c7f6467e04da942b69cf055bf7";
    })
    .AddGoogle(options =>
     {
         options.ClientId = "242219814251-hqjrpe0h7piql0dsp42gubkdtm07vnej.apps.googleusercontent.com";
         options.ClientSecret = "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";
     }); 

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseSession();
app.UseRouting();



app.UseAuthorization();

app.MapRazorPages();

app.UseEndpoints(endpoints =>
{
    endpoints.MapControllerRoute(
      name: "areas",
      pattern: "{area:exists}/{controller=ProductManager}/{action=Index}/{id?}"
    );
});

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
