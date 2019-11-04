using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sistema.Web.Modelos
{
    public class ModulosViewModel
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string categoria { get; set; }
        public string semestre { get; set; }
        public int idCarrera { get; set; }
        public string logo { get; set; }
    }
}
