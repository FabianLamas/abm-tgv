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
    [Route("api/[controller]")]
    [ApiController]
    public class ModulosController : ControllerBase
    {
        private readonly DbContextSistema _context;

        public ModulosController(DbContextSistema context)
        {
            _context = context;
        }

        // GET: api/Modulos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<ModulosViewModel>> Listar()
        {
            var modulos = await _context.Modulos.ToListAsync();
            return modulos.Select(m =>
            {
                return new ModulosViewModel
                {
                    id = m.id,
                    nombre = m.nombre,
                    categoria = m.categoria,
                    semestre = m.semestre,
                    idCarrera = m.idCarrera,
                    logo = m.logo
                };
            });
        }

        // GET: api/Modulos/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute]int id)
        {
            var modulos = await _context.Modulos.FindAsync(id);

            if (modulos == null)
            {
                return NotFound();
            }

            return Ok(new ModulosViewModel
            {
                id = modulos.id,
                nombre = modulos.nombre,
                categoria = modulos.categoria,
                semestre = modulos.semestre,
                idCarrera = modulos.idCarrera,
                logo = modulos.logo
            });
        }

        // PUT: api/Modulos/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] ModulosViewModel model)
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

            var modulos = await _context.Modulos.FirstOrDefaultAsync(c => c.id == model.id);

            if (modulos == null)
            {
                return NotFound();
            }

            modulos.nombre = model.nombre;
            modulos.categoria = model.categoria;
            modulos.semestre = model.semestre;
            modulos.idCarrera = model.idCarrera;
            modulos.logo = model.logo;

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

        // POST: api/Modulos/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] ModulosViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Modulo modulo = new Modulo
            {
                nombre = model.nombre,
                categoria = model.categoria,
                semestre = model.semestre,
                idCarrera = model.idCarrera,
                logo = model.logo
            };

            _context.Modulos.Add(modulo);

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

        // DELETE: api/Modulos/Eliminar/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var modulo = await _context.Modulos.FindAsync(id);
            if (modulo == null)
            {
                return NotFound();
            }

            _context.Modulos.Remove(modulo);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                return BadRequest();
                throw;
            }

            return Ok(modulo);
        }


        private bool ModuloExists(int id)
        {
            return _context.Modulos.Any(e => e.id == id);
        }
    }
}