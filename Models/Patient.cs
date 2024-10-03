using System;
using System.ComponentModel.DataAnnotations;


namespace ZZPrescription.Models;

public class Patient
{
    public int PatientId { get; set; }

    [Required(ErrorMessage = "Le nom est requis.")]
    public required string Nom_p { get; set; }

    [Required(ErrorMessage = "Le prénom est requis.")]
    public required string Prenom_p { get; set; }

    [Required(ErrorMessage = "Le sexe est requis.")]
    public required string Sexe_p { get; set; }
    [Required(ErrorMessage = "Le numéro de sécurité sociale est requis.")]
    [RegularExpression(@"^\d{15}$", ErrorMessage = "Le numéro de sécurité sociale doit contenir exactement 15 chiffres.")]
    public required string Num_secu { get; set; }

    public List<Antecedent> Antecedents { get; set; } = new();
    public List<Allergie> Allergies { get; set; } = new();
    public Ordonnance? Ordonnance { get; set; }
}
