document.querySelector('#Login').addEventListener('click', iniciarSesion);

function iniciarSesion() {
    var sCorreo = '';
    var sContrasenna = '';
    var bAcceso = false;

    sCorreo = document.querySelector('#Usuario').value;
    sContrasenna = document.querySelector('#Contrasenna').value;

    bAcceso = validarCredenciales(sCorreo, sContrasenna);
    console.log(bAcceso);

    if (bAcceso == true) {
        ingresar();
    };

}

function ingresar() {
    var rol = sessionStorage.getItem('rolUsuarioActivo');
    switch (rol) {
        case '1':
            window.location.href = 'HtmlPage1.html';
         break;
        case '2':
            window.location.replace="AdminProfesores.aspx";
            break;
    };
}