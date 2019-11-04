using Microsoft.EntityFrameworkCore;
using Sistema.Datos.Maping;
using Sistema.Entidades.DataEntidades;
using System;
using System.Collections.Generic;
using System.Text;

namespace Sistema.Datos
{
    public class DbContextSistema : DbContext
    {
        public DbSet<Carrera> Carreras { get; set; }
        public DbSet<Modulo> Modulos { get; set; }
        public DbSet<Curso> Cursos { get; set; }
        public DbContextSistema(DbContextOptions<DbContextSistema> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new CarrerasMap());
            modelBuilder.ApplyConfiguration(new ModulosMap());
            modelBuilder.ApplyConfiguration(new CursosMap());
        }
    }
}
