using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Sistema.Datos;
using Sistema.Entidades.DataEntidades;
using Sistema.Web.Modelos;

namespace Sistema.Web.Controllers
{
    [Route("api/[controller]")]//asd
    [ApiController]
    public class CarrerasController : ControllerBase
    {
        private readonly DbContextSistema _context;

        public CarrerasController(DbContextSistema context)
        {
            _context = context;
        }

        // GET: api/Carreras/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<CarrerasViewModel>> Listar()
        {
            //return await _context.Carreras.ToListAsync();

            var carreras = await _context.Carreras.ToListAsync();
            return carreras.Select(c =>
            {
                return new CarrerasViewModel
                {
                    id = c.id,
                    nombre = c.nombre,
                    cargaHorasReloj = c.cargaHorasReloj,
                    cargaHorasCatedra = c.cargaHorasCatedra,
                    anios = c.anios,
                    descripcion = c.descripcion
                };
            });
        }

        // GET: api/Carreras/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute]int id)
        {
            var carrera = await _context.Carreras.FindAsync(id);

            if (carrera == null)
            {
                return NotFound();
            }

            return Ok(new CarrerasViewModel
            {
                id = carrera.id,
                nombre = carrera.nombre,
                cargaHorasReloj = carrera.cargaHorasReloj,
                cargaHorasCatedra = carrera.cargaHorasCatedra,
                anios = carrera.anios,
                descripcion = carrera.descripcion
            });
        }

        // PUT: api/Carreras/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] CarrerasViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            if (model.id <= 0)
            {
                Console.WriteLine(model.id);
                return BadRequest();
            }

            var carreras = await _context.Carreras.FirstOrDefaultAsync(c => c.id == model.id);

            if (carreras == null)
            {
                return NotFound();
            }

            carreras.nombre = model.nombre;
            carreras.cargaHorasReloj = model.cargaHorasReloj;
            carreras.cargaHorasCatedra = model.cargaHorasCatedra;
            carreras.anios = model.anios;
            carreras.descripcion = model.descripcion;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }

        // POST: api/Carreras/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] CarrerasViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Carrera carrera = new Carrera
            {
                nombre = model.nombre,
                cargaHorasReloj = model.cargaHorasReloj,
                cargaHorasCatedra = model.cargaHorasCatedra,
                anios = model.anios,
                descripcion = model.descripcion
            };

            _context.Carreras.Add(carrera);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }

            return Ok();
        }

        // DELETE: api/Carreras/Eliminar/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var carrera = await _context.Carreras.FindAsync(id);
            if (carrera == null)
            {
                return NotFound();
            }

            _context.Carreras.Remove(carrera);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                return BadRequest();
                throw;
            }

            return Ok(carrera);
        }

        private bool CarreraExists(int id)
        {
            return _context.Carreras.Any(e => e.id == id);
        }
    }
}