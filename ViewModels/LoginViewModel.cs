using System;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc;

namespace ZZPrescription.Models;

public class LoginViewModel
{
    [Required(ErrorMessage = "Nom d'utilisateur requis.")]
    public required string UserName { get; set; }

    [Required(ErrorMessage = "Mot de passe requis.")]
    [DataType(DataType.Password)]
    public required string Password { get; set; }

    [Display(Name = "Remember me?")]
    public bool RememberMe { get; set; }
}

