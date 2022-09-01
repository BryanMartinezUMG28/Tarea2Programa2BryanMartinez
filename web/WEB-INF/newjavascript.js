/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
document.getElementById("contact-form").addEventListener("submit",enviarFormOpUno);

function enviarFormOpUno(){
    alert("FORMULARIO EN DESTINO");
    
};

function enviarFormularioTwo(){
    var formulario = document.getElementById("contact-form");
    

document.getElementById("btn3").addEventListener("click",function(){
    alert("EXCELENTE, FORMULARIO ENTREGADO");
    formulario.submit();
});
};

