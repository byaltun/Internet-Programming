using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProjectTwo.Data;
using ProjectTwo.Models;
using ProjectTwo.Models.Domain;

namespace ProjectTwo.Controllers
{
    public class EmployeesController : Controller
    {
        private readonly MVCDemoDbContext mvcDemoDbContext;

        public EmployeesController(MVCDemoDbContext mvcDemoDbContext)
        {
            this.mvcDemoDbContext = mvcDemoDbContext;
        }


        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var employees = await mvcDemoDbContext.Employees.ToListAsync();
            return View(employees);
        }


        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Add(AddEmployeeViewModel addEmployeeRequest)
        {
            var employee = new Employee()
            {
                Id = Guid.NewGuid(),
                AdSoyad = addEmployeeRequest.AdSoyad,
                Bolum = addEmployeeRequest.Bolum,
                OgrenciNo = addEmployeeRequest.OgrenciNo,
                KayitTarih = addEmployeeRequest.KayitTarih,
                DTarih = addEmployeeRequest.DTarih,
            };

            await mvcDemoDbContext.Employees.AddAsync(employee);
            await mvcDemoDbContext.SaveChangesAsync();
            return RedirectToAction("Index");

        }

        [HttpGet]
        public async Task<IActionResult> View(Guid id) 
        {

            var employee = await mvcDemoDbContext.Employees.FirstOrDefaultAsync(x => x.Id == id);

            if (employee != null) 
            {
                var viewModel = new UpdateEmployeeViewModel()
                {
                    Id = employee.Id,
                    AdSoyad = employee.AdSoyad,
                    Bolum = employee.Bolum,
                    OgrenciNo = employee.OgrenciNo,
                    KayitTarih = employee.KayitTarih,
                    DTarih = employee.DTarih,
                };

                return await Task.Run(() =>View("View", viewModel));
            }

           
            
            return RedirectToAction("Index");
        }

        [HttpPost]

        public async Task<IActionResult> View(UpdateEmployeeViewModel model)
        {
            var employee = await mvcDemoDbContext.Employees.FindAsync(model.Id);

            if (employee != null) 
            {
                employee.AdSoyad = model.AdSoyad;
                employee.Bolum = model.Bolum;
                employee.OgrenciNo = model.OgrenciNo;
                employee.KayitTarih = model.KayitTarih;
                employee.DTarih = model.DTarih;

                await mvcDemoDbContext.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return RedirectToAction("Index");

        }

        [HttpPost]
        public async Task<IActionResult> Delete(UpdateEmployeeViewModel model)
        {
            var employee = await mvcDemoDbContext.Employees.FindAsync(model.Id);

            if (employee != null) 
            {
                mvcDemoDbContext.Employees.Remove(employee);
                await mvcDemoDbContext.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return RedirectToAction("Index");
        }

    }
}
