using System;

namespace ZZPrescription.Models;

public class Patient
{
    public int PatientId { get; set; }
    public required string Nom_p { get; set; }
    public required string Prenom_p { get; set; }
    public required string Sexe_p { get; set; }
    public required string Num_secu { get; set; }

    public List<Antecedent> Antecedents { get; set; } = new();
    public List<Allergie> Allergies { get; set; } = new();
    public Ordonnance? Ordonnance { get; set; }
}
