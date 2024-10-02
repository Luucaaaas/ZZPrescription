using Microsoft.AspNetCore.Mvc;

namespace ZZPrescription.Controllers
{
    public class MedicamentController : Controller
    {
        // GET: Medicament
    public IActionResult Index()
    {
        ViewBag.ImageName = "medecin_Medicament.png"; 
        ViewBag.ActiveTab = "Medicament"; // Définir l'onglet actif
        return View();
    }

    }
}
