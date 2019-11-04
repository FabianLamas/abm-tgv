using Microsoft.EntityFrameworkCore;
using Sistema.Entidades.DataEntidades;
using System;
using System.Collections.Generic;
using System.Text;

namespace Sistema.Datos.Maping
{
    public class CursosMap : IEntityTypeConfiguration<Curso>
    {
        public void Configure(Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<Curso> builder)
        {
            builder.ToTable("Curso", "flamas").HasKey(c => c.id);
            builder.Property(c => c.nombre).HasMaxLength(100);
            builder.Property(c => c.logo).HasMaxLength(100);
        }
    }
}
