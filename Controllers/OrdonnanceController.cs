using Microsoft.AspNetCore.Mvc;

namespace ZZPrescription.Controllers
{
    public class OrdonnanceController : Controller
    {
        // GET: OrdonnanceController
    public IActionResult Index()
    {
        ViewBag.ImageName = "medecin_Ordonnance.png"; 
        ViewBag.ActiveTab = "Ordonnance"; // Définir l'onglet actif
        return View();
    }

    }
}
