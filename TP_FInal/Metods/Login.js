/* Roles:
 * * 1:Admin
 * 2:Cliente
 * */

function obtenerListausuarios() {
    var listaUsuarios = null;

    if (listaUsuarios == null) {
        listaUsuarios = //ID, nombre, Apellido, Correo, contraseña, fecha Nac, Rol
            [
                ['1', 'Pablo', 'Perez', 'pablo.perez@pperez.com', 'pablito', '01/01/1990', '1'],
                ['2', 'Juan', 'Diaz', 'juan.diaz@jdiaz.com', 'juancito', '01/01/1980', '2']
            ]
    }
        return listaUsuarios;
}

function validarCredenciales(pCorreo, pContrasenna) {
    var listaUsuarios = obtenerListausuarios();
    var bAcceso = false;

    for (var i = 0; i < 2; i++) {
        if (pCorreo == listaUsuarios[i][3] && pContrasenna == listaUsuarios[i][4] ) {
            bAcceso = true;
            sessionStorage.setItem('usuarioActivo', listaUsuarios[i][1] + ' ' + listaUsuarios[i][2]);
            sessionStorage.setItem('rolUsuarioActivo', listaUsuarios[i][6]);
        }

    } 
    return bAcceso;
}
