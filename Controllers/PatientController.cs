using Microsoft.AspNetCore.Mvc;

namespace ZZPrescription.Controllers
{
    public class PatientController : Controller
    {
        
        // GET: PatientController
        public ActionResult Index()
        {
            ViewBag.ImageName = "medecin_patient.png"; // Pour l'action 'Patient'
            ViewBag.ActiveTab = "Patient"; // Définir l'onglet actif
            return View();  // retourne la vue Index.cshtml dans Views/Patient/Index.cshtml
        }



        // GET 
        [HttpGet]
        public IActionResult Add()
        {
            return View(); // retourne la vue Add.cshtml dans Views/Patient/Add.cshtml
        }
    }
}
