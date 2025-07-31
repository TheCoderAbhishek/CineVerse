using CineVerse.Models;
using Microsoft.EntityFrameworkCore;

namespace CineVerse.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : DbContext(options)
    {
        public DbSet<Movie> Movies { get; set; }
    }
}
