using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sistema.Web.Modelos
{
    public class CarrerasViewModel
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public int cargaHorasReloj { get; set; }
        public int cargaHorasCatedra { get; set; }
        public int anios { get; set; }
        public string descripcion { get; set; }

    }
}
