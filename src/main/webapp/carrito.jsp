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
    <link rel="stylesheet" href="./styles/carrito.css" />
    <title>E-Commerce( Grupo 6)</title>
  </head>
  <body>
    <header>
      <!-- Aca abajo Diego desarrolla el Header_-->
      <nav class="navbar navbar-expand-lg navegacion">
        <div class="container contenedor-nav">
          <a class="navbar-brand logo-nav" href="index.jsp" id="go-home">
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
                <a class="nav-link" href="./register.jsp" id="registrarse"
                  >Registrarse</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./user.jsp" id="profile"
                  >Perfil</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./login.jsp" id="loginlogout"
                  >Ingresar</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
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
      <h2 class="d-flex justify-content-center">Tus compras</h2>

      <div id="carrito" class="row row-cols-1 row-cols-md-3 g-4"></div>
      <form action="" id="form-carrito">
        <h2 class="d-flex justify-content-center">
          El total a pagar es $ <span id="total">00</span>.00
        </h2>
        <h3 class="d-flex justify-content-center">
          Selecione un medio de pago
        </h3>
        <div id="select_pago" class="d-flex justify-content-between">
          <div class="form-check">
            <input
              class="form-check-input"
              type="radio"
              name="flexRadioPago"
              id="flexRadioTarjeta"
              checked
            />
            <label class="form-check-label" for="flexRadioTarjeta">
              Tarjeta de Crédito / Débito
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="radio"
              name="flexRadioPago"
              id="flexRadioTransferencia"
            />
            <label class="form-check-label" for="flexRadioTransferencia">
              Transferencia
            </label>
          </div>
        </div>
        <div id="pago_tarjeta">
          <form class="row g-3">
            <div class="col-md-12">
              <label for="credit_card_number" class="form-label"
                >Número Tarjeta</label
              >
              <input
                type="text"
                limit="16"
                class="form-control"
                id="credit_card_number"
              />
            </div>
            <div class="col-md-12">
              <label for="credit_card_name" class="form-label">Nombre</label>
              <input type="text" class="form-control" id="credit_card_name" />
            </div>
            <div id="expira" class="d-flex flex-row justify-content-between">
              <div class="col-md-4">
                <label for="credit_card_mes" class="form-label"
                  >Expira mes</label
                >
                <select
                  class="form-select"
                  aria-label="Mes"
                  id="credit_card_mes"
                >
                  <option selected>Seleccione el mes</option>
                  <option value="1">01</option>
                  <option value="2">02</option>
                  <option value="3">03</option>
                  <option value="3">04</option>
                  <option value="3">05</option>
                  <option value="3">06</option>
                  <option value="3">07</option>
                  <option value="3">08</option>
                  <option value="3">09</option>
                  <option value="3">10</option>
                  <option value="3">11</option>
                  <option value="3">12</option>
                </select>
              </div>
              <div class="col-md-4">
                <label for="credit_card_anio" class="form-label"
                  >Expira año</label
                >
                <select
                  class="form-select"
                  aria-label="Mes"
                  id="credit_card_anio"
                >
                  <option selected>Seleccione el año</option>
                  <option value="1">2023</option>
                  <option value="2">2024</option>
                  <option value="3">2025</option>
                  <option value="3">2026</option>
                  <option value="3">2027</option>
                  <option value="3">2028</option>
                  <option value="3">2029</option>
                  <option value="3">2030</option>
                </select>
              </div>
              <div class="col-md-3">
                <label for="credit_ccv" class="form-label">CVC</label>
                <input type="text" class="form-control" id="credit_card_ccv" />
              </div>
            </div>
            <button type="submit" class="pagar btn btn-primary col-md-12">
              Comprar
            </button>
          </form>
        </div>
        <div id="pago_transferencia">
          <form class="row g-3">
            <div class="col-md-12">
              <label for="credit_card_number" class="form-label"
                >CBU / CVU / Alias</label
              >
              <input
                type="text"
                limit="30"
                class="form-control"
                id="cbu_cvu_alias"
              />
            </div>
            <div class="col-md-12">
              <label for="credit_card_number" class="form-label">Token</label>
              <input type="text" limit="30" class="form-control" id="Token" />
            </div>
            <button type="submit" class="pagar btn btn-primary col-md-12">
              Comprar
            </button>
          </form>
        </div>
      </form>
    </main>

    <!-- Aca abajo Milagros desarrolla el footer con info de la empresa, redes sociales y copyright -->

    <footer id="footer">
      <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Preguntas Frecuentes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Términos y condiciones</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Defensa al consumidor </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Política de privacidad </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Envíos y cambios </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Formas de pagos </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted" href="#">Primera vez comprando</a>
        </li>
      </ul>
      <br />
      <div class="container-fluid">
        <p class="card-text text-muted">Encontranos en nuestras redes!</p>
        <a href="#" class="btn btn-primary" id="redes">Facebook</a>
        <a href="#" class="btn btn-primary" id="redes">Instagram</a>
        <a href="#" class="btn btn-primary" id="redes">YouTube</a>
      </div>
      <br />
      <div class="conteiner-fluid">
        <div class="footer-seo__module footer-seo__module--uservoice">
          <div id="mc_embed_signup">
            <div
              class="form-group form-group--icon form-group--email mb-3"
              id="email"
            >
              <input
                class="email form-control"
                id="email"
                name="email"
                placeholder="Suscribite para enterate de nuestras novedades"
                type="email"
              />
            </div>
            <div>
              <input
                class="btn btn-primary mb-3"
                name="suscribite"
                type="submit"
                value="Suscribite"
              />
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid text-muted">
        <span>© 2022 ShoppingSix. Todos los derechos reservados. </span>
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
    <script type="module" src="./js/carrito.js"></script>
  </body>
</html>
