using Microsoft.EntityFrameworkCore;
using Sistema.Entidades.DataEntidades;
using System;
using System.Collections.Generic;
using System.Text;

namespace Sistema.Datos.Maping
{
    public class CarrerasMap : IEntityTypeConfiguration<Carrera>
    {
        public void Configure(Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<Carrera> builder)
        {
            builder.ToTable("Carreras", "flamas").HasKey(c => c.id);
            builder.Property(c => c.nombre).HasMaxLength(50);
            builder.Property(c => c.descripcion).HasMaxLength(256);
        }
    }
}
