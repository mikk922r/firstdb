using System;
using System.Collections.Generic;
using Blazor.DBService.Models;
using Microsoft.EntityFrameworkCore;

namespace Blazor.DBService;

public partial class ApplicationDbContext : DbContext
{
    public ApplicationDbContext()
    {
    }

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<brand> brands { get; set; }

    public virtual DbSet<category> categories { get; set; }


    public virtual DbSet<product> products { get; set; }

    public virtual DbSet<user> users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=ep-proud-star-a2o6vwiz-pooler.eu-central-1.aws.neon.tech;Database=bilbasen;Username=bilbasen_owner;Password=npg_umQK8n1gtjIV;SSL Mode=Require");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<brand>(entity =>
        {
            entity.HasKey(e => e.id).HasName("brands_pkey");
        });

        modelBuilder.Entity<category>(entity =>
        {
            entity.HasKey(e => e.id).HasName("categories_pkey");
        });

      
        modelBuilder.Entity<product>(entity =>
        {
            entity.HasKey(e => e.id).HasName("products_pkey");

            entity.HasOne(d => d.brand).WithMany(p => p.products)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("products_brand_id_fkey");

            entity.HasOne(d => d.category).WithMany(p => p.products)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("products_category_id_fkey");

            entity.HasOne(d => d.user).WithMany(p => p.products).HasConstraintName("products_user_id_fkey");
        });

        modelBuilder.Entity<user>(entity =>
        {
            entity.HasKey(e => e.id).HasName("users_pkey");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
