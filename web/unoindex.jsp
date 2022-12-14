<%-- 
    Document   : index
    Created on : 14/10/2022, 23:16:20
    Author     : bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulario tarea no.2 Bryan Martinez</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script  src="js/script.js" ></script> 
      
    </head>
    <body background="https://i.pinimg.com/originals/ea/61/23/ea6123f403ebc08658ee18d4908cd573.png">
        
        <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Menu</a>
                <div align="center" class="text-white">Bryan Martinez 0909-20-6903</div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                  <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="index">Formulario</a>
                    <a class="nav-link" href="ClienteController">Datos</a>
                    <a class="nav-link" href="#">Ayuda</a>
                    <a class="nav-link" href="index.jsp">Cerrar sesión</a>
                  </div>
                </div>
            </div>
                  
        </nav>
        
        
        <div class="container">
        <div class="row">
            
            <div class="col">               
                <div class="shadow-lg p-3 mb-5 mt-4 bg-body rounded">                                    
                    <div align="center" class="p-3 mb-2 bg-dark bg-gradient fw-bold text-white">Formulario de registro</div>
                    
                    <!-- FORMULARIO -->
                    
                    <form  method="POST" id="contact-form" name="contact-form" action="NewClass"  class="row g-3 needs-validation" novalidate>
                        
                        <!-- Primer espacio para el codigo en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="codigo" class="form-label">Codigo</label>
                            <input type="text" class="form-control" name="codigo" id="codigo" placeholder="0000-00-0000" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS</div>
                        </div>
                        
                        <!-- Segundo espacio para el nombre en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" name="nombres" id="nombres" placeholder="Primer nombre" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS.</div>
                        </div>
                        
                        <!-- Tercer espacio para el apellido en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" name="apellidos" id="apellidos" placeholder="Primer apellido" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS</div>
                        </div>
                        
                        <!-- Cuarto espacio para la direccion en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="direccion" class="form-label">Direccion</label>
                            <input type="text" class="form-control" name="direccion" id="direccion" placeholder="Ciudad, calle, avenida" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS</div>
                        </div>
                        
                        <!-- Quinto espacio para el correo personal del usuario en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="correo" class="form-label">Correo</label>
                            <input type="text" class="form-control" name="correo" id="correo" placeholder="ejemplo@miumg.com" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS</div>
                        </div>
                        
                        <!-- Sexto y ultimo espacio para el numero de telefono o celular en el formulario -->
                        
                        <div class="col-md-4 position-relative">
                            <label for="telefono" class="form-label">Telefono</label>
                            <input type="number" class="form-control" name="celular" id="celular" placeholder="502 ****-****" required>
                            <!-- Mensajes para validación   -->
                            <div class="valid-tooltip">EXCELENTE</div>
                            <div class="invalid-tooltip">DATOS INCOMPLETOS</div>
                        </div>
                        
                        <p>¿Deseas registrarte?, llena el formulario completo con tus datos, y registrate.</p>
                            
                        <!-- Boton enviar -->
                       
                            <button class="btn btn-dark fw-bold" type="submit">Enviar</button> 
                            
                            <button type="reset"  class="btn btn-danger">Borrar datos</button> <br> <br> 
                            
                            <button type="button" onclick="enviarFormularioOpcion2()" class="btn btn-success">Guardar con JS</button>
                            
                        
                    </form>
                </div>
                <div class="p-3 bd-highlight">
                    <div class="container" id="container2">
                        <table class="table table-striped table-hover">
                            <thead class="table-dark">
                                <tr>
                                    <td>Codigo</td>
                                    <td>Nombres</td>
                                    <td>Apellidos</td>
                                    <td>Dirección</td>
                                    <td>Correo</td>
                                    <td>Telefono</td>
                                    <td>Acción</td>
                                    
                                     
                                </tr>
                            </thead>
                            <script>
                                $('formulario-eliminar').submit(function(e){
                                    e.preventDefault();
                                    const swalWithBootstrapButtons = Swal.mixin({
                                        customClass: {
                                          confirmButton: 'btn btn-success',
                                          cancelButton: 'btn btn-danger'
                                        },
                                        buttonsStyling: false
                                      })

                                      swalWithBootstrapButtons.fire({
                                        title: 'Are you sure?',
                                        text: "You won't be able to revert this!",
                                        icon: 'warning',
                                        showCancelButton: true,
                                        confirmButtonText: 'Yes, delete it!',
                                        cancelButtonText: 'No, cancel!',
                                        reverseButtons: true
                                      }).then((result) => {
                                        if (result.isConfirmed) {
                                          swalWithBootstrapButtons.fire(
                                            'Deleted!',
                                            'Your file has been deleted.',
                                            'success'
                                          )
                                        } else if (
                                          /* Read more about handling dismissals below */
                                          result.dismiss === Swal.DismissReason.cancel
                                        ) {
                                          swalWithBootstrapButtons.fire(
                                            'Cancelled',
                                            'Your imaginary file is safe :)',
                                            'error'
                                          )
                                        }
                                      })
                                    }
                                    })
                            </script>
                            <tbody id="bodyTable" class="table-dark">

                            </tbody>                     
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
        
          
        
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <script>        
    (function () {
      'use strict'

      // Obtener todos los formularios a los que queremos aplicar estilos de validación de Bootstrap personalizados
      var forms = document.querySelectorAll('.needs-validation')

      //Recorremos los forms y evitamos en envío sin validacion
      Array.prototype.slice.call(forms)
        .forEach(function (form) {
          form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
              event.preventDefault()
              event.stopPropagation()
            }
            form.classList.add('was-validated')
          }, false)
        })
    })()
        </script>    
    </body>
</html>
