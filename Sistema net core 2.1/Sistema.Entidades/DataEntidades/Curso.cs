using System.ComponentModel.DataAnnotations;


namespace Sistema.Entidades.DataEntidades
{
    public class Curso
    {
        [Required]
        public int id { get; set; }
        [Required]
        [MaxLength(100)]
        public string nombre { get; set; }
        public string descripcion { get; set; }
        [MaxLength(100)]
        public string logo { get; set; }
        public int horas { get; set; }
        [Required]
        public int idModulo { get; set; }
    }
}
