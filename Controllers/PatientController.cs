using Microsoft.AspNetCore.Mvc;
using System.Linq;
using ZZPrescription.Models; // Ajoutez l'espace de noms pour vos modèles
using ZZPrescription.Data;   // Ajoutez l'espace de noms pour votre contexte de base de données

namespace ZZPrescription.Controllers
{
    public class PatientController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PatientController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: PatientController
        public ActionResult Index()
        {
            ViewBag.ImageName = "medecin_patient.png"; // Pour l'action 'Patient'
            ViewBag.ActiveTab = "Patient"; // Définir l'onglet actif
            var patients = _context.Patients.ToList(); // Récupère tous les patients
            return View(patients); // retourne la vue Index.cshtml avec la liste des patients
        }


        // POST
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Add(Patient patient)
        {
            if (ModelState.IsValid)
            {
                _context.Patients.Add(patient);
                _context.SaveChanges();
                return RedirectToAction("Index"); // Redirige vers la liste des patients après ajout
            }
            return View(patient); // Récupère les données en cas d'erreur
        }
    }
}