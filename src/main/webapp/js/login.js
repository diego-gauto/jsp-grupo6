import userExist, { contraseñaCorrecta, handleLoginLogout } from "./utils.js";

//const formLogin = document.getElementById(`formulario`);
const linkHome = document.getElementById("go-home");
/*
formLogin.addEventListener("submit", (e) => {
  e.preventDefault();
  const email = document.getElementById(`inputEmail`).value;
  const pass = document.getElementById(`inputPassword`).value;

  const usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

  if (!userExist(email, usuarios)) {
    alert("Credenciales incorrectas");
  } else if (!contraseñaCorrecta(pass, email, usuarios)) {
    alert("Credenciales incorrectas");
  } else {
    localStorage.setItem(
      "currentUser",
      JSON.stringify({
        email: email,
        pass: pass,
      })
    );

    formLogin.reset();
    alert("Login Exitoso");
    window.location.href = "../index.jsp";
  }
});
*/

linkHome.addEventListener("click", (e) => {
  e.preventDefault();
  localStorage.setItem("onSearch", false);
  location.href = "./index.jsp";
});

handleLoginLogout();

const loginLogout = document.getElementById("loginlogout");
loginLogout.style.display = "none";

const status = document.getElementById("status").value
if(status==="failed"){
	swal("Ups","Invalid credentials","error")
} else if (status==="success"){
	localStorage.setItem("currentUser",JSON.stringify("name"));
	window.location.href = "./index.jsp";
}
