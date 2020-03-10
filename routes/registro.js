const express = require('express');
const router = express.Router();
const usuariosModel = require('../models/usuariosModel');



router.get('/', function(req, res, next) {
  res.render('registro');
});

router.post('/', async (req,res,next)=> {

  let objUsr = {
    mail : req.body.mail,
    nombre : req.body.nombre,
    apellido : req.body.apellido,
    telefono : req.body.telefono,
    password : req.body.password,
    fecha_nacimiento : req.body.fecha
  }
  
  let result = await usuariosModel.createUser(objUsr);
  
  if(result){
    res.render('registro', {status : true,message : 'Registro exitoso'});
  } else {
    res.render('registro', {status : false,message : 'Error'}); 
  }
})

module.exports = router;
