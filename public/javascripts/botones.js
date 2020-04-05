// document.getElementById("btnsend").addEventListener('onfocus',registro());
// document.getElementById("pw2").addEventListener('onkeydown',comparar());


function registro() {
    let nombre = document.getElementById('nombre').value;
    let apellido = document.getElementById('apellido').value;
    let correo = document.getElementById('correo').value;
    let telefono = document.getElementById('telefono').value;
    let contraseña = document.getElementById('pw2').value;
    let terminos = document.getElementById('terminos').value;


    if(nombre.length > 0 & apellido.length > 0 & correo.length > 0 & telefono.length > 0 & contraseña.length > 0 ){
        document.getElementById('errordatos').innerHTML = "";
        document.getElementById("errordatos").classList.remove("alert","alert-danger");
        document.getElementById("btnsend").classList.add("btn-success");
        document.getElementById("btnsend").classList.remove("btn-danger");
        document.form1.btnsend.disabled=false;

    } else {
        document.getElementById('errordatos').innerHTML = "Completa todos los datos";
        document.getElementById("errordatos").classList.add("alert","alert-danger");
        document.getElementById("btnsend").classList.remove("btn-primary");
        document.getElementById("btnsend").classList.add("btn-danger");
        document.form1.btnsend.disabled=true;
    }

};


function comparar() {
   
   let pass1 = document.getElementById('pw1').value; 
   let pass2 = document.getElementById('pw2').value; 
   var miElto = document.getElementsByClassName("btn-outline-danger")[0];

   if(pass1.length > 0) {

    if(pass1 == pass2) {
        document.getElementById('pwds').innerHTML = "";
        document.getElementById("pwds").classList.remove("alert","alert-danger");
    }  
    else {
 
        document.getElementById('pwds').innerHTML = "Contraseñas no coinciden";
        document.getElementById("pwds").classList.add("alert","alert-danger");
        
    }
   } else {
    //    document.getElementById('pw2').value = "";
    //    pass2 = "";
        // document.getElementById('pw2').disabled = true;
        document.getElementById('pw1').focus()
    }
};

