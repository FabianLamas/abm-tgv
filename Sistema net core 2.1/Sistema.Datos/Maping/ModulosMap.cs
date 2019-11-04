using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Sistema.Entidades.DataEntidades;
using System;
using System.Collections.Generic;
using System.Text;

namespace Sistema.Datos.Maping
{
    public class ModulosMap : IEntityTypeConfiguration<Modulo>
    {
        public void Configure(Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<Modulo> builder)
        {
            builder.ToTable("Modulo", "flamas").HasKey(c => c.id);
            builder.Property(c => c.nombre).HasMaxLength(50);
            builder.Property(c => c.categoria).HasMaxLength(50);
            builder.Property(c => c.semestre).HasMaxLength(50);
            builder.Property(c => c.logo).HasMaxLength(500);
        }
    }
}
