using System;
using System.ComponentModel.DataAnnotations;

namespace ZZPrescription.ViewModels;

public class RegisterViewModel
{
    [Required(ErrorMessage = "The Username field is required.")]
    public required string UserName { get; set; }

    [Required(ErrorMessage = "The Password field is required.")]
    [DataType(DataType.Password)]
    public required string Password { get; set; }

    [Required(ErrorMessage = "The Confirm Password field is required.")]
    [DataType(DataType.Password)]
    [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
    public required string ConfirmPassword { get; set; }

    [Required(ErrorMessage = "The Email field is required.")]
    [EmailAddress(ErrorMessage = "The Email field is not a valid e-mail address.")]
    public required string Email { get; set; }

    [Required(ErrorMessage = "The Last Name field is required.")]
    public required string Nom_m { get; set; }

    [Required(ErrorMessage = "The First Name field is required.")]
    public required string Prenom_m { get; set; }

    public DateTime Date_naissance_m { get; set; }
}
