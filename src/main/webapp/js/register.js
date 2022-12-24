import userExist, { handleLoginLogout } from "./utils.js";

//const formulario = document.getElementById(`formulario`);
const linkHome = document.getElementById("go-home");

/*
formulario.addEventListener("submit", (e) => {
  e.preventDefault();
  const usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  if (!userExist(email, usuarios)) {
    const user = {
      email: email,
      pass: password,
    };
    usuarios.push(user);
    localStorage.setItem("usuarios", JSON.stringify(usuarios));
    localStorage.setItem("currentUser", JSON.stringify(user));
    alert("Su registro ha sido exitoso");
    window.location.href = "../index.jsp";
  } else {
    alert("Este usuario ya se encuentra registrado");
    formulario.reset();
  }
});*/

linkHome.addEventListener("click", (e) => {
  e.preventDefault();
  localStorage.setItem("onSearch", false);
  location.href = "./index.jsp";
});

handleLoginLogout();

const registrarse = document.getElementById("registrarse");
registrarse.style.display = "none";

const status = document.getElementById("status").value
if(status==="success"){
	localStorage.setItem("currentUser",JSON.stringify("name"));
	swal("Congrats","Usuario registrado exitosamente","success")
	window.location.href = "./index.jsp";
} else if (status === "failed"){
	swal("Ups","Something went wrong","error")
}
