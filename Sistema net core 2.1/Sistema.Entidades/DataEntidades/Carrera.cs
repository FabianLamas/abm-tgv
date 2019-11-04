using System.ComponentModel.DataAnnotations;

namespace Sistema.Entidades.DataEntidades
{
    public class Carrera
    {
        [Required]
        public int id { get; set; }
        [Required]
        public string nombre { get; set; }
        public int cargaHorasReloj { get; set; }
        public int cargaHorasCatedra { get; set; }
        public int anios { get; set; }
        [Required]
        public string descripcion { get; set; }
    }
}
