import { handleLoginLogout } from "./utils.js";

const buttonSearch = document.getElementById("button-search");
const linkHome = document.getElementById("go-home");
const productos = {
  "1": {
    "id": 1,
    "nombre": "Zapatillas Puma RS-Fast Limiter",
    "img": "../grupo6/images/zapatilla-puma-1.jpg",
    "descripcion": "la línea RS-Fast tiene un diseño elegante que es más rápido y más competitivo que cualquier otro modelo del Running System. Están influidas por los modelos de tendencia del 2000 para crear un estilo que es realmente actual.",
    "categoria": "zapatillas",
    "precio": 30000,
    "descuento": 20,
    "stock": 10,
    "createdAt": "2012-08-21T08:00:00.000Z"
  },
  "2": {
    "id": 2,
    "nombre": "Zapatillas Adidas HOOPS 2.0 MID",
    "img": "../grupo6/images/Zapatillas Adidas HOOPS 2.0 MID.jpg",
    "descripcion": "Un clásico estilo inspirado en el básquet. Estas zapatillas adidas de corte medio ofrecen una clásica energía deportiva y un moderno estilo urbano.",
    "categoria": "zapatillas",
    "precio": 25000,
    "descuento": 0,
    "stock": 5,
    "createdAt": "2012-08-22T08:00:00.000Z"
  },
  "3": {
    "id": 3,
    "nombre": "Zapatillas Vans U OLD SKOOL",
    "img": "../grupo6/images/Zapatillas Vans U OLD SKOOL.jpg",
    "descripcion": "Las Old Skool son las zapatillas clásicas de Vans y el primer modelo en lucir el icónico sidestripe de la marca.",
    "categoria": "zapatillas",
    "precio": 23500,
    "descuento": 0,
    "stock": 12,
    "createdAt": "2012-08-23T08:00:00.000Z"
  },
  "4": {
    "id": 4,
    "nombre": "Zapatillas Nike Alphina 5000",
    "img": "../grupo6/images/Zapatillas Nike Alphina 5000.jpg",
    "descripcion": "Las zapatillas Nike Alphina 5000 combinan el ADN del running con el estilo moderno. La parte superior traslúcida revela su identidad con el soporte FlyWire, que envuelve el pie y talón para brindar una sensación de control y comodidad. ",
    "categoria": "zapatillas",
    "precio": 26000,
    "descuento": 10,
    "stock": 8,
    "createdAt": "2012-08-24T08:00:00.000Z"
  },
  "5": {
    "id": 5,
    "nombre": "Zapatillas Under Armour Charged Victory",
    "img": "../grupo6/images/Zapatillas Under Armour Charged Victory.jpg",
    "descripcion": "Las Zapatillas Under Armour Charged Victory son ideales para sumar cada día más kilómetros a tu rutina. El diseño fresco cuenta con un tejido transpirable en la capellada con detalles en sintético para mejorar su durabilidad.",
    "categoria": "zapatillas",
    "precio": 19000,
    "descuento": 0,
    "stock": 14,
    "createdAt": "2012-08-25T08:00:00.000Z"
  },
  "6": {
    "id": 6,
    "nombre": "Zapatillas Olympikus Corre 2",
    "img": "../grupo6/images/Zapatillas Olympikus Corre 2.jpg",
    "descripcion": " Si buscas una zapatilla extremadamente ligera y de alto rendimiento, tanto para carreras diarias como para entrenamientos y maratones, las Zapatillas Olympikus Corre 2 son las perfectas para vos. Su diseño anatómico y minimalista, incorpora la tecnología Gripper en la suela que la hace antideslizante y de alta resistencia, abrasión en la parte delantera y trasera.",
    "categoria": "zapatillas",
    "precio": 29000,
    "descuento": 0,
    "stock": 7,
    "createdAt": "2012-08-26T08:00:00.000Z"
  },
  "7": {
    "id": 7,
    "nombre": "Zapatillas ADIDAS PRO N3XT 2021",
    "img": "../grupo6/images/Zapatillas ADIDAS PRO N3XT 2021.jpg",
    "descripcion": "Las zapatillas ideales de básquet. Vos ponés las reglas en la cancha. Estas zapatillas de básquet Adidas te permiten moverte con fluidez y comodidad gracias a la mediasuela liviana Bounce con amortiguación. Dejá atrás a la defensa rival sin importar si estás jugando en el asfalto o en una cancha cubierta.",
    "categoria": "zapatillas",
    "precio": 29000,
    "descuento": 5,
    "stock": 4,
    "createdAt": "2012-08-27T08:00:00.000Z"
  },
  "8": {
    "id": 8,
    "nombre": "Zapatillas Converse Chuck Taylor All Star Hi",
    "img": "../grupo6/images/Zapatillas Converse Chuck Taylor All Star Hi.jpg",
    "descripcion": "Las Zapatillas Converse Chuck Taylor All Star Hi son un Ícono cotidiano. La comodidad de su suela y su diseño de la capellada violeta en lona son perfectas para usar en todo momento. El plan para ellas depende de vos, son versátiles, clásicas y para utilizar como quieras, donde quieras y cuando quieras.",
    "categoria": "zapatillas",
    "precio": 22000,
    "descuento": 0,
    "stock": 15,
    "createdAt": "2012-08-28T08:00:00.000Z"
  },

  "9": {
    "id": 9,
    "nombre": "Sandalias adidas Terrex Sumra W",
    "img": "../grupo6/images/Sandalias adidas Terrex Sumra W.jpg",
    "descripcion": "La aventura es un trabajo duro. Tus pies merecen un descanso. Trátelos con el ajuste amplio y relajado de las sandalias adidas Terrex Sumra para un cómodo cambio de ritmo. Ajustable con mucho espacio para respirar, los Sumra son tus zapatos para clima cálido.",
    "categoria": "sandalias",
    "precio": 15000,
    "descuento": 0,
    "stock": 10,
    "createdAt": "2012-08-29T08:00:00.000Z"
  },
  "10": {
    "id": 10,
    "nombre": "Sandalias Nike Owaysis De Mujer",
    "img": "../grupo6/images/Sandalias Nike Owaysis De Mujer.jpg",
    "descripcion": "Luce increíble con este par de Sandalias Nike Owaysis las cuales son muy cómodas, ligeras y resistentes. Además tienen todo el estilo del verano.",
    "categoria": "sandalias",
    "precio": 18000,
    "descuento": 5,
    "stock": 6,
    "createdAt": "2012-08-30T08:00:00.000Z"
  },
  "11": {
    "id": 11,
    "nombre": "Sandalias Rider R1 Plus Papette Ad",
    "img": "../grupo6/images/Sandalias Rider R1 Plus Papette Ad.jpg",
    "descripcion": "Las Sandalias Rider R1 Plus Papette Ad se ajustan a tus pies para acompañarte en todas tus aventuras. Se encuentran confeccionadas en materiales sintéticos, con un diseño ergonómico para brindarte comodidad junto a la plantilla muy cómoda y suela antideslizante.",
    "categoria": "sandalias",
    "precio": 8000,
    "descuento": 0,
    "stock": 14,
    "createdAt": "2012-08-31T08:00:00.000Z"
  },
  "12": {
    "id": 12,
    "nombre": "Sandalias Rider Free Style Sand Ad",
    "img": "../grupo6/images/Sandalias Rider Free Style Sand Ad.jpg",
    "descripcion": "Las Sandalias Rider Free Style Sand Ad se ajustan a tus pies para acompañarte en todas tus aventuras. Se encuentran confeccionadas en PVC, con un diseño ergonómico para brindarte comodidad junto a la plantilla muy cómoda y suela antideslizante.",
    "categoria": "sandalias",
    "precio": 8000,
    "descuento": 0,
    "stock": 10,
    "createdAt": "2012-09-01T08:00:00.000Z"
  },
  "13": {
    "id": 13,
    "nombre": "Sandalias Puma Mayze",
    "img": "../grupo6/images/Sandalias Puma Mayze.jpg",
    "descripcion": "Construcción superior de material sintético que brinda comodidad. Diseño anatómico mejora el ajuste, brindando la máxima comodidad y protección.",
    "categoria": "sandalias",
    "precio": 25000,
    "descuento": 10,
    "stock": 7,
    "createdAt": "2012-09-02T08:00:00.000Z"
  },
  "14": {
    "id": 14,
    "nombre": "Sandalias Ojotas Adidas Originals Adelitte",
    "img": "../grupo6/images/Sandalias Ojotas Adidas Originals Adelitte.jpg",
    "descripcion": "Tu estilo es imposible de definir. Estas ojotas adidas Adilette lucen un diseño divertido que es fácil de combinar con cualquier look. El bolsillo con cierre en la banda superior es toda una declaración de estilo sin importar con qué los combinés.",
    "categoria": "sandalias",
    "precio": 27000,
    "descuento": 20,
    "stock": 3,
    "createdAt": "2012-09-03T08:00:00.000Z"
  },
  "15": {
    "id": 15,
    "nombre": "Sandalias Ojotas Puma Leadcat 2.0",
    "img": "../grupo6/images/Sandalias Ojotas Puma Leadcat 2.0.jpg",
    "descripcion": "Sol, calor, pileta y las Ojotas Puma Leadcat 2.0 para asegurarte los mejores momentos. Hechas en una goma liviana y resistente que se seca rápidamente. y un diseño que te permite combinar todos los looks. ",
    "categoria": "sandalias",
    "precio": 12000,
    "descuento": 0,
    "stock": 19,
    "createdAt": "2012-09-05T08:00:00.000Z"
  },
  "16": {
    "id": 16,
    "nombre": "Sandalias Ojotas Fila Drifter Basic",
    "img": "../grupo6/images/Sandalias Ojotas Fila Drifter Basic.jpg",
    "descripcion": "Complementá tu outfit del verano con las nuevas Ojotas Fila Drifter Basic, vas a lucir un estilo casual y apto tanto para la playa como para tu día a día. Están confeccionadas en materiales antideslizantes.",
    "categoria": "sandalias",
    "precio": 11000,
    "descuento": 0,
    "stock": 10,
    "createdAt": "2012-09-06T08:00:00.000Z"
  },

  "17": {
    "id": 17,
    "nombre": "BOTA PARUOLO STRONGER",
    "img": "../grupo6/images/BOTA PARUOLO STRONGER.jpg",
    "descripcion": "Las nuevas Stronger son súper exclusivas. Con una nueva propuesta de taco geométrico que marca la diferencia. Ideales para elevar tu look de noche.",
    "categoria": "botas",
    "precio": 40000,
    "descuento": 10,
    "stock": 5,
    "createdAt": "2012-09-07T08:00:00.000Z"
  },
  "18": {
    "id": 18,
    "nombre": "Bota Paruolo class",
    "img": "../grupo6/images/Bota Paruolo class.jpg",
    "descripcion": "Las nuevas Class son súper trendy. Tienen caña alta y al cuerpo, y una nueva propuesta de taco geométrico que marca la diferencia.",
    "categoria": "botas",
    "precio": 40000,
    "descuento": 0,
    "stock": 7,
    "createdAt": "2012-09-08T08:00:00.000Z"
  },
  "19": {
    "id": 19,
    "nombre": "Bota Hush Puppies Holden",
    "img": "../grupo6/images/Bota Hush Puppies Holden.jpg",
    "descripcion": "Borcego Hush Puppies de cuero acordonado, con cuello acolchado. Y suela de goma antideslizante. Comprá en E-store y te lo enviamos a donde quieras. Aprovecha nuestros beneficios.",
    "categoria": "botas",
    "precio": 31000,
    "descuento": 0,
    "stock": 6,
    "createdAt": "2012-09-09T08:00:00.000Z"
  },
  "20": {
    "id": 20,
    "nombre": "Bota Hush Puppies Chelsea",
    "img": "../grupo6/images/Bota Hush Puppies Chelsea.jpg",
    "descripcion": "Bota Hush Puppies en cuero, con suela de goma antideslizante. Comprá en nuestro E-Store y te lo enviamos donde quieras. Aprovechá los beneficios exclusivos.",
    "categoria": "botas",
    "precio": 25000,
    "descuento": 0,
    "stock": 10,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "21": {
    "id": 21,
    "nombre": "Bota Hush Puppies Kail",
    "img": "../grupo6/images/Bota Hush Puppies Kail.jpg",
    "descripcion": "Bota de cuero Hush Puppies, con cuello acolchado y suela de goma antideslizante. Comprá en E-store y te lo enviamos a donde quieras. Aprovecha nuestros beneficios.",
    "categoria": "botas",
    "precio": 29000,
    "descuento": 0,
    "stock": 4,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "22": {
    "id": 22,
    "nombre": "Bota Hush Puppies Celler",
    "img": "../grupo6/images/Bota Hush Puppies Celler.jpg",
    "descripcion": "Bota de ECO PU Hush Puppies, con cierre interno, vira con detalle de tachas al frente, con taco y suela de goma antideslizante.",
    "categoria": "botas",
    "precio": 1500,
    "descuento": 0,
    "stock": 12,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "23": {
    "id": 23,
    "nombre": "Bota Hush Puppies Chase",
    "img": "../grupo6/images/Bota Hush Puppies Chase.jpg",
    "descripcion": "Bota Hush Puppies de Eco PU con elásticos laterales para un mejor calce, y plantilla acolchada para mayor confort.",
    "categoria": "botas",
    "precio": 16000,
    "descuento": 0,
    "stock": 16,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "24": {
    "id": 24,
    "nombre": "ZAPATO MELVILLE AZUL",
    "img": "../grupo6/images/ZAPATO MELVILLE AZUL.jpg",
    "descripcion": "Melville es perfecto para el día a día, tanto para usar en la universidad como para lucirlos en el trabajo. Su diseño innovador incorpora costuras laterales y esbozos en cuero patinado. Su base de goma tiene propiedades antideslizantes que proporcionan seguridad y estabilidad.",
    "categoria": "zapatos",
    "precio": 36000,
    "descuento": 0,
    "stock": 7,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "25": {
    "id": 25,
    "nombre": "ZAPATO RECIFE REPTIL",
    "img": "../grupo6/images/ZAPATO RECIFE REPTIL.jpg",
    "descripcion": "Zapatos casuales fabricadas en cuero de primera calidad. Es un diseño limpio y coqueto con base de suela. Crearás tendencia esta temporada.",
    "categoria": "zapatos",
    "precio": 26000,
    "descuento": 0,
    "stock": 1,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "26": {
    "id": 26,
    "nombre": "ZAPATO MIKEL AZUL",
    "img": "../grupo6/images/ZAPATO MIKEL AZUL.jpg",
    "descripcion": "Añadile el toque sport a tus looks con el zapato Mikel. Su base de goma tiene propiedades amortiguadoras y antideslizantes para que solo te preocupes de disfrutar de los buenos momentos. ",
    "categoria": "zapatos",
    "precio": 32000,
    "descuento": 5,
    "stock": 7,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "27": {
    "id": 27,
    "nombre": "ZAPATO ILSE MARRON",
    "img": "../grupo6/images/ZAPATO ILSE MARRON.jpg",
    "descripcion": "Fabricado en cuero de primera calidad, el abotinado Ilse estiliza y le suma altura y elegancia a cualquier look.  ¡De taco ideal, súper cómodo y para cualquier ocasión!",
    "categoria": "zapatos",
    "precio": 27000,
    "descuento": 0,
    "stock": 7,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "28": {
    "id": 28,
    "nombre": "ZAPATO VITORIA NEGRO",
    "img": "../grupo6/images/ZAPATO VITORIA NEGRO.jpg",
    "descripcion": "Zapatos de vestir para hombre fabricados en cuero suela de primera calidad. Este modelo moderno de la nueva colección Briganti, incorpora forro de cuero y base de suela resistente para garantizar máximo confort y seguridad a cada paso.",
    "categoria": "zapatos",
    "precio": 26000,
    "descuento": 0,
    "stock": 2,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "29": {
    "id": 29,
    "nombre": "ZAPATO ASHA PICADO",
    "img": "../grupo6/images/ZAPATO ASHA PICADO.jpg",
    "descripcion": "Zapato abotinado fabricadas en charol de primera calidad. Es un diseño limpio y coqueto con base de suela. Crearás tendencia esta temporada.",
    "categoria": "zapatos",
    "precio": 29000,
    "descuento": 0,
    "stock": 5,
    "createdAt": "2012-09-10T08:00:00.000Z"
  },
  "30": {
    "id": 30,
    "nombre": "ZAPATO ASTURIAS NEGRO",
    "img": "../grupo6/images/ZAPATO ASTURIAS NEGRO.jpg",
    "descripcion": "Estos zapatos rebosan personalidad. Incluyen atractivos detalles de picado y suela de color claro. Su diseño incorpora inserciones elásticas laterales para un calce perfecto y cómodo. Usalos tanto con unos jeans como con un elegante traje a juego.",
    "categoria": "zapatos",
    "precio": 35000,
    "descuento": 20,
    "stock": 3,
    "createdAt": "2012-09-10T08:00:00.000Z"
  }
}


function getProducts (){
  let products = JSON.parse(localStorage.getItem("products"));

  if (!products) {
    //const response = fetch("../data/products.json");
    //products = response.json();
    products = productos;
    localStorage.setItem("products", JSON.stringify(products));
    localStorage.setItem("carrito", JSON.stringify({}));
  }

  if (localStorage.getItem("onSearch") === true)
    products = JSON.parse(localStorage.getItem("searchProducts"));

  console.log(products);
  return products;
};

const getOfferProducts = (products) => {
  const offerProducts = {};
  for (const key in products) {
    if (products[key].descuento) {
      offerProducts[products[key].id] = products[key];
    }
  }
  return offerProducts;
};

const getSearchProducts = (products) => {
  const searchText = document.getElementById("search").value;
  const category = document.getElementById("category").value;

  console.log(category);

  const searchProducts = {};
  if (category != "Seleccione una categoría") {
    for (const key in products) {
      if (
        products[key].categoria === category &&
        products[key].nombre.toLowerCase().includes(searchText.toLowerCase())
      ) {
        searchProducts[products[key].id] = products[key];
      }
    }
  } else {
    for (const key in products) {
      if (products[key].nombre.toLowerCase().includes(searchText.toLowerCase())) {
        searchProducts[products[key].id] = products[key];
      }
    }
  }
  return searchProducts;
};

const search = () => {
  const carrousel = document.getElementById("carouselExampleIndicators");
  const banner = document.getElementById("banner-ofertas");
  carrousel.style.display = "none";
  banner.style.display = "none";
  localStorage.setItem(
    "searchProducts",
    JSON.stringify(getSearchProducts(currentProducts))
  );
  generarCards(getSearchProducts(currentProducts));
};

const generarCards = (products) => {
  // Obtenemos el div que contendra las cards de productos
  let cards = document.getElementById("offers");
  while (cards.hasChildNodes()) cards.removeChild(cards.firstChild);

  //productos.forEach((producto) => {
  for (const key in products) {
    // Creamos la etiqueta Card
    let cardProductos = document.createElement("div");
    cardProductos.className = "col";

    let card = `
                <div class="card">
                  <img class="card-img-top" src="${
                    products[key].img
                  }" alt="Card image">
                  <div class="card-body">
                      <h4 class="card-title">${products[key].nombre}</h4>
                      <p class="card-text">
                        Categoría: ${products[key].categoria}
                      </p>
                      <p class="card-text">
                          ${products[key].descripcion}
                      </p>
                      <p class="card-text">
                          Precio: $ ${
                            products[key].descuento
                              ? products[key].precio *
                                (1 - products[key].descuento / 100)
                              : products[key].precio
                          },00
                      </p>
                      <a class="btn btn-primary" id="cart${
                        products[key].id
                      }">Agregar al carrito</a>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">Fecha de ingreso ${
                      products[key].createdAt
                    }</small>
                  </div>
                </div>
          `;

    cardProductos.innerHTML = card;
    cards.appendChild(cardProductos);

    let productCard = document.getElementById("cart" + products[key].id);

    productCard.addEventListener("click", (evento) => {
      const currentUser = JSON.parse(localStorage.getItem("currentUser"));
      if (currentUser) {
        evento.preventDefault();
        const carrito = JSON.parse(localStorage.getItem("carrito")) || {};
        carrito[products[key].id] = products[key];
        delete currentProducts[products[key].id];
        localStorage.setItem("carrito", JSON.stringify(carrito));
        localStorage.setItem("products", JSON.stringify(currentProducts));
        if (JSON.parse(localStorage.getItem("onSearch"))) {
          const searchProducts = JSON.parse(
            localStorage.getItem("searchProducts")
          );
          delete searchProducts[products[key].id];
          localStorage.setItem(
            "searchProducts",
            JSON.stringify(searchProducts)
          );
        }
        location.reload();
      } else {
        alert("Debe ingresar para poder comprar");
      }
    });
  }
};

buttonSearch.addEventListener("click", (e) => {
  e.preventDefault();
  localStorage.setItem("onSearch", true);
  search();
});

linkHome.addEventListener("click", (e) => {
  e.preventDefault();
  localStorage.setItem("onSearch", false);
  location.reload();
});

const currentProducts = getProducts();
const offerProducts = getOfferProducts(currentProducts);

handleLoginLogout();

JSON.parse(localStorage.getItem("onSearch"))
  ? generarCards(JSON.parse(localStorage.getItem("searchProducts")))
  : generarCards(offerProducts);
