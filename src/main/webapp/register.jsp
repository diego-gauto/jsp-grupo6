<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
      crossorigin="anonymous"
    />
    <link rel="shortcut icon" href="#" />
    <link rel="stylesheet" href="./styles/styles.css" />
    <link rel="stylesheet" href="./styles/register.css" />
    <title>E-Commerce( Grupo 6)</title>
  </head>
  <body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <header>
      <!-- Aca abajo Diego desarrolla el Header-->
      <nav class="navbar navbar-expand-lg navegacion">
        <div class="container contenedor-nav">
          <a class="navbar-brand logo-nav" href="./index.jsp" id="go-home">
            <img
              src="./images/logo.png"
              alt="Logo E-Market"
              height="60"
              class="d-inline-block align-text-center"
            />
            SHOPPING Six
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div
            class="collapse navbar-collapse justify-content-end"
            id="navbarTogglerDemo02"
          >
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#" id="registrarse">Registrarse</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./login.jsp" id="loginlogout"
                  >Ingresar</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./carrito.jsp">
                  <img
                    src="./images/carrito.png"
                    alt="carrito"
                    height="30"
                    class="d-inline-block align-text-center"
                  />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <main>
    
        <div class="container w-50">
          <div class="register-container">
            <h2> COMPLETE SUS DATOS </h2>
            <br>
          <form method="post" action="registro" id="formulario" class="row g-3">
          
            <div class="col-md-6">
              <label for="inputnombre" class="form-label" id="inputnombre">Nombre</label>
              <input type="text" name="nombre" class="form-control" id="nombre" required>
            </div>
          
            <div class="col-md-6">
              <label for="inputapellido" class="form-label" id="inputapellido">Apellido</label>
              <input type="text" name="apellido" class="form-control" id="apellido" required>
            </div>
    
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label>
              <input type="email" name="email" class="form-control" id="email" required>
            </div>
          
            <div class="col-md-6">
              <label for="inputPassword4" class="form-label">Password</label>
              <input type="password" name="pass" class="form-control" id="password" required>
            </div>
          
            <div class="col-12">
              <label for="inputAddress" class="form-label" id="inputdomicilio">Domicilio</label>
              <input type="text" name="domicilio" class="form-control" id="domicilio" placeholder="Av. callao 111">
            </div>
            
            <div class="col-md-6">
              <label for="inputCity" class="form-label" id="inputciudad">Ciudad</label>
              <input type="text" name="ciudad" class="form-control" id="ciudad">
            </div>
    
            <div class="col-md-4">
              <label for="inputState" class="form-label" id="pais">Pais</label>
              <select id="inputState" name="pais" class="form-select">
                <option selected>Elija una opcion</option>
                <option>Argentina</option>
                <option>Chile</option>
                <option>Brasil</option>
              </select>
            </div>
          
            <div class="col-md-2">
              <label for="inputZip" class="form-label" id="cp">CP</label>
              <input type="number" name="cp" class="form-control" id="inputZip">
            </div>
          
            <div class="col-12">
              <div class="form-check">
                <input 
                class="form-check-input" 
                type="checkbox" 
                id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                  Acepto los t??rminos y condiciones
                </label>
              </div>
            </div>
    
	        <div class="col-6">
	          <button
	          class="btn btn-success w-100" 
	          id="borrar"
	          type="reset"
	          >Borrar</button>
	        </div>
    
	        <div class="col-6">
	          <button
	          class="btn btn-success w-100" 
	          id="boton" 
	          type="submit">Enviar</button>
	        </div>

          </form>
          
        </div>
        </div>

    </main>


      <!-- Aca abajo Milagros desarrolla el footer con info de la empresa, redes sociales y copyright -->

                <footer id="footer">
                  <ul class="nav justify-content-center" >
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Preguntas Frecuentes</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">T??rminos y condiciones</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Defensa al consumidor </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Pol??tica de privacidad </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Env??os y cambios </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Formas de pagos </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-muted" href="#">Primera vez comprando</a>
                    </li>
                  </ul>
                  <br>
                  <div class= container-fluid> 
                    <p class="card-text text-muted">Encontranos en nuestras redes!</p>
                    <a href="#" class="btn btn-primary" id="redes">Facebook</a>
                    <a href="#" class="btn btn-primary" id="redes">Instagram</a>
                    <a href="#" class="btn btn-primary" id="redes">YouTube</a>
                  </div>
                  <br>
                  <div class= conteiner-fluid> 
                    <div class="footer-seo__module footer-seo__module--uservoice">
                      <div id="mc_embed_signup">
                        <div class="form-group form-group--icon form-group--email mb-3" id="email">
                          <input class="email form-control" id="email-footer" name="email" placeholder="Suscribite para enterate de nuestras novedades" type="email" >
                        </div>
                          <input class="btn btn-primary mb-3" name="suscribite" type="submit" value="Suscribite">
                        </div>
                      </div>
                    </div>
                  <div class="container-fluid text-muted"> 
                  <span>?? 2022 ShoppingSix. Todos los derechos reservados. </span>
                  </div>
                </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
      integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
      crossorigin="anonymous"
      ></script>    
      <script type="module" src="./js/register.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	  <!-- <link rel="stylesheet" href="alert/dist/sweetalert.css"> -->
      </body>
</html>
