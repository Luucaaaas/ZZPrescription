using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using ZZPrescription.Models;

namespace ZZPrescription.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        ViewBag.ImageName = "medecin_index.png"; 
        ViewBag.ActiveTab = "Home"; // Définir l'onglet actif
        return View();
    }

}
