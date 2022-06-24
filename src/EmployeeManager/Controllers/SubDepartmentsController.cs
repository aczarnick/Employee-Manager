using EmployeeManager.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace EmployeeManager.Controllers
{
    public class SubDepartmentsController : Controller
    {
        private readonly masterContext _context;

        public SubDepartmentsController(masterContext context)
        {
            _context = context;
        }

        // GET: SubDepartments
        public async Task<IActionResult> Index()
        {
            var masterContext = _context.SubDepartments.Include(s => s.Department);
            return View(await masterContext.ToListAsync());
        }

        // GET: SubDepartments/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.SubDepartments == null)
            {
                return NotFound();
            }

            var subDepartment = await _context.SubDepartments
                .Include(s => s.Department)
                .FirstOrDefaultAsync(m => m.SubDepartmentId == id);
            if (subDepartment == null)
            {
                return NotFound();
            }

            return View(subDepartment);
        }

        // GET: SubDepartments/Create
        public IActionResult Create()
        {
            ViewData["DepartmentId"] = new SelectList(_context.Departments, "DepartmentId", "DepartmentId");
            return View();
        }

        // POST: SubDepartments/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("SubDepartmentId,DepartmentId,SubDepartmentName,AddedDate,UpdatedDate,Deleted,DeletedDate")] SubDepartment subDepartment)
        {
            if (ModelState.IsValid)
            {
                _context.Add(subDepartment);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DepartmentId"] = new SelectList(_context.Departments, "DepartmentId", "DepartmentId", subDepartment.DepartmentId);
            return View(subDepartment);
        }

        // GET: SubDepartments/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.SubDepartments == null)
            {
                return NotFound();
            }

            var subDepartment = await _context.SubDepartments.FindAsync(id);
            if (subDepartment == null)
            {
                return NotFound();
            }
            ViewData["DepartmentId"] = new SelectList(_context.Departments, "DepartmentId", "DepartmentId", subDepartment.DepartmentId);
            return View(subDepartment);
        }

        // POST: SubDepartments/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("SubDepartmentId,DepartmentId,SubDepartmentName,AddedDate,UpdatedDate,Deleted,DeletedDate")] SubDepartment subDepartment)
        {
            if (id != subDepartment.SubDepartmentId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(subDepartment);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SubDepartmentExists(subDepartment.SubDepartmentId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DepartmentId"] = new SelectList(_context.Departments, "DepartmentId", "DepartmentId", subDepartment.DepartmentId);
            return View(subDepartment);
        }

        // GET: SubDepartments/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.SubDepartments == null)
            {
                return NotFound();
            }

            var subDepartment = await _context.SubDepartments
                .Include(s => s.Department)
                .FirstOrDefaultAsync(m => m.SubDepartmentId == id);
            if (subDepartment == null)
            {
                return NotFound();
            }

            return View(subDepartment);
        }

        // POST: SubDepartments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.SubDepartments == null)
            {
                return Problem("Entity set 'masterContext.SubDepartments'  is null.");
            }
            var subDepartment = await _context.SubDepartments.FindAsync(id);
            if (subDepartment != null)
            {
                _context.SubDepartments.Remove(subDepartment);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SubDepartmentExists(int id)
        {
            return (_context.SubDepartments?.Any(e => e.SubDepartmentId == id)).GetValueOrDefault();
        }
    }
}
