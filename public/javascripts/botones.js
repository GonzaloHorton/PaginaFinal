document.getElementById("pw2").addEventListener('onkeydown',comparar());

function comparar() {
   
   let pass1 = document.getElementById('pw1').value; 
   let pass2 = document.getElementById('pw2').value; 
   var miElto = document.getElementsByClassName("btn-outline-danger")[0];

   if(pass1.length > 0) {

    if(pass1 == pass2) {
        document.getElementById('pwds').innerHTML = "Contraseña correcta";
        miElto.className = "col-12 d-flex justify-content-center btn-outline-success";
    }  
    else {
 
        document.getElementById('pwds').innerHTML = "Contraseñas no coinciden";
        miElto.className = "col-12 d-flex justify-content-center btn-outline-danger";
    }
   } else {
    //    document.getElementById('pw2').value = "";
    //    pass2 = "";
        // document.getElementById('pw2').disabled = true;
        document.getElementById('pw1').focus()
}
} 
// funci2on que se ejecuta cuando el input 1 pierde el foco y se habilita el input