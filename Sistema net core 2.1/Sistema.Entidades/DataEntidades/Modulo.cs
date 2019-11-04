using System.ComponentModel.DataAnnotations;

namespace Sistema.Entidades.DataEntidades
{
    public class Modulo
    {
        [Required]
        public int id { get; set; }
        [Required]
        [MaxLength(100)]
        public string nombre { get; set; }
        [MaxLength(50)]
        public string categoria { get; set; }
        [MaxLength(50)]
        public string semestre { get; set; }
        public int idCarrera { get; set; }
        [MaxLength(500)]
        public string logo { get; set; }
    }
}
