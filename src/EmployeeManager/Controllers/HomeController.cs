using EmployeeManager.Models;
using EmployeeManager.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace EmployeeManager.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly masterContext _context;


        public HomeController(ILogger<HomeController> logger, masterContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            var profiles = from employee in _context.Employees
                           where employee.Deleted == false
                           join subDepartment in _context.SubDepartments
                               on employee.SubDepartmentId equals subDepartment.SubDepartmentId
                           where subDepartment.Deleted == false
                           join department in _context.Departments
                               on subDepartment.DepartmentId equals department.DepartmentId
                           where department.Deleted == false
                           select new ProfileViewModel(
                                employee.FirstName,
                                employee.LastName,
                                subDepartment.SubDepartmentName,
                                employee.Bio,
                                employee.FbprofileLink,
                                employee.TwitterProfileLink,
                                employee.ProfileImage,
                                department.DepartmentName);

            var result = profiles.AsEnumerable().GroupBy(prof => prof.Department).ToDictionary(group => group.Key, group => group.ToList());

            return View(result);
        }

        public IActionResult Privacy()
        {
            return View();
        }
        
        public IActionResult Crud()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}