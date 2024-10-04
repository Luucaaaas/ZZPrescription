using ZZPrescription.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace ZZPrescription.Data;

public class ApplicationDbContext : IdentityDbContext<Medecin>
{

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {
    }

    public DbSet<Patient> Patients => Set<Patient>();
    public DbSet<Allergie> Allergies => Set<Allergie>();
    public DbSet<Ordonnance> Ordonnances => Set<Ordonnance>();
    public DbSet<Medicament> Medicaments => Set<Medicament>();
    public DbSet<Antecedent> Antecedents => Set<Antecedent>();


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
         modelBuilder.Entity<Patient>()
          .HasMany(p => p.Allergies)
          .WithMany(a => a.Patients);

        modelBuilder.Entity<Patient>()
            .HasMany(p => p.Antecedents)
            .WithMany(a => a.Patients);

        modelBuilder.Entity<Allergie>()
            .HasMany(a => a.Medicaments)
            .WithMany(m => m.Allergies);

        modelBuilder.Entity<Antecedent>()
            .HasMany(a => a.Medicaments)
            .WithMany(m => m.Antecedents);

        modelBuilder.Entity<Ordonnance>()
            .HasOne(o => o.Patient)
            .WithOne(p => p.Ordonnance)
            .HasForeignKey<Ordonnance>(o => o.PatientId);

        base.OnModelCreating(modelBuilder);
    }
}
