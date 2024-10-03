function validateInput(input) {
    input.value = input.value.replace(/[^\d]/g, '');
    
    // Limite la longueur à 15 chiffres
    if (input.value.length > 15) {
        input.value = input.value.slice(0, 15);
    }
}