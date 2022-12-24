<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <title>E-Commerce( Grupo 6)</title>
  </head>
  <body>
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
                <a
                  class="nav-link"
                  href="./register.jsp"
                  id="registrarse"
                  >Registrarse</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="./user.jsp" id="profile"
                  ><%=session.getAttribute("name") %></a
                >
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
      <!-- Aca abajo Melina desarrolla una seccion mostrando los medios de pagos permitidos-->
      <div>
        <img
          id="banner-pagos"
          src="./images/6cuotas.PNG"
          class="rounded mx-auto d-block"
          alt="..."
          width="100%"
          height="20%"
        />
      </div>
      <!-- Aca abajo Marisol desarrolla buscar productos-->
      <div id="botonBusqueda" class="">
        <form class="d-flex" role="search">
          <input
            class="form-control"
            type="search"
            placeholder="Buscar producto por nombre"
            aria-label="Search"
            id="search"
          />
          <button
            class="btn btn-outline-success text-white"
            type="submit"
            id="button-search"
          >
            <img id="lupitaB" src="./images/lupitaIcon.png" alt="" />Buscar
          </button>
        </form>
      </div>
      <!-- Aca abajo Eduardo desarrolla un dropdown con las categorias de los productos-->

      <div id="categorias">
        <select class="form-select" id="category">
          <option selected="true" disabled="disabled">
            Seleccione una categoría
          </option>
          <option value="zapatillas">Zapatillas</option>
          <option value="zapatos">Zapatos</option>
          <option value="botas">Botas</option>
          <option value="sandalias">Sandalias y Ojotas</option>
        </select>
      </div>

      <!-- Aca abajo Johana desarrolla el carrousel para mostrar productos destacados-->
      <div
        id="carouselExampleIndicators"
        class="carousel slide"
        data-bs-ride="true"
      >
        <div class="carousel-indicators">
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="0"
            class="active"
            aria-current="true"
            aria-label="Slide 1"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="1"
            aria-label="Slide 2"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="2"
            aria-label="Slide 3"
          ></button>
        </div>
        <div class="container w-50" id="carrousel">
          <h5 class="texto">PRODUCTOS DESTACADOS</h5>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                src="./images/zapatillas puma mujer.jpeg"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="./images/Bota Paruolo class.jpg"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="./images/Sandalias Ojotas Fila Drifter Basic.jpg"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="./images/ZAPATO MELVILLE AZUL.jpg"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="./images/Zapatillas Puma Hombre.jpg"
                class="d-block w-100"
                alt="..."
              />
            </div>
          </div>
          <button
            class="carousel-control-prev"
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev"
          >
            <span
              class="carousel-control-prev-icon bg-dark"
              aria-hidden="true"
            ></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button
            class="carousel-control-next"
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next"
          >
            <span
              class="carousel-control-next-icon bg-dark"
              aria-hidden="true"
            ></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>

      <!-- Aca abajo Roberto desarrolla el grupo de cards para mostrar productos en oferta-->

      <img
        src="./images/ofertas banner"
        class="card-img-top"
        alt="Ofertas Banner"
        id="banner-ofertas"
      />
      <div id="offers" class="row row-cols-1 row-cols-md-3 g-4"></div>
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
                id="email-footer"
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
    <script type="module" src="./js/index.js"></script>
  </body>
</html>
