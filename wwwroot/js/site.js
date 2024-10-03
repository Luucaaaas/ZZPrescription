
// Modal pour ajouter un nouveau patient
// Ouvrir la modale
document.getElementById("openModal").onclick = function() {
    var modal = document.getElementById("addPatientModal");
    modal.style.display = "block"; // Affiche la modale
    setTimeout(function() {
        modal.classList.add("show"); // Ajoute la classe pour l'animation
    }, 10); // Petite attente pour s'assurer que le display est appliqué
}

// Fermer la modale
document.getElementById("closeModal").onclick = function() {
    var modal = document.getElementById("addPatientModal");
    modal.classList.remove("show"); // Retire la classe pour l'animation
    modal.classList.add("hide"); // Ajoute la classe de cache

    setTimeout(function() {
        modal.style.display = "none"; // Masque la modale après l'animation
        modal.classList.remove("hide"); // Réinitialise la classe de cache
    }, 500); // Correspond à la durée de l'animation
}

// Fermer la modale si l'utilisateur clique en dehors de celle-ci
window.onclick = function(event) {
    var modal = document.getElementById("addPatientModal");
    if (event.target == modal) {
        modal.classList.remove("show");
        modal.classList.add("hide"); // Ajoute la classe de cache

        setTimeout(function() {
            modal.style.display = "none";
            modal.classList.remove("hide"); // Réinitialise la classe de cache
        }, 500);
    }
}
//fin modal pour ajouter un nouveau patient