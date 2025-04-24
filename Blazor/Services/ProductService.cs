using Blazor.DBService.Models;
using Microsoft.EntityFrameworkCore;
using Blazor.DBService;
namespace Blazor.Services;

public class ProductService
{
    private readonly IDbContextFactory<ApplicationDbContext> _factory;

    public ProductService(IDbContextFactory<ApplicationDbContext> factory)
    {
        _factory = factory;
    }

    public async Task<List<product>> GetAllAsync()
    {
        await using var ctx = _factory.CreateDbContext();
        return await ctx.products
                        .Include(p => p.brand)
                        .Include(p => p.category)
                        .ToListAsync();
    }
}
