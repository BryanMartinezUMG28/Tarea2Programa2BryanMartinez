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
        
        <section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<img src="https://seeklogo.com/images/U/universidad-mariano-galvez-de-guatemala-logo-0B59E1DE71-seeklogo.com.png" alt="logo" width="100">
					</div>
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<h1 class="fs-4 card-title fw-bold mb-4">I N G R E S A R</h1>
							<form action="unoindex.jsp" method="POST" class="needs-validation" novalidate="" autocomplete="off">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">Correo electronico</label>
									<input id="email" type="email" class="form-control" name="email" value="" required autofocus>
									<div class="invalid-feedback">
										Email is invalid
									</div>
								</div>

								<div class="mb-3">
									<div class="mb-2 w-100">
										<label class="text-muted" for="password">Contraseña</label>
										<a href="forgot.html" class="float-end">
											Olvidaste tu contraseña?
										</a>
									</div>
									<input id="password" type="password" class="form-control" name="password" required>
								    <div class="invalid-feedback">
								    	¿Acaso olvidaste la contraseña?
							    	</div>
								</div>

								<div class="d-flex align-items-center">
									<div class="form-check">
										<input type="checkbox" name="remember" id="remember" class="form-check-input">
										<label for="remember" class="form-check-label">Recordar contraseña</label>
									</div>
									<button type="submit" class="btn btn-primary ms-auto">
										Continuar
									</button>
								</div>
							</form>
						</div>
						<div class="card-footer py-3 border-0">
							<div class="text-center">
								Necesitas ayuda del ing. Bryan Martinez? <a href="register.html" class="text-dark">Pedir ayuda</a>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</div>
	</section>    
    </body>
</html>