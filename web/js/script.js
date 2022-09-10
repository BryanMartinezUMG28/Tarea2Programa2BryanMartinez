
function enviarFormulario(){
	let request = new XMLHttpRequest();
request.open('POST', 'NewClass', true);
request.setRequestHeader('Content-Type', 'text/plain; charset=UTF-8');

request.onreadystatechange = function() {
  if (request.readyState == XMLHttpRequest.DONE) {
    // Peticion terminada.
    if (request.status == 200) {
      // Todo salio bien
      console.log(request.response);
    } else {
      console.log("Error en el envío " + request.response);
    }
  }
}

var formData = new FormData(document.getElementById('contact-form'));
request.send(formData);
}

function enviarFormularioOpcion2(){
	const XHR = new XMLHttpRequest();
	  var formData = new URLSearchParams(new FormData(document.getElementById('contact-form'))).toString();
         
	  // Define what happens in case of error
	  XHR.addEventListener('error', (event) => {
	    alert('Oops! Something went wrong.');
	  });

	  // Set up our request
	  XHR.open('POST', 'NewClass', true);
          XHR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
          
          XHR.onload = () => {
            if (XHR.readyState === XHR.DONE && XHR.status === 200) {
              console.log("response => " + XHR.response);
              //console.log("response xml=> " + XHR.responseXML);
              document.getElementById('bodyTable').innerHTML=XHR.response;
              mostrarMensaje();
            }
          };
          
          XHR.send(formData);         
}

function mostrarMensaje(){
  Swal.fire({
  icon: 'success',
  title: 'Estudiante guardado exitosamente',
  showConfirmButton: false,
  timer: 1500
})
}





