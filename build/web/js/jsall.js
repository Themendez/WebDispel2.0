/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
<!-- jquery formulario  -->

$(document).ready(function(){
$("#registerForm").validate();
});

//<!-- funcion para validar el campo telefono-->
$(document).ready(function(){
$.validator.addMethod("NumbersOnly", function(value, element) {
return this.optional(element) || /^[0-9\-\+]+$/i.test(value);
}, "Telefono solo puede contener numeros y guiones.");	 
$("#registerForm").validate();
});

$(document).ready(function(){
$.validator.addMethod("username", function(value, element) {
return this.optional(element) || /^[a-z0-9\_]+$/i.test(value);
}, "UserID solo puede contener letras, numeros, o guiones bajos.");
$("#registerForm").validate();
});


<!-- jquery formulario  end-->


