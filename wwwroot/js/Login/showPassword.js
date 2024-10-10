document.getElementById('togglePassword').addEventListener('click', function () {
    const passwordInput = document.getElementById('passwordInput');
    const passwordIcon = document.getElementById('passwordIcon');

    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        passwordIcon.src = '/svg/eye-open.svg'; // Change l'image
    } else {
        passwordInput.type = 'password';
        passwordIcon.src = '/svg/eye-closed.svg'; // Change l'image
    }
});