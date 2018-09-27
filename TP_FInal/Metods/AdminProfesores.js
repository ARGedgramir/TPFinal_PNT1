function getProfesores() {
    var listaProfesores = [];
    $.ajax({
        url: "Services/Consultar_Profesores.php",
        type: "get",
        data: {

        },
        contentType: "application/x-www-form-urlencoded;charset=ISO8859-15",
        dataType: "json",
        async: false,
        success: function (response) {
            listaProfesores = response;
        },
        error: function (request, error) {
            console.log(error);
        }

    });
    return listaProfesores;
};

function mostrarProfesores() {
    var listaProfesores = getProfesores();
    var tBody = document.querySelector('#tbProfesores tBody');
    var cantProfesores = listaProfesores.length;
    tBody.innerHTML = '';
    for (var i = 0; i < cantProfesores; i++) {
        var fila = tBody.insertRow(i);

        var celdaID = fila.insertCell();
        var celdaNombre = fila.insertCell();
        var celdaApellido = fila.insertCell();
        var celdaFechNac = fila.insertCell();
        var celdaDNI = fila.insertCell();
        var celdaEmail = fila.insertCell();
        var celdaTel = fila.insertCell();
        var celdaLeg= fila.insertCell();
        var celdaAnt= fila.insertCell();    

        celdaID.innerHTML = listaProfesores[i]['idprofesores'];
        celdaNombre.innerHTML = listaProfesores[i]['nombre'];
        celdaApellido.innerHTML = listaProfesores[i]['apellido'];
        celdaFechNac.innerHTML = listaProfesores[i]['fechaNacimiento'];
        celdaDNI.innerHTML = listaProfesores[i]['DNI'];
        celdaEmail.innerHTML = listaProfesores[i]['email'];
        celdaTel.innerHTML = listaProfesores[i]['telefono'];
        celdaLeg.innerHTML = listaProfesores[i]['legajo'];
        celdaAnt.innerHTML = listaProfesores[i]['antiguedad'];   

    };

};
