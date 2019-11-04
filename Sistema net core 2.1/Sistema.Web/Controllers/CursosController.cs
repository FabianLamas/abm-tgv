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
    public class CursosController : ControllerBase
    {
        private readonly DbContextSistema _context;

        public CursosController(DbContextSistema context)
        {
            _context = context;
        }

        // GET: api/Cursos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<CursosViewModel>> Listar()
        {
            var cursos = await _context.Cursos.ToListAsync();
            return cursos.Select(c =>
            {
                return new CursosViewModel
                {
                    id = c.id,
                    nombre = c.nombre,
                    descripcion = c.descripcion,
                    logo = c.logo,
                    horas = c.horas,
                    idModulo = c.idModulo
                };
            });
        }

        // GET: api/Cursos/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar([FromRoute]int id)
        {
            var cursos = await _context.Cursos.FindAsync(id);

            if (cursos == null)
            {
                return NotFound();
            }

            return Ok(new CursosViewModel
            {
                id = cursos.id,
                nombre = cursos.nombre,
                descripcion = cursos.descripcion,
                logo = cursos.logo,
                horas = cursos.horas,
                idModulo = cursos.idModulo
            });
        }

        // PUT: api/Cursos/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] CursosViewModel model)
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

            var cursos = await _context.Cursos.FirstOrDefaultAsync(c => c.id == model.id);

            if (cursos == null)
            {
                return NotFound();
            }

            cursos.nombre = model.nombre;
            cursos.descripcion = model.descripcion;
            cursos.logo = model.logo;
            cursos.horas = model.horas;
            cursos.idModulo = model.idModulo;

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

        // POST: api/Cursos/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] CursosViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Curso curso = new Curso
            {
                nombre = model.nombre,
                descripcion = model.descripcion,
                logo = model.logo,
                horas = model.horas,
                idModulo = model.idModulo
            };

            _context.Cursos.Add(curso);

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

        // DELETE: api/Cursos/Eliminar/5
        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> Eliminar([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var curso = await _context.Cursos.FindAsync(id);
            if (curso == null)
            {
                return NotFound();
            }

            _context.Cursos.Remove(curso);

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (Exception ex)
            {
                return BadRequest();
                throw;
            }

            return Ok(curso);
        }

        private bool CursoExists(int id)
        {
            return _context.Cursos.Any(e => e.id == id);
        }
    }
}